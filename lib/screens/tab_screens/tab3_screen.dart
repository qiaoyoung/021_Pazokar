import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../models/cycling_post.dart';
import '../../services/post_service.dart';
import '../../widgets/cycling_post_card.dart';
import '../post_detail_screen.dart';

class Tab3Screen extends StatefulWidget {
  const Tab3Screen({super.key});

  @override
  State<Tab3Screen> createState() => _Tab3ScreenState();
}

class _Tab3ScreenState extends State<Tab3Screen> {
  List<CyclingPost> _posts = [];
  bool _isLoading = true;
  String _selectedFilter = 'All';
  final List<String> _filters = ['All', 'Popular', 'Recent', 'Following'];
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _loadPosts();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> _loadPosts() async {
    setState(() {
      _isLoading = true;
    });

    try {
      List<CyclingPost> posts;
      
      switch (_selectedFilter) {
        case 'Popular':
          posts = await PostService.getPopularPosts(limit: 50);
          break;
        case 'Recent':
          posts = await PostService.getRecentPosts(limit: 50);
          break;
        case 'Following':
          // TODO: Implement following filter
          posts = await PostService.getAllPosts();
          break;
        default:
          posts = await PostService.getAllPosts();
      }
      
      setState(() {
        _posts = posts;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
      _showErrorSnackBar('Failed to load posts');
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

  void _onFilterChanged(String filter) {
    setState(() {
      _selectedFilter = filter;
    });
    _loadPosts();
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Cycling Feed',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2C3E50),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Discover amazing cycling adventures',
                      style: TextStyle(
                        fontSize: 16,
                        color: const Color(0xFF34495E).withValues(alpha: 0.8),
                      ),
                    ),
                  ],
                ),
              ),

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
                          if (selected) {
                            _onFilterChanged(filter);
                          }
                        },
                        backgroundColor: Colors.white.withValues(alpha: 0.9),
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

              // Posts Grid
              Expanded(
                child: _isLoading
                    ? Center(
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(AppTheme.primaryColor),
                        ),
                      )
                    : _posts.isEmpty
                        ? const Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.photo_library,
                                  size: 64,
                                  color: Color(0xFF7F8C8D),
                                ),
                                SizedBox(height: 16),
                                Text(
                                  'No posts found',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Color(0xFF2C3E50),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Be the first to share your ride!',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF7F8C8D),
                                  ),
                                ),
                              ],
                            ),
                          )
                        : RefreshIndicator(
                            onRefresh: _loadPosts,
                            child: GridView.builder(
                              controller: _scrollController,
                              padding: const EdgeInsets.symmetric(horizontal: 8),
                              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: 0.85,
                                crossAxisSpacing: 8,
                                mainAxisSpacing: 8,
                              ),
                              itemCount: _posts.length,
                              itemBuilder: (context, index) {
                                final post = _posts[index];
                                return CyclingPostCard(
                                  post: post,
                                  isCompact: true,
                                  onTap: () {
                                    // TODO: Navigate to post detail
                                    _showPostDetail(post);
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

  void _showPostDetail(CyclingPost post) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => PostDetailScreen(post: post),
      ),
    );
  }
}
