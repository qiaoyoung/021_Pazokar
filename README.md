# Pazokar - Outdoor Cycling Daily Sharing App

Pazokar is a comprehensive cycling app designed for outdoor cycling enthusiasts to track their rides, explore routes, and connect with the cycling community.

## Features

### 🏠 Home Screen
- Welcome section with personalized greeting
- Weekly statistics overview (distance, time, rides, average speed)
- Recent rides display with detailed information
- Quick access to start a new ride

### 🗺️ Explore Screen
- Featured routes with difficulty levels and descriptions
- Popular routes grid with filtering options
- Nearby riders discovery
- Route categories: Road, Mountain, Gravel, City, Touring

### 📱 Record Ride Screen
- Real-time ride tracking with GPS
- Live statistics (distance, speed, elevation, time)
- Ride type selection
- Quick actions (take photo, add notes, set weather)
- Start, pause, and stop functionality

### 👥 Community Screen
- Social feed with ride posts and interactions
- Challenges and achievements system
- Cycling groups and communities
- Events and group rides

### 👤 Profile Screen
- User statistics and achievements
- Recent activity timeline
- Weekly and monthly goals tracking
- App settings and preferences

## App Structure

```
lib/
├── main.dart                 # App entry point
├── theme/
│   └── app_theme.dart        # App theme configuration
├── models/
│   ├── user.dart            # User data model
│   ├── ride.dart            # Ride data model
│   └── location.dart        # Location utilities
├── screens/
│   ├── main_navigation.dart # Main navigation with bottom tabs
│   ├── home_screen.dart     # Home screen
│   ├── explore_screen.dart  # Explore screen
│   ├── record_ride_screen.dart # Record ride screen
│   ├── community_screen.dart # Community screen
│   └── profile_screen.dart  # Profile screen
└── widgets/
    ├── stats_card.dart      # Statistics display widget
    └── ride_card.dart       # Ride information widget
```

## Design System

### Color Palette
- **Primary Color**: #02D8C9 (Teal)
- **Secondary Color**: #2C3E50 (Dark Blue)
- **Success Color**: #27AE60 (Green)
- **Warning Color**: #F39C12 (Orange)
- **Error Color**: #E74C3C (Red)
- **Info Color**: #3498DB (Blue)

### Typography
- Modern, clean typography with proper hierarchy
- Consistent font weights and sizes
- Readable text colors for accessibility

## Getting Started

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd pazokar
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   flutter run
   ```

## Dependencies

- **geolocator**: GPS location tracking
- **google_maps_flutter**: Map integration
- **provider**: State management
- **http**: API communication
- **shared_preferences**: Local data storage
- **image_picker**: Photo capture
- **intl**: Date and time formatting

## Platform Support

- ✅ iOS
- ✅ Android
- ✅ Web (basic support)
- ✅ Desktop (basic support)

## Future Enhancements

- [ ] Real-time GPS tracking with route mapping
- [ ] Social features (likes, comments, sharing)
- [ ] Advanced analytics and insights
- [ ] Integration with fitness devices
- [ ] Weather integration
- [ ] Route planning and navigation
- [ ] Achievement system with badges
- [ ] Group ride coordination
- [ ] Offline mode support
- [ ] Dark theme support

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests if applicable
5. Submit a pull request

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Contact

For questions or support, please contact the development team.

---

**Pazokar** - Where every ride tells a story 🚴‍♂️
