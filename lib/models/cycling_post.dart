

class CyclingPost {
  final String id;
  final PostUser user;
  final PostContent content;
  final DateTime timestamp;
  final int likes;
  final int comments;
  final int shares;
  final PostWeather weather;
  final PostEngagement engagement;

  CyclingPost({
    required this.id,
    required this.user,
    required this.content,
    required this.timestamp,
    required this.likes,
    required this.comments,
    required this.shares,
    required this.weather,
    required this.engagement,
  });

  factory CyclingPost.fromJson(Map<String, dynamic> json) {
    return CyclingPost(
      id: json['id'],
      user: PostUser.fromJson(json['user']),
      content: PostContent.fromJson(json['content']),
      timestamp: DateTime.parse(json['timestamp']),
      likes: json['likes'],
      comments: json['comments'],
      shares: json['shares'],
      weather: PostWeather.fromJson(json['weather']),
      engagement: PostEngagement.fromJson(json['engagement']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'user': user.toJson(),
      'content': content.toJson(),
      'timestamp': timestamp.toIso8601String(),
      'likes': likes,
      'comments': comments,
      'shares': shares,
      'weather': weather.toJson(),
      'engagement': engagement.toJson(),
    };
  }

  String get timeAgo {
    final now = DateTime.now();
    final difference = now.difference(timestamp);
    
    if (difference.inDays > 0) {
      return '${difference.inDays}d ago';
    } else if (difference.inHours > 0) {
      return '${difference.inHours}h ago';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes}m ago';
    } else {
      return 'Just now';
    }
  }

  bool get hasMultipleImages => content.images.length > 1;
  bool get hasRideData => content.rideData != null;
}

class PostUser {
  final String username;
  final String displayName;
  final String avatar;
  final String bio;
  final String location;
  final int followers;
  final int following;
  final int totalRides;
  final bool verified;
  final List<String>? sponsors;
  final List<String>? languages;
  final Map<String, dynamic>? additionalInfo;

  PostUser({
    required this.username,
    required this.displayName,
    required this.avatar,
    required this.bio,
    required this.location,
    required this.followers,
    required this.following,
    required this.totalRides,
    required this.verified,
    this.sponsors,
    this.languages,
    this.additionalInfo,
  });

  factory PostUser.fromJson(Map<String, dynamic> json) {
    return PostUser(
      username: json['username'],
      displayName: json['display_name'],
      avatar: json['avatar'],
      bio: json['bio'],
      location: json['location'],
      followers: json['followers'],
      following: json['following'],
      totalRides: json['total_rides'],
      verified: json['verified'] ?? false,
      sponsors: json['sponsors'] != null ? List<String>.from(json['sponsors']) : null,
      languages: json['languages'] != null ? List<String>.from(json['languages']) : null,
      additionalInfo: json['additionalInfo'] != null ? Map<String, dynamic>.from(json['additionalInfo']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'display_name': displayName,
      'avatar': avatar,
      'bio': bio,
      'location': location,
      'followers': followers,
      'following': following,
      'total_rides': totalRides,
      'verified': verified,
      'sponsors': sponsors,
      'languages': languages,
      'additionalInfo': additionalInfo,
    };
  }

  String get formattedFollowers {
    if (followers >= 1000000) {
      return '${(followers / 1000000).toStringAsFixed(1)}M';
    } else if (followers >= 1000) {
      return '${(followers / 1000).toStringAsFixed(1)}K';
    }
    return followers.toString();
  }
}

class PostContent {
  final String text;
  final PostLocation? location;
  final List<String> hashtags;
  final List<PostImage> images;
  final RideData? rideData;
  final Map<String, dynamic>? additionalData;

  PostContent({
    required this.text,
    this.location,
    required this.hashtags,
    required this.images,
    this.rideData,
    this.additionalData,
  });

  factory PostContent.fromJson(Map<String, dynamic> json) {
    return PostContent(
      text: json['text'],
      location: json['location'] != null ? PostLocation.fromJson(json['location']) : null,
      hashtags: List<String>.from(json['hashtags']),
      images: (json['images'] as List).map((img) => PostImage.fromJson(img)).toList(),
      rideData: json['ride_data'] != null ? RideData.fromJson(json['ride_data']) : null,
      additionalData: json['additionalData'] != null ? Map<String, dynamic>.from(json['additionalData']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'location': location?.toJson(),
      'hashtags': hashtags,
      'images': images.map((img) => img.toJson()).toList(),
      'ride_data': rideData?.toJson(),
      'additionalData': additionalData,
    };
  }
}

class PostLocation {
  final String name;
  final String? city;
  final String? state;
  final String? region;
  final String? country;
  final Map<String, double>? coordinates;
  final Map<String, dynamic>? additionalInfo;

