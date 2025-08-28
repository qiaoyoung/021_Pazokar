import 'package:flutter/material.dart';

enum TrainingLevel { beginner, intermediate, advanced }
enum TrainingType { endurance, speed, strength, recovery, mixed }
enum WorkoutStatus { pending, inProgress, completed, skipped }

class TrainingPlan {
  final String id;
  final String name;
  final String description;
  final TrainingLevel level;
  final int durationWeeks;
  final int workoutsPerWeek;
  final String goal;
  final List<TrainingWeek> weeks;
  final DateTime createdAt;
  final DateTime? startDate;
  final bool isActive;
  final String imageUrl;
  final List<String> tags;
  final double estimatedHoursPerWeek;

  TrainingPlan({
    required this.id,
    required this.name,
    required this.description,
    required this.level,
    required this.durationWeeks,
    required this.workoutsPerWeek,
    required this.goal,
    required this.weeks,
    required this.createdAt,
    this.startDate,
    this.isActive = false,
    this.imageUrl = '',
    this.tags = const [],
    this.estimatedHoursPerWeek = 0.0,
  });

  factory TrainingPlan.fromJson(Map<String, dynamic> json) {
    return TrainingPlan(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      level: TrainingLevel.values.firstWhere(
        (e) => e.toString().split('.').last == json['level'],
        orElse: () => TrainingLevel.beginner,
      ),
      durationWeeks: json['durationWeeks'],
      workoutsPerWeek: json['workoutsPerWeek'],
      goal: json['goal'],
      weeks: (json['weeks'] as List)
          .map((weekJson) => TrainingWeek.fromJson(weekJson))
          .toList(),
      createdAt: DateTime.parse(json['createdAt']),
      startDate: json['startDate'] != null ? DateTime.parse(json['startDate']) : null,
      isActive: json['isActive'] ?? false,
      imageUrl: json['imageUrl'] ?? '',
      tags: List<String>.from(json['tags'] ?? []),
      estimatedHoursPerWeek: (json['estimatedHoursPerWeek'] ?? 0.0).toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'level': level.toString().split('.').last,
      'durationWeeks': durationWeeks,
      'workoutsPerWeek': workoutsPerWeek,
      'goal': goal,
      'weeks': weeks.map((week) => week.toJson()).toList(),
      'createdAt': createdAt.toIso8601String(),
      'startDate': startDate?.toIso8601String(),
      'isActive': isActive,
      'imageUrl': imageUrl,
      'tags': tags,
      'estimatedHoursPerWeek': estimatedHoursPerWeek,
    };
  }

  TrainingPlan copyWith({
    String? id,
    String? name,
    String? description,
    TrainingLevel? level,
    int? durationWeeks,
    int? workoutsPerWeek,
    String? goal,
    List<TrainingWeek>? weeks,
    DateTime? createdAt,
    DateTime? startDate,
    bool? isActive,
    String? imageUrl,
    List<String>? tags,
    double? estimatedHoursPerWeek,
  }) {
    return TrainingPlan(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      level: level ?? this.level,
      durationWeeks: durationWeeks ?? this.durationWeeks,
      workoutsPerWeek: workoutsPerWeek ?? this.workoutsPerWeek,
      goal: goal ?? this.goal,
      weeks: weeks ?? this.weeks,
      createdAt: createdAt ?? this.createdAt,
      startDate: startDate ?? this.startDate,
      isActive: isActive ?? this.isActive,
      imageUrl: imageUrl ?? this.imageUrl,
      tags: tags ?? this.tags,
      estimatedHoursPerWeek: estimatedHoursPerWeek ?? this.estimatedHoursPerWeek,
    );
  }

  // Getters
  String get levelDisplayName {
    switch (level) {
      case TrainingLevel.beginner:
        return 'Beginner';
      case TrainingLevel.intermediate:
        return 'Intermediate';
      case TrainingLevel.advanced:
        return 'Advanced';
    }
  }

  Color get levelColor {
    switch (level) {
      case TrainingLevel.beginner:
        return const Color(0xFF27AE60);
      case TrainingLevel.intermediate:
        return const Color(0xFFF39C12);
      case TrainingLevel.advanced:
        return const Color(0xFFE74C3C);
    }
  }

  double get completionPercentage {
    if (weeks.isEmpty) return 0.0;
    
    int totalWorkouts = weeks.fold(0, (sum, week) => sum + week.workouts.length);
    if (totalWorkouts == 0) return 0.0;
    
    int completedWorkouts = weeks.fold(0, (sum, week) => 
      sum + week.workouts.where((w) => w.status == WorkoutStatus.completed).length);
    
    return (completedWorkouts / totalWorkouts) * 100;
  }

  int get totalWorkouts => weeks.fold(0, (sum, week) => sum + week.workouts.length);
  
  int get completedWorkouts => weeks.fold(0, (sum, week) => 
    sum + week.workouts.where((w) => w.status == WorkoutStatus.completed).length);

  int get remainingWorkouts => totalWorkouts - completedWorkouts;

  bool get isCompleted => completionPercentage >= 100.0;

  DateTime? get estimatedEndDate {
    if (startDate == null) return null;
    return startDate!.add(Duration(days: durationWeeks * 7));
  }

  int get currentWeek {
    if (startDate == null || !isActive) return 0;
    final now = DateTime.now();
    final daysSinceStart = now.difference(startDate!).inDays;
    return (daysSinceStart / 7).floor() + 1;
  }
}

