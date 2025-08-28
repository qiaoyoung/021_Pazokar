import 'package:flutter/material.dart';
import '../models/training_plan.dart';
import '../services/training_service.dart';
import '../theme/app_theme.dart';
import '../widgets/workout_card.dart';

class TrainingPlanDetailScreen extends StatefulWidget {
  final TrainingPlan plan;

  const TrainingPlanDetailScreen({
    super.key,
    required this.plan,
  });

  @override
  State<TrainingPlanDetailScreen> createState() => _TrainingPlanDetailScreenState();
}

class _TrainingPlanDetailScreenState extends State<TrainingPlanDetailScreen> {
  late TrainingPlan _plan;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _plan = widget.plan;
  }

  Future<void> _togglePlanActivation() async {
    setState(() {
      _isLoading = true;
    });

    try {
      if (_plan.isActive) {
        await TrainingService.deactivatePlan(_plan.id);
        _showSnackBar('Training plan deactivated', Colors.orange);
      } else {
        await TrainingService.activatePlan(_plan.id);
        _showSnackBar('Training plan activated!', AppTheme.primaryColor);
      }
      
      // Refresh plan data
      final plans = await TrainingService.getAllPlans();
      final updatedPlan = plans.firstWhere((p) => p.id == _plan.id);
      
      setState(() {
        _plan = updatedPlan;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
      _showSnackBar('Operation failed', Colors.red);
    }
  }

  Future<void> _updateWorkoutStatus(int weekNumber, String workoutId, WorkoutStatus status) async {
    try {
      await TrainingService.updateWorkoutStatus(_plan.id, weekNumber, workoutId, status);
      
      // Refresh plan data
      final plans = await TrainingService.getAllPlans();
      final updatedPlan = plans.firstWhere((p) => p.id == _plan.id);
      
      setState(() {
        _plan = updatedPlan;
      });
      
      String message = '';
      Color color = AppTheme.primaryColor;
      
      switch (status) {
        case WorkoutStatus.completed:
          message = 'Workout completed!';
          color = AppTheme.primaryColor;
          break;
        case WorkoutStatus.skipped:
          message = 'Workout skipped';
          color = Colors.orange;
          break;
        case WorkoutStatus.inProgress:
          message = 'Workout started';
          color = Colors.blue;
          break;
        default:
          message = 'Status updated';
      }
      
      _showSnackBar(message, color);
    } catch (e) {
      _showSnackBar('Failed to update workout status', Colors.red);
    }
  }

  void _showSnackBar(String message, Color color) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: color,
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // App Bar
          SliverAppBar(
            expandedHeight: 200,
            pinned: true,
            backgroundColor: _plan.levelColor,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => Navigator.pop(context),
            ),
            actions: [
              PopupMenuButton<String>(
                icon: const Icon(Icons.more_vert, color: Colors.white),
                onSelected: (value) {
                  switch (value) {
                    case 'edit':
                      // TODO: Navigate to edit screen
                      break;
                    case 'delete':
                      _showDeleteConfirmation();
                      break;
                  }
                },
                itemBuilder: (context) => [
                  const PopupMenuItem(
                    value: 'edit',
                    child: Row(
                      children: [
                        Icon(Icons.edit),
                        SizedBox(width: 8),
                        Text('Edit Plan'),
                      ],
                    ),
                  ),
                  const PopupMenuItem(
                    value: 'delete',
                    child: Row(
                      children: [
                        Icon(Icons.delete, color: Colors.red),
                        SizedBox(width: 8),
                        Text('Delete Plan', style: TextStyle(color: Colors.red)),
                      ],
                    ),
                  ),
                ],
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      _plan.levelColor,
                      _plan.levelColor.withOpacity(0.7),
                    ],
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _plan.name,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Text(
                              _plan.levelDisplayName,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          if (_plan.isActive)
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Text(
                                'ACTIVE',
                                style: TextStyle(
                                  color: _plan.levelColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // Content
          SliverToBoxAdapter(
            child: Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Plan Overview
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _plan.description,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Color(0xFF34495E),
                            height: 1.5,
                          ),
                        ),
                        const SizedBox(height: 16),
                        
                        // Stats Grid
                        Row(
                          children: [
                            Expanded(
                              child: _buildStatCard(
                                'Duration',
                                '${_plan.durationWeeks} weeks',
                                Icons.calendar_today,
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: _buildStatCard(
                                'Frequency',
                                '${_plan.workoutsPerWeek}x/week',
                                Icons.repeat,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Row(
                          children: [
                            Expanded(
                              child: _buildStatCard(
                                'Time/Week',
                                '${_plan.estimatedHoursPerWeek.toStringAsFixed(1)}h',
                                Icons.schedule,
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: _buildStatCard(
                                'Progress',
                                '${_plan.completionPercentage.toInt()}%',
                                Icons.trending_up,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  const Divider(height: 1),

                  // Goal Section
                  if (_plan.goal.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Goal',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF2C3E50),
                            ),
                          ),
                          const SizedBox(height: 12),
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: AppTheme.primaryColor.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: AppTheme.primaryColor.withOpacity(0.3),
                              ),
                            ),
                            child: Text(
                              _plan.goal,
                              style: TextStyle(
                                fontSize: 16,
                                color: AppTheme.primaryColor.withOpacity(0.8),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                  if (_plan.goal.isNotEmpty)
                    const Divider(height: 1),

                  // Training Weeks
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Training Schedule',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF2C3E50),
                          ),
                        ),
                        const SizedBox(height: 16),
                        
                        // Weeks List
                        ListView.separated(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: _plan.weeks.length,
                          separatorBuilder: (context, index) => const SizedBox(height: 16),
                          itemBuilder: (context, index) {
                            final week = _plan.weeks[index];
                            final isCurrentWeek = _plan.isActive && _plan.currentWeek == week.weekNumber;
                            
                            return Container(
                              decoration: BoxDecoration(
                                color: isCurrentWeek 
                                    ? AppTheme.primaryColor.withOpacity(0.05)
                                    : Colors.grey[50],
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(
                                  color: isCurrentWeek 
                                      ? AppTheme.primaryColor.withOpacity(0.3)
                                      : Colors.grey[300]!,
                                ),
                              ),
                              child: ExpansionTile(
                                tilePadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                childrenPadding: const EdgeInsets.all(16),
                                leading: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: isCurrentWeek 
                                        ? AppTheme.primaryColor
                                        : week.isCompleted
                                            ? Colors.green
                                            : Colors.grey[400],
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                    child: week.isCompleted
                                        ? const Icon(Icons.check, color: Colors.white, size: 20)
                                        : Text(
                                            '${week.weekNumber}',
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                  ),
                                ),
                                title: Text(
                                  week.title,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: isCurrentWeek 
                                        ? AppTheme.primaryColor
                                        : const Color(0xFF2C3E50),
                                  ),
                                ),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    if (week.focus.isNotEmpty) ...[
                                      const SizedBox(height: 4),
                                      Text(
                                        'Focus: ${week.focus}',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey[600],
                                        ),
                                      ),
                                    ],
                                    const SizedBox(height: 8),
                                    LinearProgressIndicator(
                                      value: week.completionPercentage / 100,
                                      backgroundColor: Colors.grey[300],
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        isCurrentWeek ? AppTheme.primaryColor : Colors.green,
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      '${week.completionPercentage.toInt()}% complete',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey[600],
                                      ),
                                    ),
                                  ],
                                ),
                                children: [
                                  Text(
                                    week.description,
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      height: 1.4,
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  
                                  // Workouts
                                  ListView.separated(
                                    shrinkWrap: true,
                                    physics: const NeverScrollableScrollPhysics(),
                                    itemCount: week.workouts.length,
                                    separatorBuilder: (context, index) => const SizedBox(height: 8),
                                    itemBuilder: (context, workoutIndex) {
                                      final workout = week.workouts[workoutIndex];
                                      return WorkoutCard(
                                        workout: workout,
                                        onStatusChanged: (status) {
                                          _updateWorkoutStatus(week.weekNumber, workout.id, status);
                                        },
                                        isEnabled: _plan.isActive && week.weekNumber <= _plan.currentWeek,
                                      );
                                    },
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),

                  // Bottom spacing for FAB
                  const SizedBox(height: 100),
                ],
              ),
            ),
          ),
        ],
      ),
      
      // Activation Button
      floatingActionButton: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: FloatingActionButton.extended(
          onPressed: _isLoading ? null : _togglePlanActivation,
          backgroundColor: _plan.isActive ? Colors.orange : AppTheme.primaryColor,
          foregroundColor: Colors.white,
          icon: _isLoading
              ? const SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                  ),
                )
              : Icon(_plan.isActive ? Icons.pause : Icons.play_arrow),
          label: Text(
            _isLoading
                ? 'Processing...'
                : _plan.isActive
                    ? 'Deactivate Plan'
                    : 'Start Training',
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _buildStatCard(String label, String value, IconData icon) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: Column(
        children: [
          Icon(
            icon,
            color: AppTheme.primaryColor,
            size: 24,
          ),
          const SizedBox(height: 8),
          Text(
            value,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF2C3E50),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }

  void _showDeleteConfirmation() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete Training Plan'),
        content: const Text('Are you sure you want to delete this training plan? This action cannot be undone.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () async {
              Navigator.pop(context);
              await TrainingService.deletePlan(_plan.id);
              Navigator.pop(context);
              _showSnackBar('Training plan deleted', Colors.red);
            },
            child: const Text('Delete', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }
}
