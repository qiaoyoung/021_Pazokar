import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/cycling_event.dart';

class EventService {
  static Future<List<CyclingEvent>> loadEvents() async {
    try {
      // Load JSON from assets
      final String jsonString = await rootBundle.loadString('assets/event/cycling_events.json');
      final Map<String, dynamic> jsonData = json.decode(jsonString);
      
      // Parse events array
      final List<dynamic> eventsJson = jsonData['events'] ?? [];
      
      return eventsJson.map((eventJson) => CyclingEvent.fromJson(eventJson)).toList();
    } catch (e) {
      print('Error loading events: $e');
      return [];
    }
  }
  
  static Future<CyclingEvent?> getEventById(int id) async {
    final events = await loadEvents();
    try {
      return events.firstWhere((event) => event.id == id);
    } catch (e) {
      return null;
    }
  }
  
  static Future<List<CyclingEvent>> getEventsByDifficulty(String difficulty) async {
    final events = await loadEvents();
    return events.where((event) => 
      event.difficulty.toLowerCase() == difficulty.toLowerCase()
    ).toList();
  }
  
  static Future<List<CyclingEvent>> getFreeEvents() async {
    final events = await loadEvents();
    return events.where((event) => event.isFree).toList();
  }
  
  static Future<List<CyclingEvent>> getEventsByTag(String tag) async {
    final events = await loadEvents();
    return events.where((event) => 
      event.tags.any((eventTag) => eventTag.toLowerCase().contains(tag.toLowerCase()))
    ).toList();
  }
}
