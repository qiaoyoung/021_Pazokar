import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class RecordRideScreen extends StatefulWidget {
  const RecordRideScreen({super.key});

  @override
  State<RecordRideScreen> createState() => _RecordRideScreenState();
}

class _RecordRideScreenState extends State<RecordRideScreen> {
  bool _isRecording = false;
  bool _isPaused = false;
  int _elapsedSeconds = 0;
  double _distance = 0.0;
  double _currentSpeed = 0.0;
  double _maxSpeed = 0.0;
  double _averageSpeed = 0.0;
  double _elevation = 0.0;
  
  @override
  void initState() {
    super.initState();
    _startTimer();
  }
  
  @override
  void dispose() {
    super.dispose();
  }
  
  void _startTimer() {
    // TODO: Implement actual timer logic
  }
  
  void _toggleRecording() {
    setState(() {
      if (!_isRecording) {
        _isRecording = true;
        _isPaused = false;
        // TODO: Start GPS tracking
      } else if (_isPaused) {
        _isPaused = false;
        // TODO: Resume tracking
      } else {
        _isPaused = true;
        // TODO: Pause tracking
      }
    });
  }
  
  void _stopRecording() {
    setState(() {
      _isRecording = false;
      _isPaused = false;
      // TODO: Stop tracking and save ride
    });
  }
  
  String _formatTime(int seconds) {
    final hours = seconds ~/ 3600;
    final minutes = (seconds % 3600) ~/ 60;
    final secs = seconds % 60;
    
    if (hours > 0) {
      return '${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}:${secs.toString().padLeft(2, '0')}';
    } else {
      return '${minutes.toString().padLeft(2, '0')}:${secs.toString().padLeft(2, '0')}';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      appBar: AppBar(
        title: const Text(
          'Record Ride',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: AppTheme.primaryColor,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings, color: Colors.white),
            onPressed: () {
              // TODO: Open settings
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Map Placeholder
          Container(
            height: 200,
            margin: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.map,
                    size: 48,
                    color: Colors.grey,
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Map View',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
          
          // Main Stats
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 10,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              children: [
                // Time Display
                Text(
                  _formatTime(_elapsedSeconds),
                  style: Theme.of(context).textTheme.displayLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: AppTheme.primaryColor,
                    fontSize: 48,
                  ),
                ),
                
                const SizedBox(height: 20),
                
                // Stats Grid
                Row(
                  children: [
                    Expanded(
                      child: _buildStatItem(
                        'Distance',
                        '${_distance.toStringAsFixed(1)} km',
                        Icons.straighten,
                        AppTheme.primaryColor,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: _buildStatItem(
                        'Current Speed',
                        '${_currentSpeed.toStringAsFixed(1)} km/h',
                        Icons.speed,
                        AppTheme.infoColor,
                      ),
                    ),
                  ],
                ),
                
                const SizedBox(height: 16),
                
                Row(
                  children: [
                    Expanded(
                      child: _buildStatItem(
                        'Max Speed',
                        '${_maxSpeed.toStringAsFixed(1)} km/h',
                        Icons.trending_up,
                        AppTheme.warningColor,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: _buildStatItem(
                        'Elevation',
                        '${_elevation.toStringAsFixed(0)} m',
                        Icons.terrain,
                        AppTheme.successColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          
          const SizedBox(height: 24),
          
          // Control Buttons
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                if (_isRecording) ...[
                  Expanded(
                    child: ElevatedButton(
                      onPressed: _stopRecording,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppTheme.errorColor,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text(
                        'Stop',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                ],
                Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    onPressed: _toggleRecording,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: _isRecording 
                          ? (_isPaused ? AppTheme.warningColor : AppTheme.primaryColor)
                          : AppTheme.primaryColor,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      _isRecording 
                          ? (_isPaused ? 'Resume' : 'Pause')
                          : 'Start Ride',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          
          const SizedBox(height: 24),
          
          // Quick Actions
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 10,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Quick Actions',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: AppTheme.textPrimaryColor,
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: _buildQuickActionButton(
                        'Take Photo',
                        Icons.camera_alt,
                        AppTheme.infoColor,
                        () {
                          // TODO: Take photo
                        },
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: _buildQuickActionButton(
                        'Add Note',
                        Icons.note_add,
                        AppTheme.warningColor,
                        () {
                          // TODO: Add note
                        },
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: _buildQuickActionButton(
                        'Weather',
                        Icons.wb_sunny,
                        AppTheme.successColor,
                        () {
                          // TODO: Set weather
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          
          const Spacer(),
          
          // Ride Type Selector
          Container(
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 10,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ride Type',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: AppTheme.textPrimaryColor,
                  ),
                ),
                const SizedBox(height: 12),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _buildRideTypeChip('Road', Icons.directions_bike, AppTheme.primaryColor),
                      const SizedBox(width: 8),
                      _buildRideTypeChip('Mountain', Icons.landscape, AppTheme.warningColor),
                      const SizedBox(width: 8),
                      _buildRideTypeChip('Gravel', Icons.terrain, AppTheme.infoColor),
                      const SizedBox(width: 8),
                      _buildRideTypeChip('City', Icons.location_city, AppTheme.successColor),
                      const SizedBox(width: 8),
                      _buildRideTypeChip('Touring', Icons.explore, AppTheme.secondaryColor),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatItem(
    String label,
    String value,
    IconData icon,
    Color color,
  ) {
    return Column(
      children: [
        Icon(
          icon,
          color: color,
          size: 24,
        ),
        const SizedBox(height: 8),
        Text(
          value,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: AppTheme.textPrimaryColor,
          ),
        ),
        Text(
          label,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
            color: AppTheme.textSecondaryColor,
          ),
        ),
      ],
    );
  }

  Widget _buildQuickActionButton(
    String label,
    IconData icon,
    Color color,
    VoidCallback onPressed,
  ) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: color),
        foregroundColor: color,
        padding: const EdgeInsets.symmetric(vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Column(
        children: [
          Icon(icon, size: 20),
          const SizedBox(height: 4),
          Text(
            label,
            style: const TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }

  Widget _buildRideTypeChip(
    String label,
    IconData icon,
    Color color,
  ) {
    return FilterChip(
      label: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 16, color: color),
          const SizedBox(width: 4),
          Text(label),
        ],
      ),
      selected: false,
      onSelected: (selected) {
        // TODO: Set ride type
      },
      backgroundColor: Colors.white,
      selectedColor: color.withOpacity(0.2),
      side: BorderSide(color: color),
      labelStyle: TextStyle(color: color),
    );
  }
}
