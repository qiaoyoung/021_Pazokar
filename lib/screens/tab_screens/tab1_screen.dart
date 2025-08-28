import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../models/cycling_event.dart';
import '../../services/event_service.dart';
import '../../widgets/event_card.dart';

class Tab1Screen extends StatefulWidget {
  const Tab1Screen({super.key});

  @override
  State<Tab1Screen> createState() => _Tab1ScreenState();
}

class _Tab1ScreenState extends State<Tab1Screen> {
  List<CyclingEvent> _events = [];
  bool _isLoading = true;
  String _selectedFilter = 'All';
  
  final List<String> _filters = [
    'All',
    'Free',
    'Beginner',
    'Intermediate',
    'Advanced',
  ];

  @override
  void initState() {
    super.initState();
    _loadEvents();
  }

  Future<void> _loadEvents() async {
    setState(() {
      _isLoading = true;
    });
    
    try {
      final events = await EventService.loadEvents();
      setState(() {
        _events = events;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Failed to load events: $e'),
            backgroundColor: AppTheme.errorColor,
          ),
        );
      }
    }
  }

  List<CyclingEvent> get _filteredEvents {
    switch (_selectedFilter) {
      case 'Free':
        return _events.where((event) => event.isFree).toList();
      case 'Beginner':
      case 'Intermediate':
      case 'Advanced':
        return _events.where((event) => 
          event.difficulty == _selectedFilter
        ).toList();
      default:
        return _events;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/pazokar_all_bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // Header
              Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Cycling Events',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2C3E50),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Discover amazing cycling adventures',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF34495E),
                      ),
                    ),
                  ],
                ),
              ),
              
              // Filter Chips
              Container(
                height: 50,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _filters.length,
                  itemBuilder: (context, index) {
                    final filter = _filters[index];
                    final isSelected = _selectedFilter == filter;
                    
                    return Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: FilterChip(
                        label: Text(filter),
                        selected: isSelected,
                        onSelected: (selected) {
                          setState(() {
                            _selectedFilter = filter;
                          });
                        },
                        backgroundColor: Colors.white.withOpacity(0.9),
                        selectedColor: AppTheme.primaryColor,
                        labelStyle: TextStyle(
                          color: isSelected ? Colors.white : const Color(0xFF2C3E50),
                          fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
                        ),
                        side: BorderSide(
                          color: isSelected ? AppTheme.primaryColor : const Color(0xFFBDC3C7),
                        ),
                      ),
                    );
                  },
                ),
              ),
              
              const SizedBox(height: 16),
              
              // Events List
              Expanded(
                child: _isLoading
                    ? Center(
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(AppTheme.primaryColor),
                        ),
                      )
                    : _filteredEvents.isEmpty
                        ? Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.event_busy,
                                  size: 64,
                                  color: const Color(0xFF7F8C8D),
                                ),
                                const SizedBox(height: 16),
                                const Text(
                                  'No events found',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Color(0xFF2C3E50),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                const Text(
                                  'Try adjusting your filters',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF7F8C8D),
                                  ),
                                ),
                              ],
                            ),
                          )
                        : RefreshIndicator(
                            onRefresh: _loadEvents,
                            child: ListView.builder(
                              padding: const EdgeInsets.only(bottom: 100),
                              itemCount: _filteredEvents.length,
                              itemBuilder: (context, index) {
                                final event = _filteredEvents[index];
                                return EventCard(event: event);
                              },
                            ),
                          ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
