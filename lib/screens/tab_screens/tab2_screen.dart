import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../models/training_plan.dart';
import '../../services/training_service.dart';
import '../../widgets/training_plan_card.dart';
import '../training_plan_detail_screen.dart';
import '../create_training_plan_screen.dart';

class Tab2Screen extends StatefulWidget {
  const Tab2Screen({super.key});

  @override
  State<Tab2Screen> createState() => _Tab2ScreenState();
}

class _Tab2ScreenState extends State<Tab2Screen> {
  List<TrainingPlan> _trainingPlans = [];
  TrainingStats? _stats;
  bool _isLoading = true;
  String _selectedFilter = 'All';
  final List<String> _filters = ['All', 'Active', 'Beginner', 'Intermediate', 'Advanced'];

  @override
  void initState() {
    super.initState();
    _loadTrainingData();
  }

  Future<void> _loadTrainingData() async {
    setState(() {
      _isLoading = true;
    });

    try {
      final plans = await TrainingService.getAllPlans();
      final stats = await TrainingService.getTrainingStats();
      
      setState(() {
        _trainingPlans = plans;
        _stats = stats;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
      _showErrorSnackBar('Failed to load training data');
    }
  }

  void _showErrorSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.red,
        duration: const Duration(seconds: 3),
      ),
    );
  }

  List<TrainingPlan> get _filteredPlans {
    switch (_selectedFilter) {
      case 'Active':
        return _trainingPlans.where((plan) => plan.isActive).toList();
      case 'Beginner':
        return _trainingPlans.where((plan) => plan.level == TrainingLevel.beginner).toList();
      case 'Intermediate':
        return _trainingPlans.where((plan) => plan.level == TrainingLevel.intermediate).toList();
      case 'Advanced':
        return _trainingPlans.where((plan) => plan.level == TrainingLevel.advanced).toList();
      default:
        return _trainingPlans;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/pazokar_all_bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // Header
              Container(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Training Plans',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF2C3E50),
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Build your cycling strength',
                            style: TextStyle(
                              fontSize: 16,
                              color: const Color(0xFF34495E).withOpacity(0.8),
                            ),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CreateTrainingPlanScreen(),
                          ),
                        ).then((_) => _loadTrainingData());
                      },
                      icon: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: AppTheme.primaryColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 24,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Stats Overview (if active plan exists)
              if (_stats?.activePlan != null)
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.95),
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.trending_up,
                            color: AppTheme.primaryColor,
                            size: 20,
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            'Current Progress',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF2C3E50),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  _stats!.activePlan!.name,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF2C3E50),
                                  ),
                                ),
                                const SizedBox(height: 4),
                                LinearProgressIndicator(
                                  value: _stats!.activePlan!.completionPercentage / 100,
                                  backgroundColor: Colors.grey[300],
                                  valueColor: AlwaysStoppedAnimation<Color>(AppTheme.primaryColor),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  '${_stats!.activePlan!.completionPercentage.toInt()}% Complete',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey[600],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Week ${_stats!.currentWeek}',
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF2C3E50),
                                ),
                              ),
                              Text(
                                '${_stats!.activePlan!.completedWorkouts}/${_stats!.activePlan!.totalWorkouts} workouts',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

              const SizedBox(height: 16),

              // Filter Chips
              Container(
                height: 50,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _filters.length,
                  itemBuilder: (context, index) {
                    final filter = _filters[index];
                    final isSelected = _selectedFilter == filter;
                    
                    return Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: FilterChip(
                        label: Text(filter),
                        selected: isSelected,
                        onSelected: (selected) {
                          setState(() {
                            _selectedFilter = filter;
                          });
                        },
                        backgroundColor: Colors.white.withOpacity(0.9),
                        selectedColor: AppTheme.primaryColor,
                        labelStyle: TextStyle(
                          color: isSelected ? Colors.white : const Color(0xFF2C3E50),
                          fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
                        ),
                        side: BorderSide(
                          color: isSelected ? AppTheme.primaryColor : const Color(0xFFBDC3C7),
                        ),
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(height: 16),

              // Training Plans List
              Expanded(
                child: _isLoading
                    ? Center(
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(AppTheme.primaryColor),
                        ),
                      )
                    : _filteredPlans.isEmpty
                        ? const Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.fitness_center,
                                  size: 64,
                                  color: Color(0xFF7F8C8D),
                                ),
                                SizedBox(height: 16),
                                Text(
                                  'No training plans found',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Color(0xFF2C3E50),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Create your first training plan',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF7F8C8D),
                                  ),
                                ),
                              ],
                            ),
                          )
                        : RefreshIndicator(
                            onRefresh: _loadTrainingData,
                            child: ListView.builder(
                              padding: const EdgeInsets.only(bottom: 100),
                              itemCount: _filteredPlans.length,
                              itemBuilder: (context, index) {
                                final plan = _filteredPlans[index];
                                return TrainingPlanCard(
                                  plan: plan,
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => TrainingPlanDetailScreen(plan: plan),
                                      ),
                                    ).then((_) => _loadTrainingData());
                                  },
                                );
                              },
                            ),
                          ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
