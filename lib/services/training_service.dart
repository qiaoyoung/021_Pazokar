import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/services.dart' show rootBundle;
import '../models/training_plan.dart';

class TrainingService {
  static const String _plansKey = 'training_plans';

  static const String _progressKey = 'training_progress';

  // 获取所有训练计划
  static Future<List<TrainingPlan>> getAllPlans() async {
    final prefs = await SharedPreferences.getInstance();
    final plansJson = prefs.getString(_plansKey) ?? '[]';
    final List<dynamic> plansList = json.decode(plansJson);
    
    List<TrainingPlan> plans = plansList.map((json) => TrainingPlan.fromJson(json)).toList();
    
    // 如果没有本地计划，加载默认计划
    if (plans.isEmpty) {
      plans = await _loadDefaultPlans();
      await _savePlans(plans);
    }
    
    return plans;
  }

  // 获取活跃的训练计划
  static Future<TrainingPlan?> getActivePlan() async {
    final plans = await getAllPlans();
    return plans.where((plan) => plan.isActive).firstOrNull;
  }

  // 保存训练计划
  static Future<void> savePlan(TrainingPlan plan) async {
    final plans = await getAllPlans();
    final existingIndex = plans.indexWhere((p) => p.id == plan.id);
    
    if (existingIndex >= 0) {
      plans[existingIndex] = plan;
    } else {
      plans.add(plan);
    }
    
    await _savePlans(plans);
  }

  // 删除训练计划
  static Future<void> deletePlan(String planId) async {
    final plans = await getAllPlans();
    plans.removeWhere((plan) => plan.id == planId);
    await _savePlans(plans);
  }

  // 激活训练计划
  static Future<void> activatePlan(String planId) async {
    final plans = await getAllPlans();
    
    // 先取消所有计划的激活状态
    for (int i = 0; i < plans.length; i++) {
      plans[i] = plans[i].copyWith(isActive: false);
    }
    
    // 激活指定计划
    final planIndex = plans.indexWhere((p) => p.id == planId);
    if (planIndex >= 0) {
      plans[planIndex] = plans[planIndex].copyWith(
        isActive: true,
        startDate: DateTime.now(),
      );
    }
    
    await _savePlans(plans);
  }

  // 停用训练计划
  static Future<void> deactivatePlan(String planId) async {
    final plans = await getAllPlans();
    final planIndex = plans.indexWhere((p) => p.id == planId);
    
    if (planIndex >= 0) {
      plans[planIndex] = plans[planIndex].copyWith(isActive: false);
      await _savePlans(plans);
    }
  }

  // 更新训练状态
  static Future<void> updateWorkoutStatus(
    String planId,
    int weekNumber,
    String workoutId,
    WorkoutStatus status, {
    Map<String, dynamic>? metrics,
    String? notes,
  }) async {
    final plans = await getAllPlans();
    final planIndex = plans.indexWhere((p) => p.id == planId);
    
    if (planIndex >= 0) {
      final plan = plans[planIndex];
      final updatedWeeks = plan.weeks.map((week) {
        if (week.weekNumber == weekNumber) {
          final updatedWorkouts = week.workouts.map((workout) {
            if (workout.id == workoutId) {
              return workout.copyWith(
                status: status,
                completedAt: status == WorkoutStatus.completed ? DateTime.now() : null,
                metrics: metrics ?? workout.metrics,
                notes: notes ?? workout.notes,
              );
            }
            return workout;
          }).toList();
          
          return TrainingWeek(
            weekNumber: week.weekNumber,
            title: week.title,
            description: week.description,
            workouts: updatedWorkouts,
            focus: week.focus,
          );
        }
        return week;
      }).toList();
      
      plans[planIndex] = plan.copyWith(weeks: updatedWeeks);
      await _savePlans(plans);
      
      // 保存进度历史
      await _saveProgressHistory(planId, workoutId, status, metrics, notes);
    }
  }

  // 获取训练统计
  static Future<TrainingStats> getTrainingStats() async {
    final plans = await getAllPlans();
    final activePlan = plans.where((p) => p.isActive).firstOrNull;
    
    int totalPlans = plans.length;
    int completedPlans = plans.where((p) => p.isCompleted).length;
    int totalWorkouts = plans.fold(0, (sum, plan) => sum + plan.totalWorkouts);
    int completedWorkouts = plans.fold(0, (sum, plan) => sum + plan.completedWorkouts);
    
    double currentWeekProgress = 0.0;
    int currentWeek = 0;
    
    if (activePlan != null) {
      currentWeek = activePlan.currentWeek;
      if (currentWeek > 0 && currentWeek <= activePlan.weeks.length) {
        final week = activePlan.weeks[currentWeek - 1];
        currentWeekProgress = week.completionPercentage;
      }
    }
    
    return TrainingStats(
      totalPlans: totalPlans,
      completedPlans: completedPlans,
      activePlans: plans.where((p) => p.isActive).length,
      totalWorkouts: totalWorkouts,
      completedWorkouts: completedWorkouts,
      currentWeekProgress: currentWeekProgress,
      currentWeek: currentWeek,
      activePlan: activePlan,
    );
  }

