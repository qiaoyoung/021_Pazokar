import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class UserManagementService {
  static const String _blockedUsersKey = 'blocked_users';
  static const String _reportedPostsKey = 'reported_posts';

  // 获取拉黑用户列表
  static Future<List<String>> getBlockedUsers() async {
    final prefs = await SharedPreferences.getInstance();
    final blockedUsersJson = prefs.getString(_blockedUsersKey);
    if (blockedUsersJson != null) {
      final List<dynamic> blockedUsers = json.decode(blockedUsersJson);
      return blockedUsers.cast<String>();
    }
    return [];
  }

  // 检查用户是否被拉黑
  static Future<bool> isUserBlocked(String userId) async {
    final blockedUsers = await getBlockedUsers();
    return blockedUsers.contains(userId);
  }

  // 拉黑用户
  static Future<void> blockUser(String userId) async {
    final prefs = await SharedPreferences.getInstance();
    final blockedUsers = await getBlockedUsers();
    
    if (!blockedUsers.contains(userId)) {
      blockedUsers.add(userId);
      await prefs.setString(_blockedUsersKey, json.encode(blockedUsers));
    }
  }

  // 取消拉黑用户
  static Future<void> unblockUser(String userId) async {
    final prefs = await SharedPreferences.getInstance();
    final blockedUsers = await getBlockedUsers();
    
    blockedUsers.remove(userId);
    await prefs.setString(_blockedUsersKey, json.encode(blockedUsers));
  }

  // 获取举报的帖子列表
  static Future<List<String>> getReportedPosts() async {
    final prefs = await SharedPreferences.getInstance();
    final reportedPostsJson = prefs.getString(_reportedPostsKey);
    if (reportedPostsJson != null) {
      final List<dynamic> reportedPosts = json.decode(reportedPostsJson);
      return reportedPosts.cast<String>();
    }
    return [];
  }

  // 检查帖子是否被举报
  static Future<bool> isPostReported(String postId) async {
    final reportedPosts = await getReportedPosts();
    return reportedPosts.contains(postId);
  }

  // 举报帖子
  static Future<void> reportPost(String postId, String reason) async {
    final prefs = await SharedPreferences.getInstance();
    final reportedPosts = await getReportedPosts();
    
    if (!reportedPosts.contains(postId)) {
      reportedPosts.add(postId);
      await prefs.setString(_reportedPostsKey, json.encode(reportedPosts));
      
      // 保存举报原因（可选）
      await prefs.setString('report_reason_$postId', reason);
    }
  }

  // 清除所有拉黑用户（用于测试或重置）
  static Future<void> clearAllBlockedUsers() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_blockedUsersKey);
  }

  // 清除所有举报的帖子（用于测试或重置）
  static Future<void> clearAllReportedPosts() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_reportedPostsKey);
    
    // 清除所有举报原因
    final keys = prefs.getKeys();
    for (final key in keys) {
      if (key.startsWith('report_reason_')) {
        await prefs.remove(key);
      }
    }
  }
}
