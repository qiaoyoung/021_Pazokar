import 'package:flutter/material.dart';
import '../models/cycling_event.dart';
import '../theme/app_theme.dart';
import '../services/registration_service.dart';

class EventDetailScreen extends StatefulWidget {
  final CyclingEvent event;

  const EventDetailScreen({
    super.key,
    required this.event,
  });

  @override
  State<EventDetailScreen> createState() => _EventDetailScreenState();
}

class _EventDetailScreenState extends State<EventDetailScreen> {
  bool _isRegistered = false;
  bool _isLoading = true;
  bool _isRegistering = false;

  @override
  void initState() {
    super.initState();
    _checkRegistrationStatus();
  }

  Future<void> _checkRegistrationStatus() async {
    final isRegistered = await RegistrationService.isRegistered(widget.event.id);
    setState(() {
      _isRegistered = isRegistered;
      _isLoading = false;
    });
  }

  Future<void> _handleRegistration() async {
    if (_isRegistering) return;

    setState(() {
      _isRegistering = true;
    });

    try {
      if (_isRegistered) {
        // 取消报名
        await RegistrationService.unregister(widget.event.id);
        setState(() {
          _isRegistered = false;
        });
        _showSnackBar('Registration cancelled', Colors.orange);
      } else {
        // 报名
        await RegistrationService.register(widget.event.id);
        setState(() {
          _isRegistered = true;
        });
        _showSnackBar('Registration successful!', AppTheme.primaryColor);
      }
    } catch (e) {
      _showSnackBar('Operation failed, please try again', Colors.red);
    } finally {
      setState(() {
        _isRegistering = false;
      });
    }
  }

  void _showSnackBar(String message, Color color) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: color,
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // App Bar with Image
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            backgroundColor: AppTheme.primaryColor,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => Navigator.pop(context),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    widget.event.image,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              AppTheme.primaryColor.withOpacity(0.8),
                              AppTheme.primaryColor.withOpacity(0.6),
                            ],
                          ),
                        ),
                        child: const Icon(
                          Icons.directions_bike,
                          size: 80,
                          color: Colors.white,
                        ),
                      );
                    },
                  ),
                  // Gradient overlay
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.3),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Content
          SliverToBoxAdapter(
            child: Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title and Basic Info
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.event.title,
                          style: const TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF2C3E50),
                          ),
                        ),
                        const SizedBox(height: 12),
                        
                        // Date and Time
                        _buildInfoRow(
                          Icons.access_time,
                          '${widget.event.date} ${widget.event.time}',
                        ),
                        const SizedBox(height: 8),
                        
                        // Location
                        _buildInfoRow(
                          Icons.location_on,
                          '${widget.event.location}\n${widget.event.address}',
                        ),
                        const SizedBox(height: 8),
                        
                        // Distance and Difficulty
                        _buildInfoRow(
                          Icons.straighten,
                          '${widget.event.distance} • ${widget.event.difficulty}',
                        ),
                        const SizedBox(height: 8),
                        
                        // Participants
                        _buildInfoRow(
                          Icons.people,
                          '${widget.event.participants}/${widget.event.maxCapacity} participants',
                        ),
                      ],
                    ),
                  ),

                  const Divider(height: 1),

                  // Registration Fee and Deadline
                  if (widget.event.registrationFee.isNotEmpty || widget.event.registrationDeadline.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Registration Info',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF2C3E50),
                            ),
                          ),
                          const SizedBox(height: 12),
                          if (widget.event.registrationFee.isNotEmpty)
                            _buildInfoRow(
                              Icons.payment,
                              'Fee: ${widget.event.registrationFee}',
                            ),
                          if (widget.event.registrationDeadline.isNotEmpty)
                            const SizedBox(height: 8),
                          if (widget.event.registrationDeadline.isNotEmpty)
                            _buildInfoRow(
                              Icons.schedule,
                              'Deadline: ${widget.event.registrationDeadline}',
                            ),
                        ],
                      ),
                    ),

                  if (widget.event.registrationFee.isNotEmpty || widget.event.registrationDeadline.isNotEmpty)
                    const Divider(height: 1),

                  // Description
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Description',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF2C3E50),
                          ),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          widget.event.description,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Color(0xFF34495E),
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const Divider(height: 1),

                  // Route Highlights
                  if (widget.event.routeHighlights.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Route Highlights',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF2C3E50),
                            ),
                          ),
                          const SizedBox(height: 12),
                          ...widget.event.routeHighlights.map((highlight) => 
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(top: 8, right: 12),
                                    width: 6,
                                    height: 6,
                                    decoration: BoxDecoration(
                                      color: AppTheme.primaryColor,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      highlight,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFF34495E),
                                        height: 1.4,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                  if (widget.event.routeHighlights.isNotEmpty)
                    const Divider(height: 1),

                  // Requirements
                  if (widget.event.requirements.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Requirements',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF2C3E50),
                            ),
                          ),
                          const SizedBox(height: 12),
                          ...widget.event.requirements.map((requirement) => 
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Icon(
                                    Icons.check_circle_outline,
                                    size: 20,
                                    color: Color(0xFF7F8C8D),
                                  ),
                                  const SizedBox(width: 12),
                                  Expanded(
                                    child: Text(
                                      requirement,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFF34495E),
                                        height: 1.4,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                  if (widget.event.requirements.isNotEmpty)
                    const Divider(height: 1),

                  // Organizer Info
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Organizer Info',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF2C3E50),
                          ),
                        ),
                        const SizedBox(height: 12),
                        _buildInfoRow(
                          Icons.business,
                          widget.event.organizer,
                        ),
                        if (widget.event.contact.isNotEmpty)
                          const SizedBox(height: 8),
                        if (widget.event.contact.isNotEmpty)
                          _buildInfoRow(
                            Icons.email,
                            widget.event.contact,
                          ),
                        if (widget.event.phone.isNotEmpty)
                          const SizedBox(height: 8),
                        if (widget.event.phone.isNotEmpty)
                          _buildInfoRow(
                            Icons.phone,
                            widget.event.phone,
                          ),
                      ],
                    ),
                  ),

                  // Bottom spacing for floating button
                  const SizedBox(height: 100),
                ],
              ),
            ),
          ),
        ],
      ),
      
      // Registration Button
      floatingActionButton: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: FloatingActionButton.extended(
          onPressed: _isLoading ? null : _handleRegistration,
          backgroundColor: _isRegistered ? Colors.orange : AppTheme.primaryColor,
          foregroundColor: Colors.white,
          icon: _isRegistering
              ? const SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                  ),
                )
              : Icon(_isRegistered ? Icons.cancel : Icons.how_to_reg),
          label: Text(
            _isRegistering
                ? 'Processing...'
                : _isRegistered
                    ? 'Cancel Registration'
                    : 'Register Now',
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _buildInfoRow(IconData icon, String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          icon,
          size: 20,
          color: AppTheme.primaryColor,
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 16,
              color: Color(0xFF34495E),
              height: 1.4,
            ),
          ),
        ),
      ],
    );
  }
}