  // 获取进度历史
  static Future<List<WorkoutProgress>> getProgressHistory(String planId) async {
    final prefs = await SharedPreferences.getInstance();
    final progressJson = prefs.getString('${_progressKey}_$planId') ?? '[]';
    final List<dynamic> progressList = json.decode(progressJson);
    
    return progressList
        .map((json) => WorkoutProgress.fromJson(json))
        .toList()
        ..sort((a, b) => b.completedAt.compareTo(a.completedAt));
  }

  // 创建自定义训练计划
  static Future<TrainingPlan> createCustomPlan({
    required String name,
    required String description,
    required TrainingLevel level,
    required int durationWeeks,
    required int workoutsPerWeek,
    required String goal,
    List<String> tags = const [],
  }) async {
    final planId = DateTime.now().millisecondsSinceEpoch.toString();
    
    // 创建基础周训练结构
    final weeks = <TrainingWeek>[];
    for (int i = 1; i <= durationWeeks; i++) {
      final workouts = <Workout>[];
      
      for (int j = 1; j <= workoutsPerWeek; j++) {
        final workoutId = '${planId}_week${i}_workout$j';
        workouts.add(Workout(
          id: workoutId,
          name: 'Workout $j',
          description: 'Custom workout session',
          type: _getWorkoutTypeForDay(j),
          durationMinutes: _getDurationForLevel(level),
          intensity: _getIntensityForLevel(level),
          instructions: _getBasicInstructions(_getWorkoutTypeForDay(j)),
        ));
      }
      
      weeks.add(TrainingWeek(
        weekNumber: i,
        title: 'Week $i',
        description: 'Training week $i',
        workouts: workouts,
        focus: _getWeekFocus(i, durationWeeks),
      ));
    }
    
    final plan = TrainingPlan(
      id: planId,
      name: name,
      description: description,
      level: level,
      durationWeeks: durationWeeks,
      workoutsPerWeek: workoutsPerWeek,
      goal: goal,
      weeks: weeks,
      createdAt: DateTime.now(),
      tags: tags,
      estimatedHoursPerWeek: (workoutsPerWeek * _getDurationForLevel(level) / 60.0),
    );
    
    await savePlan(plan);
    return plan;
  }

  // 私有方法
  static Future<void> _savePlans(List<TrainingPlan> plans) async {
    final prefs = await SharedPreferences.getInstance();
    final plansJson = json.encode(plans.map((plan) => plan.toJson()).toList());
    await prefs.setString(_plansKey, plansJson);
  }

  static Future<void> _saveProgressHistory(
    String planId,
    String workoutId,
    WorkoutStatus status,
    Map<String, dynamic>? metrics,
    String? notes,
  ) async {
    if (status != WorkoutStatus.completed) return;
    
    final prefs = await SharedPreferences.getInstance();
    final progressKey = '${_progressKey}_$planId';
    final progressJson = prefs.getString(progressKey) ?? '[]';
    final List<dynamic> progressList = json.decode(progressJson);
    
    final progress = WorkoutProgress(
      workoutId: workoutId,
      completedAt: DateTime.now(),
      metrics: metrics ?? {},
      notes: notes ?? '',
    );
    
    progressList.add(progress.toJson());
    
    // 只保留最近100次记录
    if (progressList.length > 100) {
      progressList.removeRange(0, progressList.length - 100);
    }
    
    await prefs.setString(progressKey, json.encode(progressList));
  }

  static Future<List<TrainingPlan>> _loadDefaultPlans() async {
    try {
      final String response = await rootBundle.loadString('assets/data/default_training_plans.json');
      final data = json.decode(response);
      final List<dynamic> plansList = data['plans'];
      return plansList.map((json) => TrainingPlan.fromJson(json)).toList();
    } catch (e) {
      // 如果加载失败，返回一个示例计划
      return [_createSamplePlan()];
    }
  }

