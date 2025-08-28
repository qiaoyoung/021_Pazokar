import 'package:flutter/material.dart';
import '../models/cycling_post.dart';
import '../theme/app_theme.dart';
import '../services/like_service.dart';
import '../services/user_management_service.dart';
import 'image_viewer_screen.dart';
import 'chat_screen.dart';

class PostDetailScreen extends StatefulWidget {
  final CyclingPost post;

  const PostDetailScreen({
    super.key,
    required this.post,
  });

  @override
  State<PostDetailScreen> createState() => _PostDetailScreenState();
}

class _PostDetailScreenState extends State<PostDetailScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  bool _isLiked = false;
  int _currentLikes = 0;
  bool _isLoadingLike = false;
  bool _isUserBlocked = false;

  @override
  void initState() {
    super.initState();
    _loadLikeState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Future<void> _loadLikeState() async {
    final isLiked = await LikeService.isPostLiked(widget.post.id);
    final storedLikes = await LikeService.getPostLikes(widget.post.id);
    final isUserBlocked = await UserManagementService.isUserBlocked(widget.post.user.username);
    
    setState(() {
      _isLiked = isLiked;
      // 如果有存储的点赞数，使用存储的；否则使用原始点赞数
      _currentLikes = storedLikes > 0 ? storedLikes : widget.post.likes;
      _isUserBlocked = isUserBlocked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF2C3E50),
          ),
        ),
        title: const Text(
          'Post Detail',
          style: TextStyle(
            color: Color(0xFF2C3E50),
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              _showPostOptions();
            },
            icon: const Icon(
              Icons.more_horiz,
              color: Color(0xFF2C3E50),
            ),
          ),
        ],
      ),
      body: _isUserBlocked 
        ? _buildBlockedContent()
        : SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // User Header
                _buildUserHeader(),
                
                // Images with PageView and Indicators
                if (widget.post.content.images.isNotEmpty)
                  _buildImagesSection(),
                
                // Content Text
                if (widget.post.content.text.isNotEmpty)
                  _buildContentText(),
                
                // Ride Data
                if (widget.post.content.rideData != null)
                  _buildRideData(),
                
                // Location
                if (widget.post.content.location != null)
                  _buildLocation(),
                
                // Weather
                _buildWeather(),
                
                // Engagement Actions
                _buildEngagementActions(),
                
                const SizedBox(height: 20),
              ],
            ),
          ),
    );
  }

  Widget _buildUserHeader() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          CircleAvatar(
            radius: 24,
            backgroundImage: AssetImage(widget.post.user.avatar),
            onBackgroundImageError: (exception, stackTrace) {
              // Fallback to placeholder
            },
            child: widget.post.user.avatar.isEmpty
                ? const Icon(Icons.person, color: Colors.white, size: 24)
                : null,
          ),
          
          const SizedBox(width: 12),
          
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      widget.post.user.displayName,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Color(0xFF2C3E50),
                      ),
                    ),
                    if (widget.post.user.verified)
                      const Padding(
                        padding: EdgeInsets.only(left: 4),
                        child: Icon(
                          Icons.verified,
                          size: 16,
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
                      size: 14,
                      color: Colors.grey[600],
                    ),
                    const SizedBox(width: 4),
                    Text(
                      widget.post.user.location,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ChatScreen(user: widget.post.user),
                ),
              );
            },
            icon: const Icon(
              Icons.chat_bubble_outline,
              size: 24,
              color: Color(0xFF7F8C8D),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImagesSection() {
    final images = widget.post.content.images;
    
    return Column(
      children: [
        // PageView for images
        SizedBox(
          height: 300,
          child: PageView.builder(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemCount: images.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ImageViewerScreen(
                        images: images,
                        initialIndex: index,
                      ),
                    ),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      images[index].url,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          color: Colors.grey[200],
                          child: const Icon(
                            Icons.image,
                            color: Colors.grey,
                            size: 60,
                          ),
                        );
                      },
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        
        // Page indicators
        if (images.length > 1)
          Container(
            margin: const EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                images.length,
                (index) => Container(
                  width: 8,
                  height: 8,
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentPage == index
                        ? AppTheme.primaryColor
                        : Colors.grey[300],
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildContentText() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Text(
        widget.post.content.text,
        style: const TextStyle(
          fontSize: 16,
          color: Color(0xFF2C3E50),
          height: 1.5,
        ),
      ),
    );
  }

  Widget _buildRideData() {
    final rideData = widget.post.content.rideData!;
    
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppTheme.primaryColor.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(12),
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
                size: 20,
                color: AppTheme.primaryColor,
              ),
              const SizedBox(width: 8),
              Text(
                'Ride Data',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppTheme.primaryColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              _buildRideStat('Distance', rideData.distance, Icons.straighten),
              const SizedBox(width: 16),
              _buildRideStat('Speed', rideData.avgSpeed, Icons.speed),
            ],
          ),
          if (rideData.elevationGain.isNotEmpty) ...[
            const SizedBox(height: 12),
            Row(
              children: [
                _buildRideStat('Elevation', rideData.elevationGain, Icons.trending_up),
                const SizedBox(width: 16),
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
            size: 18,
            color: Colors.grey[600],
          ),
          const SizedBox(width: 6),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF2C3E50),
                  ),
                ),
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 12,
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
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Icon(
            Icons.location_on,
            size: 18,
            color: Colors.grey[600],
          ),
          const SizedBox(width: 6),
          Expanded(
            child: Text(
              widget.post.content.location!.displayName,
              style: const TextStyle(
                fontSize: 16,
                color: Color(0xFF2C3E50),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWeather() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          Icon(
            _getWeatherIcon(widget.post.weather.condition),
            size: 18,
            color: Colors.grey[600],
          ),
          const SizedBox(width: 6),
          Text(
            '${widget.post.weather.temperature} • ${widget.post.weather.condition}',
            style: const TextStyle(
              fontSize: 16,
              color: Color(0xFF2C3E50),
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
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          // Like Button
          _buildActionButton(
            icon: _isLiked ? Icons.favorite : Icons.favorite_border,
            label: _formatNumber(_currentLikes),
            onTap: _isLoadingLike ? null : _handleLike,
            iconColor: _isLiked ? Colors.red : const Color(0xFF7F8C8D),
          ),
       
        ],
      ),
    );
  }

  Widget _buildActionButton({
    required IconData icon,
    required String label,
    required VoidCallback? onTap,
    Color? iconColor,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(4),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 20,
              color: iconColor ?? const Color(0xFF7F8C8D),
            ),
            const SizedBox(width: 6),
            Text(
              label,
              style: const TextStyle(
                fontSize: 14,
                color: Color(0xFF7F8C8D),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBlockedContent() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.block,
              size: 80,
              color: Colors.grey[400],
            ),
            const SizedBox(height: 24),
            Text(
              'User Blocked',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'You have blocked this user. Their content is hidden.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[500],
                height: 1.5,
              ),
            ),
            const SizedBox(height: 32),
            ElevatedButton.icon(
              onPressed: () async {
                await _handleBlockUser();
              },
              icon: const Icon(Icons.person_add),
              label: const Text('Unblock User'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _handleLike() async {
    if (_isLoadingLike) return;

    setState(() {
      _isLoadingLike = true;
    });

    try {
      final isLiked = await LikeService.toggleLike(widget.post.id);
      
      if (isLiked) {
        // 点赞：在原有基础上+1
        final newLikes = _currentLikes + 1;
        await LikeService.setPostLikes(widget.post.id, newLikes);
        setState(() {
          _isLiked = true;
          _currentLikes = newLikes;
        });
      } else {
        // 取消点赞：在原有基础上-1
        final newLikes = (_currentLikes - 1).clamp(0, double.infinity).toInt();
        await LikeService.setPostLikes(widget.post.id, newLikes);
        setState(() {
          _isLiked = false;
          _currentLikes = newLikes;
        });
      }
    } catch (e) {
      // 显示错误提示
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Failed to update like: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() {
          _isLoadingLike = false;
        });
      }
    }
  }

  String _formatNumber(int number) {
    if (number >= 1000000) {
      return '${(number / 1000000).toStringAsFixed(1)}M';
    } else if (number >= 1000) {
      return '${(number / 1000).toStringAsFixed(1)}K';
    }
    return number.toString();
  }

  void _showPostOptions() {
    showModalBottomSheet(
      context: context,
      builder: (context) => Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Block/Unblock User
            ListTile(
              leading: Icon(
                _isUserBlocked ? Icons.person_add : Icons.block,
                color: _isUserBlocked ? Colors.green : Colors.red,
              ),
              title: Text(
                _isUserBlocked ? 'Unblock User' : 'Block User',
                style: TextStyle(
                  color: _isUserBlocked ? Colors.green : Colors.red,
                ),
              ),
              onTap: () {
                Navigator.of(context).pop();
                _handleBlockUser();
              },
            ),
            
            // Report Post
            ListTile(
              leading: const Icon(Icons.flag, color: Colors.orange),
              title: const Text('Report Post'),
              onTap: () {
                Navigator.of(context).pop();
                _showReportDialog();
              },
            ),
            
            // Cancel
            ListTile(
              leading: const Icon(Icons.close, color: Colors.grey),
              title: const Text('Cancel'),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _handleBlockUser() async {
    try {
      if (_isUserBlocked) {
        // Unblock user
        await UserManagementService.unblockUser(widget.post.user.username);
        setState(() {
          _isUserBlocked = false;
        });
        
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('User unblocked successfully'),
              backgroundColor: Colors.green,
            ),
          );
        }
      } else {
        // Block user
        final confirmed = await showDialog<bool>(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Block User'),
            content: Text('Are you sure you want to block ${widget.post.user.displayName}? You won\'t see their posts anymore.'),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: const Text('Block'),
              ),
            ],
          ),
        );

                 if (confirmed == true) {
           await UserManagementService.blockUser(widget.post.user.username);
           setState(() {
             _isUserBlocked = true;
           });
           
           if (mounted) {
             ScaffoldMessenger.of(context).showSnackBar(
               const SnackBar(
                 content: Text('User blocked successfully'),
                 backgroundColor: Colors.red,
               ),
             );
           }
         }
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Failed to ${_isUserBlocked ? 'unblock' : 'block'} user: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  void _showReportDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Report Post'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Please select a reason for reporting this post:'),
            const SizedBox(height: 16),
            _buildReportOption('Inappropriate Content', 'inappropriate'),
            _buildReportOption('Spam', 'spam'),
            _buildReportOption('Harassment', 'harassment'),
            _buildReportOption('False Information', 'false_info'),
            _buildReportOption('Other', 'other'),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
        ],
      ),
    );
  }

  Widget _buildReportOption(String title, String reason) {
    return ListTile(
      title: Text(title),
      onTap: () async {
        Navigator.of(context).pop();
        await _reportPost(reason);
      },
    );
  }

  Future<void> _reportPost(String reason) async {
    try {
      await UserManagementService.reportPost(widget.post.id, reason);
      
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Post reported successfully'),
            backgroundColor: Colors.orange,
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Failed to report post: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }
}
