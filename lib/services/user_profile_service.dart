import 'dart:io';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:path_provider/path_provider.dart';

class UserProfileService {
  static const String _userNameKey = 'user_name';
  static const String _userAvatarKey = 'user_avatar_path';
  static const String _defaultUserName = 'Cyclist';

  // 获取用户名称
  static Future<String> getUserName() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_userNameKey) ?? _defaultUserName;
  }

  // 保存用户名称
  static Future<void> saveUserName(String name) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_userNameKey, name);
  }

  // 获取用户头像路径
  static Future<String?> getUserAvatarPath() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_userAvatarKey);
  }

  // 保存用户头像路径
  static Future<void> saveUserAvatarPath(String path) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_userAvatarKey, path);
  }

  // 获取应用文档目录
  static Future<String> getDocumentsDirectory() async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  // 生成头像文件名
  static String generateAvatarFileName() {
    final timestamp = DateTime.now().millisecondsSinceEpoch;
    return 'user_avatar_$timestamp.jpg';
  }

  // 复制头像文件到应用目录
  static Future<String> copyAvatarToAppDirectory(String sourcePath) async {
    final documentsDir = await getDocumentsDirectory();
    final fileName = generateAvatarFileName();
    final destinationPath = '$documentsDir/$fileName';
    
    final sourceFile = File(sourcePath);
    
    await sourceFile.copy(destinationPath);
    return destinationPath;
  }

  // 检查头像文件是否存在
  static Future<bool> avatarFileExists(String path) async {
    final file = File(path);
    return await file.exists();
  }

  // 清除用户资料
  static Future<void> clearUserProfile() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_userNameKey);
    await prefs.remove(_userAvatarKey);
  }
}
