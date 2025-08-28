import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../widgets/ride_card.dart';
import '../widgets/stats_card.dart';
import '../models/ride.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Mock data for demonstration
  final List<Ride> _recentRides = [
    Ride(
      id: '1',
      userId: 'user1',
      title: 'Morning Ride',
      description: 'Beautiful morning ride through the city',
      startTime: DateTime.now().subtract(const Duration(days: 1)),
      distance: 25.5,
      duration: 5400, // 1.5 hours
      averageSpeed: 17.0,
      maxSpeed: 32.5,
      elevationGain: 150.0,
      elevationLoss: 150.0,
      rideType: RideType.road,
      route: const [],
      createdAt: DateTime.now().subtract(const Duration(days: 1)),
      updatedAt: DateTime.now().subtract(const Duration(days: 1)),
    ),
    Ride(
      id: '2',
      userId: 'user1',
      title: 'Weekend Adventure',
      description: 'Long ride to the mountains',
      startTime: DateTime.now().subtract(const Duration(days: 3)),
      distance: 45.2,
      duration: 7200, // 2 hours
      averageSpeed: 22.6,
      maxSpeed: 45.0,
      elevationGain: 350.0,
      elevationLoss: 350.0,
      rideType: RideType.mountain,
      route: const [],
      createdAt: DateTime.now().subtract(const Duration(days: 3)),
      updatedAt: DateTime.now().subtract(const Duration(days: 3)),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            // App Bar
            SliverAppBar(
              expandedHeight: 120,
              floating: false,
              pinned: true,
              backgroundColor: AppTheme.primaryColor,
              flexibleSpace: FlexibleSpaceBar(
                title: const Text(
                  'Pazokar',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                background: Container(
                  decoration: const BoxDecoration(
                    gradient: AppTheme.primaryGradient,
                  ),
                ),
              ),
              actions: [
                IconButton(
                  icon: const Icon(Icons.notifications_outlined, color: Colors.white),
                  onPressed: () {
                    // TODO: Navigate to notifications
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.settings_outlined, color: Colors.white),
                  onPressed: () {
                    // TODO: Navigate to settings
                  },
                ),
              ],
            ),
            
            // Content
            SliverPadding(
              padding: const EdgeInsets.all(16.0),
              sliver: SliverList(
                delegate: SliverChildListDelegate([
                  // Welcome Section
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      gradient: AppTheme.backgroundGradient,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome back!',
                          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                            color: AppTheme.textPrimaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Ready for your next adventure?',
                          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: AppTheme.textSecondaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  const SizedBox(height: 24),
                  
                  // Stats Section
                  Text(
                    'This Week',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: AppTheme.textPrimaryColor,
                    ),
                  ),
                  const SizedBox(height: 16),
                  
                  // Stats Cards
                  Row(
                    children: [
                      Expanded(
                        child: StatsCard(
                          title: 'Distance',
                          value: '127.5',
                          unit: 'km',
                          icon: Icons.straighten,
                          color: AppTheme.primaryColor,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: StatsCard(
                          title: 'Time',
                          value: '8.5',
                          unit: 'hours',
                          icon: Icons.timer,
                          color: AppTheme.infoColor,
                        ),
                      ),
                    ],
                  ),
                  
                  const SizedBox(height: 12),
                  
                  Row(
                    children: [
                      Expanded(
                        child: StatsCard(
                          title: 'Rides',
                          value: '5',
                          unit: 'rides',
                          icon: Icons.directions_bike,
                          color: AppTheme.successColor,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: StatsCard(
                          title: 'Avg Speed',
                          value: '18.2',
                          unit: 'km/h',
                          icon: Icons.speed,
                          color: AppTheme.warningColor,
                        ),
                      ),
                    ],
                  ),
                  
                  const SizedBox(height: 32),
                  
                  // Recent Rides Section
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Recent Rides',
                        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppTheme.textPrimaryColor,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          // TODO: Navigate to all rides
                        },
                        child: Text(
                          'View All',
                          style: TextStyle(
                            color: AppTheme.primaryColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  
                  const SizedBox(height: 16),
                  
                  // Recent Rides List
                  ..._recentRides.map((ride) => Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: RideCard(ride: ride),
                  )).toList(),
                  
                  const SizedBox(height: 100), // Bottom padding for FAB
                ]),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // TODO: Navigate to record ride screen
        },
        backgroundColor: AppTheme.primaryColor,
        foregroundColor: Colors.white,
        icon: const Icon(Icons.add),
        label: const Text('Start Ride'),
      ),
    );
  }
}
