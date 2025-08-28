import 'package:flutter/material.dart';
import '../models/training_plan.dart';
import '../services/training_service.dart';
import '../theme/app_theme.dart';

class CreateTrainingPlanScreen extends StatefulWidget {
  const CreateTrainingPlanScreen({super.key});

  @override
  State<CreateTrainingPlanScreen> createState() => _CreateTrainingPlanScreenState();
}

class _CreateTrainingPlanScreenState extends State<CreateTrainingPlanScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _goalController = TextEditingController();
  
  TrainingLevel _selectedLevel = TrainingLevel.beginner;
  int _durationWeeks = 4;
  int _workoutsPerWeek = 3;
  List<String> _selectedTags = [];
  bool _isLoading = false;

  final List<String> _availableTags = [
    'endurance',
    'strength',
    'speed',
    'beginner-friendly',
    'weight-loss',
    'competition-prep',
    'recovery',
    'flexibility',
    'cardio',
    'mountain-biking',
    'road-cycling',
    'indoor-training',
  ];

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    _goalController.dispose();
    super.dispose();
  }

  Future<void> _createPlan() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() {
      _isLoading = true;
    });

    try {
      await TrainingService.createCustomPlan(
        name: _nameController.text.trim(),
        description: _descriptionController.text.trim(),
        level: _selectedLevel,
        durationWeeks: _durationWeeks,
        workoutsPerWeek: _workoutsPerWeek,
        goal: _goalController.text.trim(),
        tags: _selectedTags,
      );

      _showSnackBar('Training plan created successfully!', AppTheme.primaryColor);
      Navigator.pop(context);
    } catch (e) {
      _showSnackBar('Failed to create training plan', Colors.red);
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  void _showSnackBar(String message, Color color) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: color,
        duration: const Duration(seconds: 3),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Training Plan'),
        backgroundColor: AppTheme.primaryColor,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            // Plan Name
            TextFormField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: 'Plan Name',
                hintText: 'e.g., Summer Cycling Challenge',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.title),
              ),
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return 'Please enter a plan name';
                }
                return null;
              },
            ),

            const SizedBox(height: 20),

            // Description
            TextFormField(
              controller: _descriptionController,
              decoration: const InputDecoration(
                labelText: 'Description',
                hintText: 'Describe your training plan...',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.description),
              ),
              maxLines: 3,
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return 'Please enter a description';
                }
                return null;
              },
            ),

            const SizedBox(height: 20),

            // Goal
            TextFormField(
              controller: _goalController,
              decoration: const InputDecoration(
                labelText: 'Goal',
                hintText: 'What do you want to achieve?',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.flag),
              ),
              maxLines: 2,
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return 'Please enter your goal';
                }
                return null;
              },
            ),

            const SizedBox(height: 30),

            // Training Level
            const Text(
              'Training Level',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xFF2C3E50),
              ),
            ),
            const SizedBox(height: 12),
            Row(
              children: TrainingLevel.values.map((level) {
                final isSelected = _selectedLevel == level;
                Color levelColor;
                String levelName;
                
                switch (level) {
                  case TrainingLevel.beginner:
                    levelColor = const Color(0xFF27AE60);
                    levelName = 'Beginner';
                    break;
                  case TrainingLevel.intermediate:
                    levelColor = const Color(0xFFF39C12);
                    levelName = 'Intermediate';
                    break;
                  case TrainingLevel.advanced:
                    levelColor = const Color(0xFFE74C3C);
                    levelName = 'Advanced';
                    break;
                }

                return Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedLevel = level;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        decoration: BoxDecoration(
                          color: isSelected ? levelColor.withOpacity(0.1) : Colors.grey[100],
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: isSelected ? levelColor : Colors.grey[300]!,
                            width: 2,
                          ),
                        ),
                        child: Column(
                          children: [
                            Icon(
                              Icons.fitness_center,
                              color: isSelected ? levelColor : Colors.grey[600],
                              size: 24,
                            ),
                            const SizedBox(height: 8),
                            Text(
                              levelName,
                              style: TextStyle(
                                color: isSelected ? levelColor : Colors.grey[700],
                                fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),

            const SizedBox(height: 30),

            // Duration
            const Text(
              'Duration',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xFF2C3E50),
              ),
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[50],
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey[300]!),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Icon(Icons.calendar_today, color: Color(0xFF7F8C8D)),
                      const SizedBox(width: 8),
                      Text(
                        '$_durationWeeks weeks',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF2C3E50),
                        ),
                      ),
                      const Spacer(),
                      Text(
                        '${_durationWeeks * _workoutsPerWeek} total workouts',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Slider(
                    value: _durationWeeks.toDouble(),
                    min: 2,
                    max: 12,
                    divisions: 10,
                    activeColor: AppTheme.primaryColor,
                    onChanged: (value) {
                      setState(() {
                        _durationWeeks = value.round();
                      });
                    },
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Workouts per week
            const Text(
              'Workouts per Week',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xFF2C3E50),
              ),
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[50],
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey[300]!),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Icon(Icons.repeat, color: Color(0xFF7F8C8D)),
                      const SizedBox(width: 8),
                      Text(
                        '$_workoutsPerWeek times per week',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF2C3E50),
                        ),
                      ),
                      const Spacer(),
                      Text(
                        '~${(_workoutsPerWeek * _getDurationForLevel(_selectedLevel) / 60.0).toStringAsFixed(1)}h/week',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Slider(
                    value: _workoutsPerWeek.toDouble(),
                    min: 2,
                    max: 7,
                    divisions: 5,
                    activeColor: AppTheme.primaryColor,
                    onChanged: (value) {
                      setState(() {
                        _workoutsPerWeek = value.round();
                      });
                    },
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            // Tags
            const Text(
              'Tags (Optional)',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xFF2C3E50),
              ),
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: _availableTags.map((tag) {
                final isSelected = _selectedTags.contains(tag);
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      if (isSelected) {
                        _selectedTags.remove(tag);
                      } else {
                        _selectedTags.add(tag);
                      }
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: BoxDecoration(
                      color: isSelected ? AppTheme.primaryColor.withOpacity(0.1) : Colors.grey[200],
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: isSelected ? AppTheme.primaryColor : Colors.grey[400]!,
                      ),
                    ),
                    child: Text(
                      tag,
                      style: TextStyle(
                        color: isSelected ? AppTheme.primaryColor : Colors.grey[700],
                        fontSize: 12,
                        fontWeight: isSelected ? FontWeight.w500 : FontWeight.normal,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),

            const SizedBox(height: 40),

            // Create Button
            SizedBox(
              width: double.infinity,
              height: 56,
              child: ElevatedButton(
                onPressed: _isLoading ? null : _createPlan,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppTheme.primaryColor,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 0,
                ),
                child: _isLoading
                    ? const SizedBox(
                        width: 24,
                        height: 24,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                        ),
                      )
                    : const Text(
                        'Create Training Plan',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  int _getDurationForLevel(TrainingLevel level) {
    switch (level) {
      case TrainingLevel.beginner:
        return 45;
      case TrainingLevel.intermediate:
        return 60;
      case TrainingLevel.advanced:
        return 90;
    }
  }
}