  PostLocation({
    required this.name,
    this.city,
    this.state,
    this.region,
    this.country,
    this.coordinates,
    this.additionalInfo,
  });

  factory PostLocation.fromJson(Map<String, dynamic> json) {
    return PostLocation(
      name: json['name'],
      city: json['city'],
      state: json['state'],
      region: json['region'],
      country: json['country'],
      coordinates: json['coordinates'] != null ? Map<String, double>.from(json['coordinates']) : null,
      additionalInfo: json['additionalInfo'] != null ? Map<String, dynamic>.from(json['additionalInfo']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'city': city,
      'state': state,
      'region': region,
      'country': country,
      'coordinates': coordinates,
      'additionalInfo': additionalInfo,
    };
  }

  String get displayName {
    final parts = <String>[];
    if (name.isNotEmpty) parts.add(name);
    if (city != null && city!.isNotEmpty) parts.add(city!);
    if (country != null && country!.isNotEmpty) parts.add(country!);
    return parts.join(', ');
  }
}

class PostImage {
  final String url;
  final String? caption;
  final String? altText;
  final Map<String, dynamic>? metadata;

  PostImage({
    required this.url,
    this.caption,
    this.altText,
    this.metadata,
  });

  factory PostImage.fromJson(Map<String, dynamic> json) {
    return PostImage(
      url: json['url'],
      caption: json['caption'],
      altText: json['alt_text'],
      metadata: json['metadata'] != null ? Map<String, dynamic>.from(json['metadata']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'caption': caption,
      'alt_text': altText,
      'metadata': metadata,
    };
  }
}

class RideData {
  final String distance;
  final String duration;
  final String avgSpeed;
  final String? maxSpeed;
  final String elevationGain;
  final String? elevationLoss;
  final int caloriesBurned;
  final String routeType;
  final String? difficulty;
  final String? surface;
  final Map<String, dynamic>? additionalMetrics;

  RideData({
    required this.distance,
    required this.duration,
    required this.avgSpeed,
    this.maxSpeed,
    required this.elevationGain,
    this.elevationLoss,
    required this.caloriesBurned,
    required this.routeType,
    this.difficulty,
    this.surface,
    this.additionalMetrics,
  });

  factory RideData.fromJson(Map<String, dynamic> json) {
    return RideData(
      distance: json['distance'],
      duration: json['duration'],
      avgSpeed: json['avg_speed'],
      maxSpeed: json['max_speed'],
      elevationGain: json['elevation_gain'],
      elevationLoss: json['elevation_loss'],
      caloriesBurned: json['calories_burned'],
      routeType: json['route_type'],
      difficulty: json['difficulty'],
      surface: json['surface'],
      additionalMetrics: json['additionalMetrics'] != null ? Map<String, dynamic>.from(json['additionalMetrics']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'distance': distance,
      'duration': duration,
      'avg_speed': avgSpeed,
      'max_speed': maxSpeed,
      'elevation_gain': elevationGain,
      'elevation_loss': elevationLoss,
      'calories_burned': caloriesBurned,
      'route_type': routeType,
      'difficulty': difficulty,
      'surface': surface,
      'additionalMetrics': additionalMetrics,
    };
  }
}

class PostWeather {
  final String temperature;
  final String condition;
  final String windSpeed;
  final String? humidity;
  final String? sunsetTime;

  PostWeather({
    required this.temperature,
    required this.condition,
    required this.windSpeed,
    this.humidity,
    this.sunsetTime,
  });

  factory PostWeather.fromJson(Map<String, dynamic> json) {
    return PostWeather(
      temperature: json['temperature'],
      condition: json['condition'],
      windSpeed: json['wind_speed'],
      humidity: json['humidity'],
      sunsetTime: json['sunset_time'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'temperature': temperature,
      'condition': condition,
      'wind_speed': windSpeed,
      'humidity': humidity,
      'sunset_time': sunsetTime,
    };
  }
}

class PostEngagement {
  final List<String> likeUsers;
  final List<PostComment> topComments;

  PostEngagement({
    required this.likeUsers,
    required this.topComments,
  });

  factory PostEngagement.fromJson(Map<String, dynamic> json) {
    return PostEngagement(
      likeUsers: List<String>.from(json['like_users']),
      topComments: (json['top_comments'] as List).map((comment) => PostComment.fromJson(comment)).toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'like_users': likeUsers,
      'top_comments': topComments.map((comment) => comment.toJson()).toList(),
    };
  }
}

class PostComment {
  final String user;
  final String text;
  final int likes;

  PostComment({
    required this.user,
    required this.text,
    required this.likes,
  });

  factory PostComment.fromJson(Map<String, dynamic> json) {
    return PostComment(
      user: json['user'],
      text: json['text'],
      likes: json['likes'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'user': user,
      'text': text,
      'likes': likes,
    };
  }
}
