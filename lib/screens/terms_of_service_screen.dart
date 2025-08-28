import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class TermsOfServiceScreen extends StatelessWidget {
  const TermsOfServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      appBar: AppBar(
        title: const Text(
          'Terms of Service',
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
                    Icons.info_outline,
                    color: AppTheme.primaryColor,
                    size: 24,
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      'Please read these terms carefully before using Pazokar.',
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
              '1. Acceptance of Terms',
              'By downloading, installing, or using the Pazokar mobile application ("App"), you agree to be bound by these Terms of Service ("Terms"). If you do not agree to these Terms, please do not use the App.',
            ),
            
            _buildSection(
              '2. Description of Service',
              'Pazokar is a cycling community app that allows users to:\n\n'
              '• Track and record cycling activities\n'
              '• Share cycling experiences with the community\n'
              '• Discover new cycling routes and locations\n'
              '• Connect with other cycling enthusiasts\n'
              '• Participate in cycling challenges and events',
            ),
            
            _buildSection(
              '3. User Accounts and Registration',
              'To access certain features of the App, you may need to create an account. You are responsible for:\n\n'
              '• Providing accurate and complete information\n'
              '• Maintaining the security of your account credentials\n'
              '• All activities that occur under your account\n'
              '• Notifying us immediately of any unauthorized use',
            ),
            
            _buildSection(
              '4. User Content and Conduct',
              'You retain ownership of content you post through the App. However, you grant Pazokar a license to use, display, and distribute your content within the App. You agree not to:\n\n'
              '• Post inappropriate, offensive, or harmful content\n'
              '• Violate any laws or regulations\n'
              '• Infringe on others\' intellectual property rights\n'
              '• Engage in harassment or bullying\n'
              '• Share false or misleading information',
            ),
            
            _buildSection(
              '5. Privacy and Data Collection',
              'Your privacy is important to us. Please review our Privacy Policy to understand how we collect, use, and protect your information. By using the App, you consent to our data practices as described in the Privacy Policy.',
            ),
            
            _buildSection(
              '6. Safety and Liability',
              'Cycling involves inherent risks. You acknowledge that:\n\n'
              '• You participate in cycling activities at your own risk\n'
              '• Pazokar is not responsible for accidents or injuries\n'
              '• You should follow local traffic laws and safety guidelines\n'
              '• Route information is provided for reference only\n'
              '• You are responsible for assessing route safety and conditions',
            ),
            
            _buildSection(
              '7. Intellectual Property',
              'The App and its content, features, and functionality are owned by Pazokar and are protected by international copyright, trademark, and other intellectual property laws.',
            ),
            
            _buildSection(
              '8. Termination',
              'We may terminate or suspend your account and access to the App at our sole discretion, without prior notice, for conduct that we believe violates these Terms or is harmful to other users or our business.',
            ),
            
            _buildSection(
              '9. Disclaimers and Limitations',
              'The App is provided "as is" without warranties of any kind. We do not guarantee that the App will be error-free, secure, or continuously available. Our liability is limited to the maximum extent permitted by law.',
            ),
            
            _buildSection(
              '10. Changes to Terms',
              'We reserve the right to modify these Terms at any time. We will notify users of significant changes through the App or other means. Continued use of the App after changes constitutes acceptance of the new Terms.',
            ),
            
            _buildSection(
              '11. Contact Information',
              'If you have questions about these Terms, please contact us at:\n\n'
              'Email: support@pazokar.com\n'
              'Website: www.pazokar.com',
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
                    'These Terms of Service are effective as of the date last updated and will remain in effect until modified.',
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
