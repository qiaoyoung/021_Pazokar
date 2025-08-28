import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      appBar: AppBar(
        title: const Text(
          'Privacy Policy',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: AppTheme.primaryColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppTheme.primaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: AppTheme.primaryColor.withOpacity(0.2),
                ),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.privacy_tip_outlined,
                    color: AppTheme.primaryColor,
                    size: 24,
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      'Your privacy is important to us. This policy explains how we handle your data.',
                      style: TextStyle(
                        color: AppTheme.primaryColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 24),
            
            _buildSection(
              '1. Information We Collect',
              'We collect information you provide directly to us and information automatically collected when you use our App:\n\n'
              '• Account Information: Username, email address, profile information\n'
              '• Cycling Data: Routes, distances, speeds, elevation, duration\n'
              '• Location Data: GPS coordinates for route tracking (with your permission)\n'
              '• Device Information: Device type, operating system, app version\n'
              '• Usage Data: How you interact with the App features',
            ),
            
            _buildSection(
              '2. How We Use Your Information',
              'We use the collected information to:\n\n'
              '• Provide and improve our cycling tracking services\n'
              '• Enable community features and social interactions\n'
              '• Personalize your experience and recommendations\n'
              '• Send important updates and notifications\n'
              '• Analyze usage patterns to improve the App\n'
              '• Ensure security and prevent fraud',
            ),
            
            _buildSection(
              '3. Location Data',
              'Location data is essential for cycling tracking features:\n\n'
              '• We collect GPS data only when you actively record a ride\n'
              '• Location tracking can be turned off in your device settings\n'
              '• Route data may be shared publicly if you choose to share rides\n'
              '• We do not track your location when the App is not in use\n'
              '• You can delete your location history at any time',
            ),
            
            _buildSection(
              '4. Information Sharing and Disclosure',
              'We may share your information in the following circumstances:\n\n'
              '• With your consent for social features (ride sharing, leaderboards)\n'
              '• With service providers who help us operate the App\n'
              '• To comply with legal obligations or protect our rights\n'
              '• In anonymized, aggregated form for research and analytics\n'
              '• We never sell your personal information to third parties',
            ),
            
            _buildSection(
              '5. Data Security',
              'We implement appropriate security measures to protect your information:\n\n'
              '• Encryption of sensitive data in transit and at rest\n'
              '• Regular security assessments and updates\n'
              '• Limited access to personal information by employees\n'
              '• Secure servers and data centers\n'
              '• However, no method of transmission over the internet is 100% secure',
            ),
            
            _buildSection(
              '6. Data Retention',
              'We retain your information for as long as necessary to:\n\n'
              '• Provide our services and maintain your account\n'
              '• Comply with legal obligations\n'
              '• Resolve disputes and enforce our agreements\n'
              '• You can request deletion of your account and associated data',
            ),
            
            _buildSection(
              '7. Your Rights and Choices',
              'You have the following rights regarding your personal information:\n\n'
              '• Access: Request a copy of your personal information\n'
              '• Correction: Update or correct inaccurate information\n'
              '• Deletion: Request deletion of your personal information\n'
              '• Portability: Request transfer of your data to another service\n'
              '• Opt-out: Unsubscribe from marketing communications',
            ),
            
            _buildSection(
              '8. Children\'s Privacy',
              'Our App is not intended for children under 13 years of age. We do not knowingly collect personal information from children under 13. If we discover that we have collected information from a child under 13, we will delete it promptly.',
            ),
            
            _buildSection(
              '9. International Data Transfers',
              'Your information may be transferred to and processed in countries other than your own. We ensure appropriate safeguards are in place to protect your information when it is transferred internationally.',
            ),
            
            _buildSection(
              '10. Third-Party Services',
              'Our App may contain links to third-party services or integrate with external platforms:\n\n'
              '• Map services for route visualization\n'
              '• Social media platforms for sharing\n'
              '• Analytics services for app improvement\n'
              '• These services have their own privacy policies',
            ),
            
            _buildSection(
              '11. Changes to This Privacy Policy',
              'We may update this Privacy Policy from time to time. We will notify you of any material changes by:\n\n'
              '• Posting the updated policy in the App\n'
              '• Sending you a notification\n'
              '• Updating the "Last Updated" date below',
            ),
            
            _buildSection(
              '12. Contact Us',
              'If you have any questions about this Privacy Policy or our data practices, please contact us:\n\n'
              'Email: privacy@pazokar.com\n'
              'Website: www.pazokar.com/privacy\n'
            ),
            
            const SizedBox(height: 32),
            
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Last Updated: ${DateTime.now().year}-${DateTime.now().month.toString().padLeft(2, '0')}',
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: AppTheme.textPrimaryColor,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'This Privacy Policy is effective as of the date last updated and will remain in effect until modified.',
                    style: TextStyle(
                      color: AppTheme.textSecondaryColor,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(String title, String content) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppTheme.textPrimaryColor,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            content,
            style: const TextStyle(
              fontSize: 16,
              height: 1.5,
              color: AppTheme.textPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
