import 'package:flutter/material.dart';
import '../models/training_plan.dart';
import '../theme/app_theme.dart';

class WorkoutCard extends StatelessWidget {
  final Workout workout;
  final Function(WorkoutStatus) onStatusChanged;
  final bool isEnabled;

  const WorkoutCard({
    super.key,
    required this.workout,
    required this.onStatusChanged,
    this.isEnabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Row(
              children: [
                // Type Icon
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: workout.typeColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    workout.typeIcon,
                    color: workout.typeColor,
                    size: 20,
                  ),
                ),
                const SizedBox(width: 12),
                
                // Workout Info
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        workout.name,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF2C3E50),
                        ),
                      ),
                      const SizedBox(height: 2),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                            decoration: BoxDecoration(
                              color: workout.typeColor.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Text(
                              workout.typeDisplayName,
                              style: TextStyle(
                                color: workout.typeColor,
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            workout.formattedDuration,
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            workout.intensity,
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                
                // Status Badge
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: workout.statusColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: workout.statusColor.withOpacity(0.3),
                    ),
                  ),
                  child: Text(
                    workout.statusDisplayName,
                    style: TextStyle(
                      color: workout.statusColor,
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            
            const SizedBox(height: 12),
            
            // Description
            if (workout.description.isNotEmpty)
              Text(
                workout.description,
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 14,
                  height: 1.4,
                ),
              ),
            
            // Instructions (if any)
            if (workout.instructions.isNotEmpty) ...[
              const SizedBox(height: 12),
              ExpansionTile(
                tilePadding: EdgeInsets.zero,
                childrenPadding: const EdgeInsets.only(top: 8),
                title: const Text(
                  'Instructions',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF2C3E50),
                  ),
                ),
                children: [
                  ...workout.instructions.asMap().entries.map((entry) {
                    final index = entry.key + 1;
                    final instruction = entry.value;
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 6),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              color: AppTheme.primaryColor.withOpacity(0.1),
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Text(
                                '$index',
                                style: TextStyle(
                                  color: AppTheme.primaryColor,
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              instruction,
                              style: TextStyle(
                                color: Colors.grey[700],
                                fontSize: 13,
                                height: 1.3,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                ],
              ),
            ],
            
            const SizedBox(height: 12),
            
            // Action Buttons
            if (isEnabled) ...[
              Row(
                children: [
                  if (workout.status == WorkoutStatus.pending) ...[
                    Expanded(
                      child: OutlinedButton.icon(
                        onPressed: () => onStatusChanged(WorkoutStatus.inProgress),
                        icon: const Icon(Icons.play_arrow, size: 18),
                        label: const Text('Start'),
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.blue,
                          side: const BorderSide(color: Colors.blue),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: OutlinedButton.icon(
                        onPressed: () => onStatusChanged(WorkoutStatus.skipped),
                        icon: const Icon(Icons.skip_next, size: 18),
                        label: const Text('Skip'),
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.orange,
                          side: const BorderSide(color: Colors.orange),
                        ),
                      ),
                    ),
                  ] else if (workout.status == WorkoutStatus.inProgress) ...[
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () => onStatusChanged(WorkoutStatus.completed),
                        icon: const Icon(Icons.check, size: 18),
                        label: const Text('Complete'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppTheme.primaryColor,
                          foregroundColor: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: OutlinedButton.icon(
                        onPressed: () => onStatusChanged(WorkoutStatus.pending),
                        icon: const Icon(Icons.pause, size: 18),
                        label: const Text('Pause'),
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.orange,
                          side: const BorderSide(color: Colors.orange),
                        ),
                      ),
                    ),
                  ] else if (workout.status == WorkoutStatus.completed) ...[
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          color: Colors.green.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.green.withOpacity(0.3)),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.check_circle, color: Colors.green, size: 18),
                            SizedBox(width: 6),
                            Text(
                              'Completed',
                              style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    OutlinedButton.icon(
                      onPressed: () => onStatusChanged(WorkoutStatus.pending),
                      icon: const Icon(Icons.refresh, size: 18),
                      label: const Text('Reset'),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.grey[600],
                        side: BorderSide(color: Colors.grey[400]!),
                      ),
                    ),
                  ] else if (workout.status == WorkoutStatus.skipped) ...[
                    Expanded(
                      child: OutlinedButton.icon(
                        onPressed: () => onStatusChanged(WorkoutStatus.pending),
                        icon: const Icon(Icons.refresh, size: 18),
                        label: const Text('Reset'),
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.grey[600],
                          side: BorderSide(color: Colors.grey[400]!),
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            ] else ...[
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  'Locked - Complete previous weeks first',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 14,
                  ),
                ),
              ),
            ],
            
            // Completion time (if completed)
            if (workout.completedAt != null) ...[
              const SizedBox(height: 8),
              Row(
                children: [
                  Icon(
                    Icons.access_time,
                    size: 14,
                    color: Colors.grey[600],
                  ),
                  const SizedBox(width: 4),
                  Text(
                    'Completed on ${workout.completedAt!.day}/${workout.completedAt!.month}/${workout.completedAt!.year}',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }
}
