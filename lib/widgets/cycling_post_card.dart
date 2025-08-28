import 'package:flutter/material.dart';
import '../models/cycling_post.dart';
import '../theme/app_theme.dart';

class CyclingPostCard extends StatelessWidget {
  final CyclingPost post;
  final VoidCallback? onTap;
  final bool isCompact;

  const CyclingPostCard({
    super.key,
    required this.post,
    this.onTap,
    this.isCompact = false,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Images Grid
            if (post.content.images.isNotEmpty)
              _buildImagesGrid(),
            
            // Content Text (Title)
            if (post.content.text.isNotEmpty)
              _buildContentText(),
          ],
        ),
      ),
    );
  }

  Widget _buildUserHeader() {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        children: [
          // Avatar
          CircleAvatar(
            radius: 16,
            backgroundImage: AssetImage(post.user.avatar),
            onBackgroundImageError: (exception, stackTrace) {
              // Fallback to placeholder
            },
            child: post.user.avatar.isEmpty
                ? const Icon(Icons.person, color: Colors.white, size: 16)
                : null,
          ),
          
          const SizedBox(width: 8),
          
          // User Info
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        post.user.displayName,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          color: Color(0xFF2C3E50),
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    if (post.user.verified)
                      const Padding(
                        padding: EdgeInsets.only(left: 2),
                        child: Icon(
                          Icons.verified,
                          size: 12,
                          color: Colors.blue,
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: 2),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 10,
                      color: Colors.grey[600],
                    ),
                    const SizedBox(width: 2),
                    Expanded(
                      child: Text(
                        post.user.location,
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey[600],
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      post.timeAgo,
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey[500],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          
          // More Options
          IconButton(
            onPressed: () {
              // TODO: Show post options
            },
            icon: const Icon(
              Icons.more_horiz,
              size: 16,
              color: Color(0xFF7F8C8D),
            ),
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
          ),
        ],
      ),
    );
  }

  Widget _buildContentText() {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: Text(
        post.content.text,
        style: const TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w500,
          color: Color(0xFF2C3E50),
          height: 1.1,
        ),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  Widget _buildImagesGrid() {
    final images = post.content.images;
    if (images.isEmpty) return const SizedBox.shrink();
    
    // Always show only the first image, full container
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(12),
        topRight: Radius.circular(12),
      ),
      child: AspectRatio(
        aspectRatio: 1,
        child: Image.asset(
          images[0].url,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return Container(
              color: Colors.grey[200],
              child: const Icon(
                Icons.image,
                color: Colors.grey,
                size: 40,
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildRideData() {
    final rideData = post.content.rideData!;
    
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: AppTheme.primaryColor.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          color: AppTheme.primaryColor.withValues(alpha: 0.2),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.directions_bike,
                size: 12,
                color: AppTheme.primaryColor,
              ),
              const SizedBox(width: 3),
              Text(
                'Ride Data',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                  color: AppTheme.primaryColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              _buildRideStat('Distance', rideData.distance, Icons.straighten),
              const SizedBox(width: 6),
              _buildRideStat('Duration', rideData.duration, Icons.access_time),
            ],
          ),
          const SizedBox(height: 3),
          Row(
            children: [
              _buildRideStat('Speed', rideData.avgSpeed, Icons.speed),
              const SizedBox(width: 6),
              if (rideData.elevationGain.isNotEmpty)
                _buildRideStat('Elevation', rideData.elevationGain, Icons.trending_up),
            ],
          ),
          if (rideData.caloriesBurned > 0) ...[
            const SizedBox(height: 3),
            Row(
              children: [
                _buildRideStat('Calories', '${rideData.caloriesBurned}', Icons.local_fire_department),
              ],
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildRideStat(String label, String value, IconData icon) {
    return Expanded(
      child: Row(
        children: [
          Icon(
            icon,
            size: 10,
            color: Colors.grey[600],
          ),
          const SizedBox(width: 2),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 9,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF2C3E50),
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 7,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLocation() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          Icon(
            Icons.location_on,
            size: 12,
            color: Colors.grey[600],
          ),
          const SizedBox(width: 3),
          Expanded(
            child: Text(
              post.content.location!.displayName,
              style: TextStyle(
                fontSize: 10,
                color: Colors.grey[600],
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWeather() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 3),
      child: Row(
        children: [
          Icon(
            _getWeatherIcon(post.weather.condition),
            size: 12,
            color: Colors.grey[600],
          ),
          const SizedBox(width: 3),
          Text(
            '${post.weather.temperature} • ${post.weather.condition}',
            style: TextStyle(
              fontSize: 10,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }

  IconData _getWeatherIcon(String condition) {
    switch (condition.toLowerCase()) {
      case 'sunny':
      case 'clear':
      case 'clear skies':
        return Icons.wb_sunny;
      case 'cloudy':
      case 'partly cloudy':
        return Icons.cloud;
      case 'rainy':
      case 'stormy':
        return Icons.umbrella;
      case 'snowy':
        return Icons.ac_unit;
      default:
        return Icons.cloud;
    }
  }

  Widget _buildEngagementActions() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: Row(
        children: [
          // Like Button
          _buildActionButton(
            icon: Icons.favorite_border,
            label: _formatNumber(post.likes),
            onTap: () {
              // TODO: Handle like
            },
          ),
          
          const SizedBox(width: 8),
          
          // Comment Button
          _buildActionButton(
            icon: Icons.chat_bubble_outline,
            label: _formatNumber(post.comments),
            onTap: () {
              // TODO: Handle comment
            },
          ),
          
          const SizedBox(width: 8),
          
          // Share Button
          _buildActionButton(
            icon: Icons.share,
            label: _formatNumber(post.shares),
            onTap: () {
              // TODO: Handle share
            },
          ),
          
          const Spacer(),
          
          // Save Button
          IconButton(
            onPressed: () {
              // TODO: Handle save
            },
            icon: const Icon(
              Icons.bookmark_border,
              size: 16,
              color: Color(0xFF7F8C8D),
            ),
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(4),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 14,
              color: const Color(0xFF7F8C8D),
            ),
            const SizedBox(width: 2),
            Text(
              label,
              style: const TextStyle(
                fontSize: 10,
                color: Color(0xFF7F8C8D),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCommentsPreview() {
    final comments = post.engagement.topComments;
    if (comments.isEmpty) return const SizedBox.shrink();
    
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (comments.length > 1)
            Text(
              'View all ${post.comments} comments',
              style: TextStyle(
                fontSize: 9,
                color: Colors.grey[600],
                fontWeight: FontWeight.w500,
              ),
            ),
          const SizedBox(height: 1),
          Text(
            '${comments.first.user}: ${comments.first.text}',
            style: const TextStyle(
              fontSize: 9,
              color: Color(0xFF2C3E50),
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  String _formatNumber(int number) {
    if (number >= 1000000) {
      return '${(number / 1000000).toStringAsFixed(1)}M';
    } else if (number >= 1000) {
      return '${(number / 1000).toStringAsFixed(1)}K';
    }
    return number.toString();
  }
}
