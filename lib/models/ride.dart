import 'location.dart';

enum RideType {
  road,
  mountain,
  gravel,
  city,
  touring,
  other,
}

enum WeatherCondition {
  sunny,
  cloudy,
  rainy,
  windy,
  snowy,
  foggy,
}

class Ride {
  final String id;
  final String userId;
  final String title;
  final String? description;
  final DateTime startTime;
  final DateTime? endTime;
  final double distance;
  final int duration;
  final double averageSpeed;
  final double maxSpeed;
  final double elevationGain;
  final double elevationLoss;
  final RideType rideType;
  final WeatherCondition? weatherCondition;
  final double? temperature;
  final List<LatLng> route;
  final List<String> images;
  final Map<String, dynamic> metrics;
  final bool isPublic;
  final DateTime createdAt;
  final DateTime updatedAt;

  Ride({
    required this.id,
    required this.userId,
    required this.title,
    this.description,
    required this.startTime,
    this.endTime,
    required this.distance,
    required this.duration,
    required this.averageSpeed,
    required this.maxSpeed,
    required this.elevationGain,
    required this.elevationLoss,
    required this.rideType,
    this.weatherCondition,
    this.temperature,
    required this.route,
    this.images = const [],
    this.metrics = const {},
    this.isPublic = true,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Ride.fromJson(Map<String, dynamic> json) {
    return Ride(
      id: json['id'] as String,
      userId: json['userId'] as String,
      title: json['title'] as String,
      description: json['description'] as String?,
      startTime: DateTime.parse(json['startTime'] as String),
      endTime: json['endTime'] != null 
          ? DateTime.parse(json['endTime'] as String) 
          : null,
      distance: (json['distance'] as num).toDouble(),
      duration: json['duration'] as int,
      averageSpeed: (json['averageSpeed'] as num).toDouble(),
      maxSpeed: (json['maxSpeed'] as num).toDouble(),
      elevationGain: (json['elevationGain'] as num).toDouble(),
      elevationLoss: (json['elevationLoss'] as num).toDouble(),
      rideType: RideType.values.firstWhere(
        (e) => e.toString().split('.').last == json['rideType'],
        orElse: () => RideType.road,
      ),
      weatherCondition: json['weatherCondition'] != null
          ? WeatherCondition.values.firstWhere(
              (e) => e.toString().split('.').last == json['weatherCondition'],
              orElse: () => WeatherCondition.sunny,
            )
          : null,
      temperature: json['temperature'] != null 
          ? (json['temperature'] as num).toDouble() 
          : null,
      route: (json['route'] as List<dynamic>)
          .map((point) => LatLng(
                (point['lat'] as num).toDouble(),
                (point['lng'] as num).toDouble(),
              ))
          .toList(),
      images: List<String>.from(json['images'] ?? []),
      metrics: Map<String, dynamic>.from(json['metrics'] ?? {}),
      isPublic: json['isPublic'] as bool? ?? true,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userId': userId,
      'title': title,
      'description': description,
      'startTime': startTime.toIso8601String(),
      'endTime': endTime?.toIso8601String(),
      'distance': distance,
      'duration': duration,
      'averageSpeed': averageSpeed,
      'maxSpeed': maxSpeed,
      'elevationGain': elevationGain,
      'elevationLoss': elevationLoss,
      'rideType': rideType.toString().split('.').last,
      'weatherCondition': weatherCondition?.toString().split('.').last,
      'temperature': temperature,
      'route': route.map((point) => {
        'lat': point.latitude,
        'lng': point.longitude,
      }).toList(),
      'images': images,
      'metrics': metrics,
      'isPublic': isPublic,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }

  Ride copyWith({
    String? id,
    String? userId,
    String? title,
    String? description,
    DateTime? startTime,
    DateTime? endTime,
    double? distance,
    int? duration,
    double? averageSpeed,
    double? maxSpeed,
    double? elevationGain,
    double? elevationLoss,
    RideType? rideType,
    WeatherCondition? weatherCondition,
    double? temperature,
    List<LatLng>? route,
    List<String>? images,
    Map<String, dynamic>? metrics,
    bool? isPublic,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Ride(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      title: title ?? this.title,
      description: description ?? this.description,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      distance: distance ?? this.distance,
      duration: duration ?? this.duration,
      averageSpeed: averageSpeed ?? this.averageSpeed,
      maxSpeed: maxSpeed ?? this.maxSpeed,
      elevationGain: elevationGain ?? this.elevationGain,
      elevationLoss: elevationLoss ?? this.elevationLoss,
      rideType: rideType ?? this.rideType,
      weatherCondition: weatherCondition ?? this.weatherCondition,
      temperature: temperature ?? this.temperature,
      route: route ?? this.route,
      images: images ?? this.images,
      metrics: metrics ?? this.metrics,
      isPublic: isPublic ?? this.isPublic,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  String get formattedDuration {
    final hours = duration ~/ 3600;
    final minutes = (duration % 3600) ~/ 60;
    final seconds = duration % 60;
    
    if (hours > 0) {
      return '${hours}h ${minutes}m ${seconds}s';
    } else if (minutes > 0) {
      return '${minutes}m ${seconds}s';
    } else {
      return '${seconds}s';
    }
  }

  String get formattedDistance {
    if (distance >= 1000) {
      return '${(distance / 1000).toStringAsFixed(1)} km';
    } else {
      return '${distance.toStringAsFixed(0)} m';
    }
  }

  String get formattedAverageSpeed {
    return '${averageSpeed.toStringAsFixed(1)} km/h';
  }

  String get formattedMaxSpeed {
    return '${maxSpeed.toStringAsFixed(1)} km/h';
  }

  @override
  String toString() {
    return 'Ride(id: $id, title: $title, distance: $distance km, duration: $formattedDuration)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Ride && other.id == id;
  }

  @override
  int get hashCode => id.hashCode;
}
