import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> with TickerProviderStateMixin {
  int _selectedTabIndex = 0;
  
  final List<String> _tabs = [
    'Overview',
    'Achievements',
    'Settings',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: AppTheme.primaryColor,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.edit, color: Colors.white),
            onPressed: () {
              // TODO: Edit profile
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Profile Header
          Container(
            decoration: const BoxDecoration(
              gradient: AppTheme.primaryGradient,
            ),
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  // Profile Picture
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.white.withOpacity(0.2),
                    child: const CircleAvatar(
                      radius: 45,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.person,
                        size: 50,
                        color: AppTheme.primaryColor,
                      ),
                    ),
                  ),
                  
                  const SizedBox(height: 16),
                  
                  // User Info
                  const Text(
                    'John Doe',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  
                  const SizedBox(height: 4),
                  
                  const Text(
                    'Cycling Enthusiast',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                    ),
                  ),
                  
                  const SizedBox(height: 8),
                  
                  const Text(
                    'San Francisco, CA',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                  
                  const SizedBox(height: 20),
                  
                  // Stats Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildProfileStat('Total Rides', '127'),
                      _buildProfileStat('Total Distance', '2,847 km'),
                      _buildProfileStat('Total Time', '156h'),
                    ],
                  ),
                ],
              ),
            ),
          ),
          
          // Tab Bar
          Container(
            color: Colors.white,
            child: TabBar(
              controller: TabController(
                length: _tabs.length,
                vsync: this,
                initialIndex: _selectedTabIndex,
              ),
              onTap: (index) {
                setState(() {
                  _selectedTabIndex = index;
                });
              },
              labelColor: AppTheme.primaryColor,
              unselectedLabelColor: AppTheme.textSecondaryColor,
              indicatorColor: AppTheme.primaryColor,
              indicatorWeight: 3,
              labelStyle: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
              tabs: _tabs.map((tab) => Tab(text: tab)).toList(),
            ),
          ),
          
          // Tab Content
          Expanded(
            child: IndexedStack(
              index: _selectedTabIndex,
              children: [
                _buildOverviewTab(),
                _buildAchievementsTab(),
                _buildSettingsTab(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileStat(String label, String value) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          label,
          style: const TextStyle(
            color: Colors.white70,
            fontSize: 12,
          ),
        ),
      ],
    );
  }

  Widget _buildOverviewTab() {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        // Recent Activity
        Text(
          'Recent Activity',
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
            color: AppTheme.textPrimaryColor,
          ),
        ),
        const SizedBox(height: 16),
        
        _buildActivityCard(
          'Morning Ride',
          'Today, 7:30 AM',
          '25.3 km',
          '1h 25m',
          Icons.directions_bike,
          AppTheme.primaryColor,
        ),
        _buildActivityCard(
          'Weekend Adventure',
          'Yesterday, 9:15 AM',
          '45.2 km',
          '2h 30m',
          Icons.landscape,
          AppTheme.warningColor,
        ),
        _buildActivityCard(
          'City Loop',
          '3 days ago',
          '18.7 km',
          '1h 10m',
          Icons.location_city,
          AppTheme.successColor,
        ),
        
        const SizedBox(height: 24),
        
        // Weekly Stats
        Text(
          'This Week',
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
            color: AppTheme.textPrimaryColor,
          ),
        ),
        const SizedBox(height: 16),
        
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 10,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: _buildWeeklyStat(
                      'Distance',
                      '127.5 km',
                      Icons.straighten,
                      AppTheme.primaryColor,
                    ),
                  ),
                  Expanded(
                    child: _buildWeeklyStat(
                      'Time',
                      '8.5h',
                      Icons.timer,
                      AppTheme.infoColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: _buildWeeklyStat(
                      'Rides',
                      '5',
                      Icons.directions_bike,
                      AppTheme.successColor,
                    ),
                  ),
                  Expanded(
                    child: _buildWeeklyStat(
                      'Avg Speed',
                      '18.2 km/h',
                      Icons.speed,
                      AppTheme.warningColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        
        const SizedBox(height: 24),
        
        // Goals
        Text(
          'Goals',
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
            color: AppTheme.textPrimaryColor,
          ),
        ),
        const SizedBox(height: 16),
        
        _buildGoalCard(
          'Monthly Distance',
          '500 km',
          '342/500 km',
          0.68,
          AppTheme.primaryColor,
        ),
        _buildGoalCard(
          'Weekly Rides',
          '5 rides',
          '3/5 rides',
          0.6,
          AppTheme.successColor,
        ),
      ],
    );
  }

  Widget _buildAchievementsTab() {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Text(
          'Achievements',
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
            color: AppTheme.textPrimaryColor,
          ),
        ),
        const SizedBox(height: 16),
        
        _buildAchievementCard(
          'First Ride',
          'Complete your first ride',
          Icons.emoji_events,
          AppTheme.primaryColor,
          true,
        ),
        _buildAchievementCard(
          'Distance Master',
          'Ride 1000 km total',
          Icons.straighten,
          AppTheme.infoColor,
          true,
        ),
        _buildAchievementCard(
          'Speed Demon',
          'Achieve 30 km/h average speed',
          Icons.speed,
          AppTheme.warningColor,
          false,
        ),
        _buildAchievementCard(
          'Mountain Climber',
          'Climb 5000m total elevation',
          Icons.terrain,
          AppTheme.successColor,
          false,
        ),
        _buildAchievementCard(
          'Consistency King',
          'Ride 7 days in a row',
          Icons.calendar_today,
          AppTheme.secondaryColor,
          false,
        ),
        _buildAchievementCard(
          'Social Butterfly',
          'Join 5 group rides',
          Icons.people,
          AppTheme.primaryColor,
          false,
        ),
      ],
    );
  }

  Widget _buildSettingsTab() {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Text(
          'Settings',
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
            color: AppTheme.textPrimaryColor,
          ),
        ),
        const SizedBox(height: 16),
        
        _buildSettingsSection(
          'Account',
          [
            _buildSettingsItem(
              'Edit Profile',
              Icons.person,
              () {
                // TODO: Edit profile
              },
            ),
            _buildSettingsItem(
              'Privacy Settings',
              Icons.privacy_tip,
              () {
                // TODO: Privacy settings
              },
            ),
            _buildSettingsItem(
              'Notifications',
              Icons.notifications,
              () {
                // TODO: Notification settings
              },
            ),
          ],
        ),
        
        const SizedBox(height: 24),
        
        _buildSettingsSection(
          'App',
          [
            _buildSettingsItem(
              'Units',
              Icons.settings,
              () {
                // TODO: Unit settings
              },
            ),
            _buildSettingsItem(
              'Theme',
              Icons.palette,
              () {
                // TODO: Theme settings
              },
            ),
            _buildSettingsItem(
              'Language',
              Icons.language,
              () {
                // TODO: Language settings
              },
            ),
          ],
        ),
        
        const SizedBox(height: 24),
        
        _buildSettingsSection(
          'Support',
          [
            _buildSettingsItem(
              'Help & FAQ',
              Icons.help,
              () {
                // TODO: Help
              },
            ),
            _buildSettingsItem(
              'Contact Support',
              Icons.support_agent,
              () {
                // TODO: Contact support
              },
            ),
            _buildSettingsItem(
              'About',
              Icons.info,
              () {
                // TODO: About
              },
            ),
          ],
        ),
        
        const SizedBox(height: 24),
        
        _buildSettingsSection(
          'Account',
          [
            _buildSettingsItem(
              'Logout',
              Icons.logout,
              () {
                // TODO: Logout
              },
              isDestructive: true,
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildActivityCard(
    String title,
    String time,
    String distance,
    String duration,
    IconData icon,
    Color color,
  ) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        leading: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(
            icon,
            color: color,
            size: 24,
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            color: AppTheme.textPrimaryColor,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              time,
              style: const TextStyle(
                color: AppTheme.textSecondaryColor,
                fontSize: 12,
              ),
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                Icon(
                  Icons.straighten,
                  size: 14,
                  color: AppTheme.textSecondaryColor,
                ),
                const SizedBox(width: 4),
                Text(
                  distance,
                  style: const TextStyle(
                    color: AppTheme.textSecondaryColor,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(width: 16),
                Icon(
                  Icons.timer,
                  size: 14,
                  color: AppTheme.textSecondaryColor,
                ),
                const SizedBox(width: 4),
                Text(
                  duration,
                  style: const TextStyle(
                    color: AppTheme.textSecondaryColor,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
        trailing: const Icon(
          Icons.chevron_right,
          color: AppTheme.textSecondaryColor,
        ),
        onTap: () {
          // TODO: Navigate to ride details
        },
      ),
    );
  }

  Widget _buildWeeklyStat(
    String label,
    String value,
    IconData icon,
    Color color,
  ) {
    return Column(
      children: [
        Icon(
          icon,
          color: color,
          size: 24,
        ),
        const SizedBox(height: 8),
        Text(
          value,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: AppTheme.textPrimaryColor,
          ),
        ),
        Text(
          label,
          style: const TextStyle(
            color: AppTheme.textSecondaryColor,
            fontSize: 12,
          ),
        ),
      ],
    );
  }

  Widget _buildGoalCard(
    String title,
    String target,
    String progress,
    double percentage,
    Color color,
  ) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    color: AppTheme.textPrimaryColor,
                  ),
                ),
                Text(
                  target,
                  style: const TextStyle(
                    color: AppTheme.textSecondaryColor,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              progress,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: AppTheme.textPrimaryColor,
              ),
            ),
            const SizedBox(height: 8),
            LinearProgressIndicator(
              value: percentage,
              backgroundColor: color.withOpacity(0.2),
              valueColor: AlwaysStoppedAnimation<Color>(color),
              minHeight: 6,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAchievementCard(
    String title,
    String description,
    IconData icon,
    Color color,
    bool isUnlocked,
  ) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        leading: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: isUnlocked ? color.withOpacity(0.1) : Colors.grey.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(
            icon,
            color: isUnlocked ? color : Colors.grey,
            size: 24,
          ),
        ),
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: isUnlocked ? AppTheme.textPrimaryColor : Colors.grey,
          ),
        ),
        subtitle: Text(
          description,
          style: TextStyle(
            color: isUnlocked ? AppTheme.textSecondaryColor : Colors.grey,
            fontSize: 14,
          ),
        ),
        trailing: isUnlocked
            ? Icon(
                Icons.check_circle,
                color: color,
                size: 24,
              )
            : Icon(
                Icons.lock,
                color: Colors.grey,
                size: 24,
              ),
      ),
    );
  }

  Widget _buildSettingsSection(String title, List<Widget> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            color: AppTheme.textPrimaryColor,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 8),
        Card(
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: items,
          ),
        ),
      ],
    );
  }

  Widget _buildSettingsItem(
    String title,
    IconData icon,
    VoidCallback onTap, {
    bool isDestructive = false,
  }) {
    return ListTile(
      leading: Icon(
        icon,
        color: isDestructive ? AppTheme.errorColor : AppTheme.textSecondaryColor,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: isDestructive ? AppTheme.errorColor : AppTheme.textPrimaryColor,
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: const Icon(
        Icons.chevron_right,
        color: AppTheme.textSecondaryColor,
      ),
      onTap: onTap,
    );
  }
}
