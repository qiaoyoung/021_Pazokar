import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class RegistrationService {
  static const String _registrationKey = 'event_registrations';
  static const String _registrationHistoryKey = 'registration_history';

  // 检查是否已报名某个活动
  static Future<bool> isRegistered(int eventId) async {
    final prefs = await SharedPreferences.getInstance();
    final registrationsJson = prefs.getString(_registrationKey) ?? '[]';
    final List<dynamic> registrations = json.decode(registrationsJson);
    
    return registrations.contains(eventId);
  }

  // 报名活动
  static Future<void> register(int eventId) async {
    final prefs = await SharedPreferences.getInstance();
    
    // 获取当前报名列表
    final registrationsJson = prefs.getString(_registrationKey) ?? '[]';
    final List<dynamic> registrations = json.decode(registrationsJson);
    
    // 如果还未报名，添加到列表
    if (!registrations.contains(eventId)) {
      registrations.add(eventId);
      await prefs.setString(_registrationKey, json.encode(registrations));
      
      // 添加到报名历史
      await _addToHistory(eventId, 'register');
    }
  }

  // 取消报名
  static Future<void> unregister(int eventId) async {
    final prefs = await SharedPreferences.getInstance();
    
    // 获取当前报名列表
    final registrationsJson = prefs.getString(_registrationKey) ?? '[]';
    final List<dynamic> registrations = json.decode(registrationsJson);
    
    // 移除报名
    registrations.remove(eventId);
    await prefs.setString(_registrationKey, json.encode(registrations));
    
    // 添加到报名历史
    await _addToHistory(eventId, 'unregister');
  }

  // 获取所有已报名的活动ID
  static Future<List<int>> getRegisteredEvents() async {
    final prefs = await SharedPreferences.getInstance();
    final registrationsJson = prefs.getString(_registrationKey) ?? '[]';
    final List<dynamic> registrations = json.decode(registrationsJson);
    
    return registrations.cast<int>();
  }

  // 获取报名历史
  static Future<List<RegistrationHistory>> getRegistrationHistory() async {
    final prefs = await SharedPreferences.getInstance();
    final historyJson = prefs.getString(_registrationHistoryKey) ?? '[]';
    final List<dynamic> historyList = json.decode(historyJson);
    
    return historyList
        .map((item) => RegistrationHistory.fromJson(item))
        .toList()
        ..sort((a, b) => b.timestamp.compareTo(a.timestamp)); // 按时间倒序
  }

  // 清除所有报名数据（用于调试或重置）
  static Future<void> clearAllRegistrations() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_registrationKey);
    await prefs.remove(_registrationHistoryKey);
  }

  // 添加到报名历史的私有方法
  static Future<void> _addToHistory(int eventId, String action) async {
    final prefs = await SharedPreferences.getInstance();
    final historyJson = prefs.getString(_registrationHistoryKey) ?? '[]';
    final List<dynamic> historyList = json.decode(historyJson);
    
    final historyItem = RegistrationHistory(
      eventId: eventId,
      action: action,
      timestamp: DateTime.now(),
    );
    
    historyList.add(historyItem.toJson());
    
    // 只保留最近100条记录
    if (historyList.length > 100) {
      historyList.removeRange(0, historyList.length - 100);
    }
    
    await prefs.setString(_registrationHistoryKey, json.encode(historyList));
  }

  // 获取报名统计
  static Future<RegistrationStats> getRegistrationStats() async {
    final registeredEvents = await getRegisteredEvents();
    final history = await getRegistrationHistory();
    
    final totalRegistrations = history.where((h) => h.action == 'register').length;
    final totalCancellations = history.where((h) => h.action == 'unregister').length;
    
    return RegistrationStats(
      currentRegistrations: registeredEvents.length,
      totalRegistrations: totalRegistrations,
      totalCancellations: totalCancellations,
    );
  }
}

// 报名历史数据模型
class RegistrationHistory {
  final int eventId;
  final String action; // 'register' or 'unregister'
  final DateTime timestamp;

  RegistrationHistory({
    required this.eventId,
    required this.action,
    required this.timestamp,
  });

  factory RegistrationHistory.fromJson(Map<String, dynamic> json) {
    return RegistrationHistory(
      eventId: json['eventId'],
      action: json['action'],
      timestamp: DateTime.parse(json['timestamp']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'eventId': eventId,
      'action': action,
      'timestamp': timestamp.toIso8601String(),
    };
  }
}

// 报名统计数据模型
class RegistrationStats {
  final int currentRegistrations;
  final int totalRegistrations;
  final int totalCancellations;

  RegistrationStats({
    required this.currentRegistrations,
    required this.totalRegistrations,
    required this.totalCancellations,
  });
}