class TrainingWeek {
  final int weekNumber;
  final String title;
  final String description;
  final List<Workout> workouts;
  final String focus;

  TrainingWeek({
    required this.weekNumber,
    required this.title,
    required this.description,
    required this.workouts,
    this.focus = '',
  });

  factory TrainingWeek.fromJson(Map<String, dynamic> json) {
    return TrainingWeek(
      weekNumber: json['weekNumber'],
      title: json['title'],
      description: json['description'],
      workouts: (json['workouts'] as List)
          .map((workoutJson) => Workout.fromJson(workoutJson))
          .toList(),
      focus: json['focus'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'weekNumber': weekNumber,
      'title': title,
      'description': description,
      'workouts': workouts.map((workout) => workout.toJson()).toList(),
      'focus': focus,
    };
  }

  double get completionPercentage {
    if (workouts.isEmpty) return 0.0;
    int completed = workouts.where((w) => w.status == WorkoutStatus.completed).length;
    return (completed / workouts.length) * 100;
  }

  bool get isCompleted => completionPercentage >= 100.0;
}

class Workout {
  final String id;
  final String name;
  final String description;
  final TrainingType type;
  final int durationMinutes;
  final String intensity;
  final List<String> instructions;
  final WorkoutStatus status;
  final DateTime? completedAt;
  final Map<String, dynamic> metrics;
  final String notes;

  Workout({
    required this.id,
    required this.name,
    required this.description,
    required this.type,
    required this.durationMinutes,
    required this.intensity,
    required this.instructions,
    this.status = WorkoutStatus.pending,
    this.completedAt,
    this.metrics = const {},
    this.notes = '',
  });

  factory Workout.fromJson(Map<String, dynamic> json) {
    return Workout(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      type: TrainingType.values.firstWhere(
        (e) => e.toString().split('.').last == json['type'],
        orElse: () => TrainingType.mixed,
      ),
      durationMinutes: json['durationMinutes'],
      intensity: json['intensity'],
      instructions: List<String>.from(json['instructions'] ?? []),
      status: WorkoutStatus.values.firstWhere(
        (e) => e.toString().split('.').last == json['status'],
        orElse: () => WorkoutStatus.pending,
      ),
      completedAt: json['completedAt'] != null ? DateTime.parse(json['completedAt']) : null,
      metrics: Map<String, dynamic>.from(json['metrics'] ?? {}),
      notes: json['notes'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'type': type.toString().split('.').last,
      'durationMinutes': durationMinutes,
      'intensity': intensity,
      'instructions': instructions,
      'status': status.toString().split('.').last,
      'completedAt': completedAt?.toIso8601String(),
      'metrics': metrics,
      'notes': notes,
    };
  }

  Workout copyWith({
    String? id,
    String? name,
    String? description,
    TrainingType? type,
    int? durationMinutes,
    String? intensity,
    List<String>? instructions,
    WorkoutStatus? status,
    DateTime? completedAt,
    Map<String, dynamic>? metrics,
    String? notes,
  }) {
    return Workout(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      type: type ?? this.type,
      durationMinutes: durationMinutes ?? this.durationMinutes,
      intensity: intensity ?? this.intensity,
      instructions: instructions ?? this.instructions,
      status: status ?? this.status,
      completedAt: completedAt ?? this.completedAt,
      metrics: metrics ?? this.metrics,
      notes: notes ?? this.notes,
    );
  }

  // Getters
  String get typeDisplayName {
    switch (type) {
      case TrainingType.endurance:
        return 'Endurance';
      case TrainingType.speed:
        return 'Speed';
      case TrainingType.strength:
        return 'Strength';
      case TrainingType.recovery:
        return 'Recovery';
      case TrainingType.mixed:
        return 'Mixed';
    }
  }

  Color get typeColor {
    switch (type) {
      case TrainingType.endurance:
        return const Color(0xFF3498DB);
      case TrainingType.speed:
        return const Color(0xFFE74C3C);
      case TrainingType.strength:
        return const Color(0xFF9B59B6);
      case TrainingType.recovery:
        return const Color(0xFF27AE60);
      case TrainingType.mixed:
        return const Color(0xFF95A5A6);
    }
  }

  IconData get typeIcon {
    switch (type) {
      case TrainingType.endurance:
        return Icons.directions_bike;
      case TrainingType.speed:
        return Icons.speed;
      case TrainingType.strength:
        return Icons.fitness_center;
      case TrainingType.recovery:
        return Icons.spa;
      case TrainingType.mixed:
        return Icons.category;
    }
  }

  String get statusDisplayName {
    switch (status) {
      case WorkoutStatus.pending:
        return 'Pending';
      case WorkoutStatus.inProgress:
        return 'In Progress';
      case WorkoutStatus.completed:
        return 'Completed';
      case WorkoutStatus.skipped:
        return 'Skipped';
    }
  }

  Color get statusColor {
    switch (status) {
      case WorkoutStatus.pending:
        return const Color(0xFF95A5A6);
      case WorkoutStatus.inProgress:
        return const Color(0xFFF39C12);
      case WorkoutStatus.completed:
        return const Color(0xFF27AE60);
      case WorkoutStatus.skipped:
        return const Color(0xFFE74C3C);
    }
  }

  String get formattedDuration {
    if (durationMinutes < 60) {
      return '${durationMinutes}min';
    } else {
      final hours = durationMinutes ~/ 60;
      final minutes = durationMinutes % 60;
      return minutes > 0 ? '${hours}h ${minutes}min' : '${hours}h';
    }
  }
}
