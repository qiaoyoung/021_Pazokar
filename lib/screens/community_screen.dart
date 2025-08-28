import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class CommunityScreen extends StatefulWidget {
  const CommunityScreen({super.key});

  @override
  State<CommunityScreen> createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> with TickerProviderStateMixin {
  int _selectedTabIndex = 0;
  
  final List<String> _tabs = [
    'Feed',
    'Challenges',
    'Groups',
    'Events',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      appBar: AppBar(
        title: const Text(
          'Community',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: AppTheme.primaryColor,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {
              // TODO: Implement search
            },
          ),
          IconButton(
            icon: const Icon(Icons.add, color: Colors.white),
            onPressed: () {
              // TODO: Create new post
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Tab Bar
          Container(
            color: AppTheme.primaryColor,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
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
          ),
          
          // Tab Content
          Expanded(
            child: IndexedStack(
              index: _selectedTabIndex,
              children: [
                _buildFeedTab(),
                _buildChallengesTab(),
                _buildGroupsTab(),
                _buildEventsTab(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeedTab() {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        _buildPostCard(
          'Alex Johnson',
          '2 hours ago',
          'Just completed an amazing mountain trail! The views were incredible. 🏔️ #mountainbiking #adventure',
          'assets/images/post1.jpg',
          'Mountain Peak Trail',
          '45.2 km',
          '2.5 hours',
          24,
          8,
          3,
        ),
        _buildPostCard(
          'Sarah Chen',
          '4 hours ago',
          'Perfect weather for a city ride today! Love exploring new neighborhoods. 🚴‍♀️ #citycycling',
          'assets/images/post2.jpg',
          'City Loop',
          '18.7 km',
          '1.2 hours',
          18,
          5,
          2,
        ),
        _buildPostCard(
          'Mike Rodriguez',
          '6 hours ago',
          'Gravel riding is the best way to discover hidden gems! Found this beautiful lake today. 🌊 #gravelriding',
          'assets/images/post3.jpg',
          'Gravel Adventure',
          '32.1 km',
          '2.1 hours',
          31,
          12,
          7,
        ),
      ],
    );
  }

  Widget _buildChallengesTab() {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        _buildChallengeCard(
          'Monthly Distance Challenge',
          'Complete 500km this month',
          'Progress: 342/500 km',
          0.68,
          '15 days left',
          AppTheme.primaryColor,
        ),
        _buildChallengeCard(
          'Elevation Master',
          'Climb 10,000m this month',
          'Progress: 7,250/10,000 m',
          0.725,
          '12 days left',
          AppTheme.warningColor,
        ),
        _buildChallengeCard(
          'Speed Demon',
          'Achieve 30km/h average speed',
          'Current: 28.5 km/h',
          0.95,
          '5 days left',
          AppTheme.successColor,
        ),
        _buildChallengeCard(
          'Consistency King',
          'Ride 5 days in a row',
          'Progress: 3/5 days',
          0.6,
          '2 days left',
          AppTheme.infoColor,
        ),
      ],
    );
  }

  Widget _buildGroupsTab() {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        _buildGroupCard(
          'Mountain Bikers United',
          '1,247 members',
          'Share your mountain biking adventures',
          Icons.landscape,
          AppTheme.warningColor,
        ),
        _buildGroupCard(
          'City Cyclists',
          '892 members',
          'Urban cycling community',
          Icons.location_city,
          AppTheme.successColor,
        ),
        _buildGroupCard(
          'Gravel Riders',
          '456 members',
          'Off-road gravel adventures',
          Icons.terrain,
          AppTheme.infoColor,
        ),
        _buildGroupCard(
          'Touring Enthusiasts',
          '234 members',
          'Long-distance touring tips',
          Icons.explore,
          AppTheme.secondaryColor,
        ),
      ],
    );
  }

  Widget _buildEventsTab() {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        _buildEventCard(
          'Weekend Group Ride',
          'Saturday, 9:00 AM',
          'Central Park',
          'Join us for a casual group ride around the city',
          '23 attending',
          AppTheme.primaryColor,
        ),
        _buildEventCard(
          'Mountain Trail Challenge',
          'Sunday, 8:00 AM',
          'Mountain Peak Trail',
          'Challenging mountain trail with experienced riders',
          '15 attending',
          AppTheme.warningColor,
        ),
        _buildEventCard(
          'Beginner Friendly Ride',
          'Next Saturday, 10:00 AM',
          'Riverside Path',
          'Perfect for new cyclists, slow pace',
          '8 attending',
          AppTheme.successColor,
        ),
      ],
    );
  }

  Widget _buildPostCard(
    String author,
    String timeAgo,
    String content,
    String imagePath,
    String rideTitle,
    String distance,
    String duration,
    int likes,
    int comments,
    int shares,
  ) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          ListTile(
            leading: CircleAvatar(
              backgroundColor: AppTheme.primaryColor.withOpacity(0.1),
              child: Text(
                author[0],
                style: TextStyle(
                  color: AppTheme.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            title: Text(
              author,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                color: AppTheme.textPrimaryColor,
              ),
            ),
            subtitle: Text(
              timeAgo,
              style: const TextStyle(
                color: AppTheme.textSecondaryColor,
                fontSize: 12,
              ),
            ),
            trailing: IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {
                // TODO: Show post options
              },
            ),
          ),
          
          // Content
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              content,
              style: const TextStyle(
                color: AppTheme.textPrimaryColor,
                fontSize: 16,
              ),
            ),
          ),
          
          const SizedBox(height: 12),
          
          // Ride Info Card
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: AppTheme.backgroundColor,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: AppTheme.primaryColor.withOpacity(0.2),
              ),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.directions_bike,
                  color: AppTheme.primaryColor,
                  size: 20,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        rideTitle,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          color: AppTheme.textPrimaryColor,
                        ),
                      ),
                      Text(
                        '$distance • $duration',
                        style: const TextStyle(
                          color: AppTheme.textSecondaryColor,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          
          const SizedBox(height: 12),
          
          // Image Placeholder
          Container(
            height: 200,
            margin: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Center(
              child: Icon(
                Icons.image,
                size: 48,
                color: Colors.grey,
              ),
            ),
          ),
          
          const SizedBox(height: 12),
          
          // Actions
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                _buildActionButton(
                  Icons.favorite_border,
                  '$likes',
                  () {
                    // TODO: Like post
                  },
                ),
                const SizedBox(width: 24),
                _buildActionButton(
                  Icons.comment_outlined,
                  '$comments',
                  () {
                    // TODO: Comment on post
                  },
                ),
                const SizedBox(width: 24),
                _buildActionButton(
                  Icons.share_outlined,
                  '$shares',
                  () {
                    // TODO: Share post
                  },
                ),
              ],
            ),
          ),
          
          const SizedBox(height: 8),
        ],
      ),
    );
  }

  Widget _buildChallengeCard(
    String title,
    String description,
    String progressText,
    double progress,
    String timeLeft,
    Color color,
  ) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: color.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    Icons.emoji_events,
                    color: color,
                    size: 20,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: AppTheme.textPrimaryColor,
                        ),
                      ),
                      Text(
                        description,
                        style: const TextStyle(
                          color: AppTheme.textSecondaryColor,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            
            const SizedBox(height: 16),
            
            // Progress Bar
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      progressText,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        color: AppTheme.textPrimaryColor,
                      ),
                    ),
                    Text(
                      timeLeft,
                      style: const TextStyle(
                        color: AppTheme.textSecondaryColor,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                LinearProgressIndicator(
                  value: progress,
                  backgroundColor: color.withOpacity(0.2),
                  valueColor: AlwaysStoppedAnimation<Color>(color),
                  minHeight: 8,
                ),
              ],
            ),
            
            const SizedBox(height: 12),
            
            ElevatedButton(
              onPressed: () {
                // TODO: View challenge details
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: color,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text('View Details'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGroupCard(
    String name,
    String memberCount,
    String description,
    IconData icon,
    Color color,
  ) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      elevation: 2,
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
          name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: AppTheme.textPrimaryColor,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              memberCount,
              style: const TextStyle(
                color: AppTheme.textSecondaryColor,
                fontSize: 12,
              ),
            ),
            Text(
              description,
              style: const TextStyle(
                color: AppTheme.textSecondaryColor,
                fontSize: 14,
              ),
            ),
          ],
        ),
        trailing: OutlinedButton(
          onPressed: () {
            // TODO: Join group
          },
          style: OutlinedButton.styleFrom(
            side: BorderSide(color: color),
            foregroundColor: color,
          ),
          child: const Text('Join'),
        ),
      ),
    );
  }

  Widget _buildEventCard(
    String title,
    String dateTime,
    String location,
    String description,
    String attendees,
    Color color,
  ) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: color.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    Icons.event,
                    color: color,
                    size: 20,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: AppTheme.textPrimaryColor,
                        ),
                      ),
                      Text(
                        dateTime,
                        style: const TextStyle(
                          color: AppTheme.textSecondaryColor,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            
            const SizedBox(height: 12),
            
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  size: 16,
                  color: AppTheme.textSecondaryColor,
                ),
                const SizedBox(width: 4),
                Text(
                  location,
                  style: const TextStyle(
                    color: AppTheme.textSecondaryColor,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            
            const SizedBox(height: 8),
            
            Text(
              description,
              style: const TextStyle(
                color: AppTheme.textPrimaryColor,
                fontSize: 14,
              ),
            ),
            
            const SizedBox(height: 12),
            
            Row(
              children: [
                Text(
                  attendees,
                  style: const TextStyle(
                    color: AppTheme.textSecondaryColor,
                    fontSize: 12,
                  ),
                ),
                const Spacer(),
                OutlinedButton(
                  onPressed: () {
                    // TODO: RSVP to event
                  },
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: color),
                    foregroundColor: color,
                  ),
                  child: const Text('RSVP'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActionButton(
    IconData icon,
    String label,
    VoidCallback onPressed,
  ) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(8),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Row(
          children: [
            Icon(
              icon,
              size: 20,
              color: AppTheme.textSecondaryColor,
            ),
            const SizedBox(width: 4),
            Text(
              label,
              style: const TextStyle(
                color: AppTheme.textSecondaryColor,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