  static TrainingPlan _createSamplePlan() {
    return TrainingPlan(
      id: 'sample_beginner_plan',
      name: 'Beginner Cycling Plan',
      description: 'A 4-week training plan designed for cycling beginners',
      level: TrainingLevel.beginner,
      durationWeeks: 4,
      workoutsPerWeek: 3,
      goal: 'Build basic cycling endurance and technique',
      weeks: [
        TrainingWeek(
          weekNumber: 1,
          title: 'Foundation Week',
          description: 'Focus on basic cycling form and short rides',
          focus: 'Technique & Endurance',
          workouts: [
            Workout(
              id: 'w1_1',
              name: 'Easy Ride',
              description: 'Gentle 30-minute ride at comfortable pace',
              type: TrainingType.endurance,
              durationMinutes: 30,
              intensity: 'Easy',
              instructions: [
                'Warm up for 5 minutes at very easy pace',
                'Ride at comfortable conversational pace for 20 minutes',
                'Cool down for 5 minutes',
                'Focus on smooth pedaling technique'
              ],
            ),
            Workout(
              id: 'w1_2',
              name: 'Technique Focus',
              description: 'Skills and drills session',
              type: TrainingType.mixed,
              durationMinutes: 45,
              intensity: 'Easy',
              instructions: [
                'Practice mounting and dismounting',
                'Work on cornering technique',
                'Practice shifting gears smoothly',
                'End with easy 15-minute ride'
              ],
            ),
            Workout(
              id: 'w1_3',
              name: 'Recovery Ride',
              description: 'Very easy recovery session',
              type: TrainingType.recovery,
              durationMinutes: 25,
              intensity: 'Very Easy',
              instructions: [
                'Very gentle pace throughout',
                'Focus on relaxed breathing',
                'Enjoy the ride!'
              ],
            ),
          ],
        ),
        // Add more weeks...
      ],
      createdAt: DateTime.now(),
      imageUrl: 'assets/images/training/beginner_plan.jpg',
      tags: ['beginner', 'endurance', '4-weeks'],
      estimatedHoursPerWeek: 2.0,
    );
  }

  static TrainingType _getWorkoutTypeForDay(int dayNumber) {
    switch (dayNumber % 4) {
      case 1:
        return TrainingType.endurance;
      case 2:
        return TrainingType.speed;
      case 3:
        return TrainingType.strength;
      case 0:
        return TrainingType.recovery;
      default:
        return TrainingType.mixed;
    }
  }

  static int _getDurationForLevel(TrainingLevel level) {
    switch (level) {
      case TrainingLevel.beginner:
        return 45;
      case TrainingLevel.intermediate:
        return 60;
      case TrainingLevel.advanced:
        return 90;
    }
  }

  static String _getIntensityForLevel(TrainingLevel level) {
    switch (level) {
      case TrainingLevel.beginner:
        return 'Easy';
      case TrainingLevel.intermediate:
        return 'Moderate';
      case TrainingLevel.advanced:
        return 'Hard';
    }
  }

  static List<String> _getBasicInstructions(TrainingType type) {
    switch (type) {
      case TrainingType.endurance:
        return [
          'Warm up for 10 minutes',
          'Maintain steady comfortable pace',
          'Cool down for 10 minutes'
        ];
      case TrainingType.speed:
        return [
          'Warm up thoroughly',
          'Include 4-6 sprint intervals',
          'Rest between intervals',
          'Cool down properly'
        ];
      case TrainingType.strength:
        return [
          'Include hill climbs or resistance work',
          'Focus on power output',
          'Maintain good form'
        ];
      case TrainingType.recovery:
        return [
          'Very easy pace throughout',
          'Focus on active recovery',
          'Listen to your body'
        ];
      case TrainingType.mixed:
        return [
          'Combine different training elements',
          'Vary intensity throughout session',
          'Focus on technique'
        ];
    }
  }

  static String _getWeekFocus(int weekNumber, int totalWeeks) {
    final double progress = weekNumber / totalWeeks;
    
    if (progress <= 0.25) {
      return 'Foundation & Technique';
    } else if (progress <= 0.5) {
      return 'Building Endurance';
    } else if (progress <= 0.75) {
      return 'Strength & Power';
    } else {
      return 'Peak & Recovery';
    }
  }
}

// 训练统计数据模型
class TrainingStats {
  final int totalPlans;
  final int completedPlans;
  final int activePlans;
  final int totalWorkouts;
  final int completedWorkouts;
  final double currentWeekProgress;
  final int currentWeek;
  final TrainingPlan? activePlan;

  TrainingStats({
    required this.totalPlans,
    required this.completedPlans,
    required this.activePlans,
    required this.totalWorkouts,
    required this.completedWorkouts,
    required this.currentWeekProgress,
    required this.currentWeek,
    this.activePlan,
  });

  double get overallProgress {
    if (totalWorkouts == 0) return 0.0;
    return (completedWorkouts / totalWorkouts) * 100;
  }

  int get remainingWorkouts => totalWorkouts - completedWorkouts;
}

// 训练进度数据模型
class WorkoutProgress {
  final String workoutId;
  final DateTime completedAt;
  final Map<String, dynamic> metrics;
  final String notes;

  WorkoutProgress({
    required this.workoutId,
    required this.completedAt,
    required this.metrics,
    required this.notes,
  });

  factory WorkoutProgress.fromJson(Map<String, dynamic> json) {
    return WorkoutProgress(
      workoutId: json['workoutId'],
      completedAt: DateTime.parse(json['completedAt']),
      metrics: Map<String, dynamic>.from(json['metrics'] ?? {}),
      notes: json['notes'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'workoutId': workoutId,
      'completedAt': completedAt.toIso8601String(),
      'metrics': metrics,
      'notes': notes,
    };
  }
}
