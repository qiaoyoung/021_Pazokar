class User {
  final String id;
  final String username;
  final String email;
  final String? profileImageUrl;
  final String? bio;
  final String? location;
  final DateTime joinDate;
  final int totalRides;
  final double totalDistance;
  final int totalTime;
  final List<String> achievements;
  final Map<String, dynamic> preferences;

  User({
    required this.id,
    required this.username,
    required this.email,
    this.profileImageUrl,
    this.bio,
    this.location,
    required this.joinDate,
    this.totalRides = 0,
    this.totalDistance = 0.0,
    this.totalTime = 0,
    this.achievements = const [],
    this.preferences = const {},
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      profileImageUrl: json['profileImageUrl'] as String?,
      bio: json['bio'] as String?,
      location: json['location'] as String?,
      joinDate: DateTime.parse(json['joinDate'] as String),
      totalRides: json['totalRides'] as int? ?? 0,
      totalDistance: (json['totalDistance'] as num?)?.toDouble() ?? 0.0,
      totalTime: json['totalTime'] as int? ?? 0,
      achievements: List<String>.from(json['achievements'] ?? []),
      preferences: Map<String, dynamic>.from(json['preferences'] ?? {}),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'username': username,
      'email': email,
      'profileImageUrl': profileImageUrl,
      'bio': bio,
      'location': location,
      'joinDate': joinDate.toIso8601String(),
      'totalRides': totalRides,
      'totalDistance': totalDistance,
      'totalTime': totalTime,
      'achievements': achievements,
      'preferences': preferences,
    };
  }

  User copyWith({
    String? id,
    String? username,
    String? email,
    String? profileImageUrl,
    String? bio,
    String? location,
    DateTime? joinDate,
    int? totalRides,
    double? totalDistance,
    int? totalTime,
    List<String>? achievements,
    Map<String, dynamic>? preferences,
  }) {
    return User(
      id: id ?? this.id,
      username: username ?? this.username,
      email: email ?? this.email,
      profileImageUrl: profileImageUrl ?? this.profileImageUrl,
      bio: bio ?? this.bio,
      location: location ?? this.location,
      joinDate: joinDate ?? this.joinDate,
      totalRides: totalRides ?? this.totalRides,
      totalDistance: totalDistance ?? this.totalDistance,
      totalTime: totalTime ?? this.totalTime,
      achievements: achievements ?? this.achievements,
      preferences: preferences ?? this.preferences,
    );
  }

  @override
  String toString() {
    return 'User(id: $id, username: $username, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is User && other.id == id;
  }

  @override
  int get hashCode => id.hashCode;
}
