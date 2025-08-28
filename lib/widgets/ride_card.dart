import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../models/ride.dart';

class RideCard extends StatelessWidget {
  final Ride ride;

  const RideCard({
    super.key,
    required this.ride,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        onTap: () {
          // TODO: Navigate to ride details
        },
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: _getRideTypeColor(ride.rideType).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      _getRideTypeName(ride.rideType),
                      style: TextStyle(
                        color: _getRideTypeColor(ride.rideType),
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Text(
                    _formatDate(ride.startTime),
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: AppTheme.textSecondaryColor,
                    ),
                  ),
                ],
              ),
              
              const SizedBox(height: 12),
              
              // Title and Description
              Text(
                ride.title,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppTheme.textPrimaryColor,
                ),
              ),
              
              if (ride.description != null) ...[
                const SizedBox(height: 4),
                Text(
                  ride.description!,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: AppTheme.textSecondaryColor,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
              
              const SizedBox(height: 16),
              
              // Stats Row
              Row(
                children: [
                  _buildStatItem(
                    context,
                    Icons.straighten,
                    ride.formattedDistance,
                    'Distance',
                  ),
                  const SizedBox(width: 24),
                  _buildStatItem(
                    context,
                    Icons.timer,
                    ride.formattedDuration,
                    'Duration',
                  ),
                  const SizedBox(width: 24),
                  _buildStatItem(
                    context,
                    Icons.speed,
                    ride.formattedAverageSpeed,
                    'Avg Speed',
                  ),
                ],
              ),
              
              const SizedBox(height: 12),
              
              // Additional Info
              Row(
                children: [
                  if (ride.weatherCondition != null) ...[
                    Icon(
                      _getWeatherIcon(ride.weatherCondition!),
                      size: 16,
                      color: AppTheme.textSecondaryColor,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      _getWeatherName(ride.weatherCondition!),
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppTheme.textSecondaryColor,
                      ),
                    ),
                    const SizedBox(width: 16),
                  ],
                  if (ride.temperature != null) ...[
                    Icon(
                      Icons.thermostat,
                      size: 16,
                      color: AppTheme.textSecondaryColor,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      '${ride.temperature!.toStringAsFixed(1)}°C',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppTheme.textSecondaryColor,
                      ),
                    ),
                  ],
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatItem(
    BuildContext context,
    IconData icon,
    String value,
    String label,
  ) {
    return Expanded(
      child: Row(
        children: [
          Icon(
            icon,
            size: 16,
            color: AppTheme.primaryColor,
          ),
          const SizedBox(width: 4),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  value,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w600,
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
            ),
          ),
        ],
      ),
    );
  }

  Color _getRideTypeColor(RideType rideType) {
    switch (rideType) {
      case RideType.road:
        return AppTheme.primaryColor;
      case RideType.mountain:
        return AppTheme.warningColor;
      case RideType.gravel:
        return AppTheme.infoColor;
      case RideType.city:
        return AppTheme.successColor;
      case RideType.touring:
        return AppTheme.secondaryColor;
      case RideType.other:
        return AppTheme.textSecondaryColor;
    }
  }

  String _getRideTypeName(RideType rideType) {
    switch (rideType) {
      case RideType.road:
        return 'Road';
      case RideType.mountain:
        return 'Mountain';
      case RideType.gravel:
        return 'Gravel';
      case RideType.city:
        return 'City';
      case RideType.touring:
        return 'Touring';
      case RideType.other:
        return 'Other';
    }
  }

  IconData _getWeatherIcon(WeatherCondition weather) {
    switch (weather) {
      case WeatherCondition.sunny:
        return Icons.wb_sunny;
      case WeatherCondition.cloudy:
        return Icons.cloud;
      case WeatherCondition.rainy:
        return Icons.water_drop;
      case WeatherCondition.windy:
        return Icons.air;
      case WeatherCondition.snowy:
        return Icons.ac_unit;
      case WeatherCondition.foggy:
        return Icons.cloud_queue;
    }
  }

  String _getWeatherName(WeatherCondition weather) {
    switch (weather) {
      case WeatherCondition.sunny:
        return 'Sunny';
      case WeatherCondition.cloudy:
        return 'Cloudy';
      case WeatherCondition.rainy:
        return 'Rainy';
      case WeatherCondition.windy:
        return 'Windy';
      case WeatherCondition.snowy:
        return 'Snowy';
      case WeatherCondition.foggy:
        return 'Foggy';
    }
  }

  String _formatDate(DateTime date) {
    final now = DateTime.now();
    final difference = now.difference(date).inDays;
    
    if (difference == 0) {
      return 'Today';
    } else if (difference == 1) {
      return 'Yesterday';
    } else if (difference < 7) {
      return '$difference days ago';
    } else {
      return '${date.day}/${date.month}/${date.year}';
    }
  }
}
