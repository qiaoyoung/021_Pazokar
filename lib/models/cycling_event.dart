import 'package:flutter/material.dart';

class CyclingEvent {
  final int id;
  final String title;
  final String description;
  final String image;
  final String date;
  final String time;
  final String duration;
  final String location;
  final String address;
  final String organizer;
  final String organizerWebsite;
  final int participants;
  final int maxCapacity;
  final String distance;
  final String difficulty;
  final String elevationGain;
  final String registrationFee;
  final String registrationDeadline;
  final String contact;
  final String phone;
  final List<String> tags;
  final List<String> routeHighlights;
  final List<String> amenities;
  final List<String> requirements;
  final String weatherBackup;
  final Map<String, String> socialMedia;
  final List<String> prizes;
  final List<String> sponsors;

  CyclingEvent({
    required this.id,
    required this.title,
    required this.description,
    required this.image,
    required this.date,
    required this.time,
    required this.duration,
    required this.location,
    required this.address,
    required this.organizer,
    required this.organizerWebsite,
    required this.participants,
    required this.maxCapacity,
    required this.distance,
    required this.difficulty,
    required this.elevationGain,
    required this.registrationFee,
    required this.registrationDeadline,
    required this.contact,
    required this.phone,
    required this.tags,
    required this.routeHighlights,
    required this.amenities,
    required this.requirements,
    required this.weatherBackup,
    required this.socialMedia,
    required this.prizes,
    required this.sponsors,
  });

  factory CyclingEvent.fromJson(Map<String, dynamic> json) {
    return CyclingEvent(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      image: json['image'] as String,
      date: json['date'] as String,
      time: json['time'] as String,
      duration: json['duration'] as String,
      location: json['location'] as String,
      address: json['address'] as String,
      organizer: json['organizer'] as String,
      organizerWebsite: json['organizer_website'] as String,
      participants: json['participants'] as int,
      maxCapacity: json['max_capacity'] as int,
      distance: json['distance'] as String,
      difficulty: json['difficulty'] as String,
      elevationGain: json['elevation_gain'] as String,
      registrationFee: json['registration_fee'] as String,
      registrationDeadline: json['registration_deadline'] as String,
      contact: json['contact'] as String,
      phone: json['phone'] as String,
      tags: List<String>.from(json['tags'] ?? []),
      routeHighlights: List<String>.from(json['route_highlights'] ?? []),
      amenities: List<String>.from(json['amenities'] ?? []),
      requirements: List<String>.from(json['requirements'] ?? []),
      weatherBackup: json['weather_backup'] as String,
      socialMedia: Map<String, String>.from(json['social_media'] ?? {}),
      prizes: List<String>.from(json['prizes'] ?? []),
      sponsors: List<String>.from(json['sponsors'] ?? []),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'image': image,
      'date': date,
      'time': time,
      'duration': duration,
      'location': location,
      'address': address,
      'organizer': organizer,
      'organizer_website': organizerWebsite,
      'participants': participants,
      'max_capacity': maxCapacity,
      'distance': distance,
      'difficulty': difficulty,
      'elevation_gain': elevationGain,
      'registration_fee': registrationFee,
      'registration_deadline': registrationDeadline,
      'contact': contact,
      'phone': phone,
      'tags': tags,
      'route_highlights': routeHighlights,
      'amenities': amenities,
      'requirements': requirements,
      'weather_backup': weatherBackup,
      'social_media': socialMedia,
      'prizes': prizes,
      'sponsors': sponsors,
    };
  }

  // 格式化日期显示
  String get formattedDate {
    try {
      final dateTime = DateTime.parse(date);
      final months = [
        'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
        'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
      ];
      return '${months[dateTime.month - 1]} ${dateTime.day}';
    } catch (e) {
      return date;
    }
  }

  // 获取难度颜色
  Color get difficultyColor {
    switch (difficulty.toLowerCase()) {
      case 'beginner':
        return const Color(0xFF27AE60); // Green
      case 'intermediate':
        return const Color(0xFFF39C12); // Orange
      case 'advanced':
        return const Color(0xFFE74C3C); // Red
      default:
        return const Color(0xFF7F8C8D); // Gray
    }
  }

  // 获取参与率
  double get participationRate {
    return participants / maxCapacity;
  }

  // 是否免费
  bool get isFree {
    return registrationFee.toLowerCase() == 'free';
  }
}
