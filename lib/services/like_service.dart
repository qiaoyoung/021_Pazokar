import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class LikeService {
  static const String _likedPostsKey = 'liked_posts';
  static const String _postLikesKey = 'post_likes_';

  // 获取用户点赞的动态ID列表
  static Future<List<String>> getLikedPostIds() async {
    final prefs = await SharedPreferences.getInstance();
    final likedPostsJson = prefs.getString(_likedPostsKey);
    if (likedPostsJson != null) {
      final List<dynamic> likedPosts = json.decode(likedPostsJson);
      return likedPosts.cast<String>();
    }
    return [];
  }

  // 检查动态是否被点赞
  static Future<bool> isPostLiked(String postId) async {
    final likedPosts = await getLikedPostIds();
    return likedPosts.contains(postId);
  }

  // 切换点赞状态
  static Future<bool> toggleLike(String postId) async {
    final prefs = await SharedPreferences.getInstance();
    final likedPosts = await getLikedPostIds();
    
    bool isLiked;
    if (likedPosts.contains(postId)) {
      // 取消点赞
      likedPosts.remove(postId);
      isLiked = false;
    } else {
      // 添加点赞
      likedPosts.add(postId);
      isLiked = true;
    }
    
    // 保存到本地存储
    await prefs.setString(_likedPostsKey, json.encode(likedPosts));
    
    return isLiked;
  }

  // 获取动态的点赞数
  static Future<int> getPostLikes(String postId) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt('$_postLikesKey$postId') ?? 0;
  }

  // 设置动态的点赞数
  static Future<void> setPostLikes(String postId, int likes) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('$_postLikesKey$postId', likes);
  }

  // 增加动态点赞数
  static Future<int> incrementPostLikes(String postId) async {
    final currentLikes = await getPostLikes(postId);
    final newLikes = currentLikes + 1;
    await setPostLikes(postId, newLikes);
    return newLikes;
  }

  // 减少动态点赞数
  static Future<int> decrementPostLikes(String postId) async {
    final currentLikes = await getPostLikes(postId);
    final newLikes = (currentLikes - 1).clamp(0, double.infinity).toInt();
    await setPostLikes(postId, newLikes);
    return newLikes;
  }

  // 清除所有点赞数据（用于测试或重置）
  static Future<void> clearAllLikes() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_likedPostsKey);
    
    // 清除所有动态的点赞数
    final keys = prefs.getKeys();
    for (final key in keys) {
      if (key.startsWith(_postLikesKey)) {
        await prefs.remove(key);
      }
    }
  }
}
