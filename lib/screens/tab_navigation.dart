import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import 'tab_screens/tab1_screen.dart';
import 'tab_screens/tab2_screen.dart';
import 'tab_screens/tab3_screen.dart';
import 'tab_screens/tab4_screen.dart';

class TabNavigationScreen extends StatefulWidget {
  const TabNavigationScreen({super.key});

  @override
  State<TabNavigationScreen> createState() => _TabNavigationScreenState();
}

class _TabNavigationScreenState extends State<TabNavigationScreen> {
  int _currentIndex = 0;
  
  final List<Widget> _screens = [
    const Tab1Screen(),
    const Tab2Screen(),
    const Tab3Screen(),
    const Tab4Screen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: SafeArea(
          child: Container(
            height: 60,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildTabItem(0, 'pazokar_tab_1.png'),
                _buildTabItem(1, 'pazokar_tab_2.png'),
                _buildTabItem(2, 'pazokar_tab_3.png'),
                _buildTabItem(3, 'pazokar_tab_4.png'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTabItem(int index, String imagePath) {
    final isSelected = _currentIndex == index;
    
    return GestureDetector(
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        child: ColorFiltered(
          colorFilter: ColorFilter.mode(
            isSelected ? AppTheme.primaryColor : Colors.grey[600]!,
            BlendMode.srcIn,
          ),
          child: Image.asset(
            'assets/images/tab/$imagePath',
            width: 32,
            height: 32,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
