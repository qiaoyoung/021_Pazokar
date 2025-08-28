import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import '../models/cycling_post.dart';

class PostService {
  static List<CyclingPost> _cachedPosts = [];
  static bool _isLoaded = false;

  // 获取所有动态
  static Future<List<CyclingPost>> getAllPosts() async {
    if (_isLoaded) {
      return _cachedPosts;
    }

    try {
      final String response = await rootBundle.loadString('assets/post/cycling_posts.json');
      final data = json.decode(response);
      final List<dynamic> postsList = data['posts'];
      
      _cachedPosts = postsList.map((json) => CyclingPost.fromJson(json)).toList();
      _isLoaded = true;
      
      return _cachedPosts;
    } catch (e) {
      // Error loading posts
      return [];
    }
  }

  // 获取指定数量的动态
  static Future<List<CyclingPost>> getPosts({int limit = 20, int offset = 0}) async {
    final allPosts = await getAllPosts();
    final endIndex = (offset + limit).clamp(0, allPosts.length);
    return allPosts.sublist(offset, endIndex);
  }

  // 根据用户筛选动态
  static Future<List<CyclingPost>> getPostsByUser(String username) async {
    final allPosts = await getAllPosts();
    return allPosts.where((post) => post.user.username == username).toList();
  }

  // 根据位置筛选动态
  static Future<List<CyclingPost>> getPostsByLocation(String location) async {
    final allPosts = await getAllPosts();
    return allPosts.where((post) => 
      post.content.location?.displayName.toLowerCase().contains(location.toLowerCase()) == true
    ).toList();
  }

  // 根据骑行类型筛选动态
  static Future<List<CyclingPost>> getPostsByRouteType(String routeType) async {
    final allPosts = await getAllPosts();
    return allPosts.where((post) => 
      post.content.rideData?.routeType.toLowerCase().contains(routeType.toLowerCase()) == true
    ).toList();
  }

  // 搜索动态
  static Future<List<CyclingPost>> searchPosts(String query) async {
    final allPosts = await getAllPosts();
    final lowercaseQuery = query.toLowerCase();
    
    return allPosts.where((post) {
      return post.content.text.toLowerCase().contains(lowercaseQuery) ||
             post.user.displayName.toLowerCase().contains(lowercaseQuery) ||
             post.content.hashtags.any((tag) => tag.toLowerCase().contains(lowercaseQuery)) ||
             post.content.location?.displayName.toLowerCase().contains(lowercaseQuery) == true;
    }).toList();
  }

  // 获取热门动态（按点赞数排序）
  static Future<List<CyclingPost>> getPopularPosts({int limit = 10}) async {
    final allPosts = await getAllPosts();
    allPosts.sort((a, b) => b.likes.compareTo(a.likes));
    return allPosts.take(limit).toList();
  }

  // 获取最新动态
  static Future<List<CyclingPost>> getRecentPosts({int limit = 10}) async {
    final allPosts = await getAllPosts();
    allPosts.sort((a, b) => b.timestamp.compareTo(a.timestamp));
    return allPosts.take(limit).toList();
  }

  // 获取特定动态
  static Future<CyclingPost?> getPostById(String postId) async {
    final allPosts = await getAllPosts();
    try {
      return allPosts.firstWhere((post) => post.id == postId);
    } catch (e) {
      return null;
    }
  }

  // 获取用户统计信息
  static Future<Map<String, dynamic>> getUserStats(String username) async {
    final userPosts = await getPostsByUser(username);
    
    if (userPosts.isEmpty) {
      return {
        'totalPosts': 0,
        'totalLikes': 0,
        'totalComments': 0,
        'totalShares': 0,
        'totalDistance': 0,
        'totalCalories': 0,
        'averageLikes': 0,
      };
    }

    int totalLikes = 0;
    int totalComments = 0;
    int totalShares = 0;
    double totalDistance = 0;
    int totalCalories = 0;

    for (final post in userPosts) {
      totalLikes += post.likes;
      totalComments += post.comments;
      totalShares += post.shares;
      
      if (post.content.rideData != null) {
        // 提取距离数字（假设格式为 "32.5 km"）
        final distanceStr = post.content.rideData!.distance;
        final distanceMatch = RegExp(r'(\d+\.?\d*)').firstMatch(distanceStr);
        if (distanceMatch != null) {
          totalDistance += double.tryParse(distanceMatch.group(1)!) ?? 0;
        }
        
        totalCalories += post.content.rideData!.caloriesBurned;
      }
    }

    return {
      'totalPosts': userPosts.length,
      'totalLikes': totalLikes,
      'totalComments': totalComments,
      'totalShares': totalShares,
      'totalDistance': totalDistance,
      'totalCalories': totalCalories,
      'averageLikes': totalLikes / userPosts.length,
    };
  }

  // 获取平台统计信息
  static Future<Map<String, dynamic>> getPlatformStats() async {
    final allPosts = await getAllPosts();
    
    if (allPosts.isEmpty) {
      return {
        'totalPosts': 0,
        'totalUsers': 0,
        'totalLikes': 0,
        'totalComments': 0,
        'totalShares': 0,
        'totalDistance': 0,
        'totalCalories': 0,
        'averageEngagement': 0,
      };
    }

    int totalLikes = 0;
    int totalComments = 0;
    int totalShares = 0;
    double totalDistance = 0;
    int totalCalories = 0;
    Set<String> uniqueUsers = {};

    for (final post in allPosts) {
      totalLikes += post.likes;
      totalComments += post.comments;
      totalShares += post.shares;
      uniqueUsers.add(post.user.username);
      
      if (post.content.rideData != null) {
        final distanceStr = post.content.rideData!.distance;
        final distanceMatch = RegExp(r'(\d+\.?\d*)').firstMatch(distanceStr);
        if (distanceMatch != null) {
          totalDistance += double.tryParse(distanceMatch.group(1)!) ?? 0;
        }
        
        totalCalories += post.content.rideData!.caloriesBurned;
      }
    }

    final totalEngagement = totalLikes + totalComments + totalShares;
    final averageEngagement = totalEngagement / allPosts.length;

    return {
      'totalPosts': allPosts.length,
      'totalUsers': uniqueUsers.length,
      'totalLikes': totalLikes,
      'totalComments': totalComments,
      'totalShares': totalShares,
      'totalDistance': totalDistance,
      'totalCalories': totalCalories,
      'averageEngagement': averageEngagement,
    };
  }

  // 清除缓存
  static void clearCache() {
    _cachedPosts.clear();
    _isLoaded = false;
  }

  // 刷新数据
  static Future<List<CyclingPost>> refreshPosts() async {
    clearCache();
    return await getAllPosts();
  }
}
