import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/chat_message.dart';

class ChatService {
  static const String _chatMessagesKey = 'chat_messages_';

  // 获取与特定用户的聊天记录
  static Future<List<ChatMessage>> getChatMessages(String userId) async {
    final prefs = await SharedPreferences.getInstance();
    final messagesJson = prefs.getString('$_chatMessagesKey$userId');
    
    if (messagesJson != null) {
      final List<dynamic> messagesList = json.decode(messagesJson);
      return messagesList.map((json) => ChatMessage.fromJson(json)).toList();
    }
    return [];
  }

  // 发送消息
  static Future<void> sendMessage(String userId, String content, {
    required String senderId,
    required String senderName,
    required String senderAvatar,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    final messages = await getChatMessages(userId);
    
    final newMessage = ChatMessage(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      senderId: senderId,
      senderName: senderName,
      senderAvatar: senderAvatar,
      content: content,
      timestamp: DateTime.now(),
      isFromCurrentUser: true,
    );
    
    messages.add(newMessage);
    
    // 保存到本地存储
    final messagesJson = json.encode(messages.map((msg) => msg.toJson()).toList());
    await prefs.setString('$_chatMessagesKey$userId', messagesJson);
  }

  // 接收消息（模拟其他用户发送的消息）
  static Future<void> receiveMessage(String userId, String content, {
    required String senderId,
    required String senderName,
    required String senderAvatar,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    final messages = await getChatMessages(userId);
    
    final newMessage = ChatMessage(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      senderId: senderId,
      senderName: senderName,
      senderAvatar: senderAvatar,
      content: content,
      timestamp: DateTime.now(),
      isFromCurrentUser: false,
    );
    
    messages.add(newMessage);
    
    // 保存到本地存储
    final messagesJson = json.encode(messages.map((msg) => msg.toJson()).toList());
    await prefs.setString('$_chatMessagesKey$userId', messagesJson);
  }

  // 清除聊天记录
  static Future<void> clearChatHistory(String userId) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('$_chatMessagesKey$userId');
  }

  // 获取所有聊天用户列表
  static Future<List<String>> getChatUsers() async {
    final prefs = await SharedPreferences.getInstance();
    final keys = prefs.getKeys();
    final chatUsers = <String>[];
    
    for (final key in keys) {
      if (key.startsWith(_chatMessagesKey)) {
        final userId = key.substring(_chatMessagesKey.length);
        chatUsers.add(userId);
      }
    }
    
    return chatUsers;
  }

  // 获取最后一条消息
  static Future<ChatMessage?> getLastMessage(String userId) async {
    final messages = await getChatMessages(userId);
    if (messages.isNotEmpty) {
      return messages.last;
    }
    return null;
  }

  // 获取未读消息数量（这里简化处理，实际应用中需要更复杂的逻辑）
  static Future<int> getUnreadMessageCount(String userId) async {
    // 简化实现，实际应用中需要跟踪已读状态
    return 0;
  }
}
