import 'package:flutter/material.dart';
import 'package:herhealthconnect/Screens/User_Dashboard/add_period.dart';
import 'package:herhealthconnect/Screens/User_Dashboard/analysis.dart';
import 'package:herhealthconnect/Screens/User_Dashboard/calendar.dart';
import 'package:herhealthconnect/Screens/User_Dashboard/profile.dart';
import 'package:herhealthconnect/Screens/User_Dashboard/record.dart';
import 'package:herhealthconnect/Screens/User_Dashboard/user_homescreen.dart';
import 'package:herhealthconnect/assets/app_colors.dart';

import 'book_a_session.dart';
import 'menstrual_tracking.dart';
import 'newsfeed.dart';

class UserDashboard extends StatefulWidget {
  const UserDashboard({super.key});

  @override
  _UserDashboardState createState() => _UserDashboardState();
}

class _UserDashboardState extends State<UserDashboard> {
  int _selectedIndex = 0; // Track the selected index

  // Define the screens based on the index
  static final List<Widget> _screens = <Widget>[
    const HomeScreen(), // Screen 0 - Home
    const BookSessionScreen(), // Screen 1 - Book a session
    const MenstrualTrackingScreen(), // Screen 2 - Menstrual Tracking
    const NewsFeedScreen(), // Screen 3 - Newsfeed
    const ProfileScreen(), // Screen 4 - Profile
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Update the selected index when tapped
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex, // Display the selected screen
        children: _screens, // Keep all screens loaded and switch between them
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.white,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black87,
        unselectedItemColor: Colors.grey[600],
        currentIndex: _selectedIndex, // Highlight the currently selected item
        onTap: _onItemTapped, // Handle tap events to switch screens
        items: [
          BottomNavigationBarItem(
            icon: _buildIcon('assets/images/home.png', 0),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: _buildIcon('assets/images/book_session.png', 1),
            label: "Book a session",
          ),
          BottomNavigationBarItem(
            icon: _buildIcon('assets/images/menstrual_tracking.png', 2),
            label: "Menstrual Tracking",
          ),
          BottomNavigationBarItem(
            icon: _buildIcon('assets/images/newsfeed.png', 3),
            label: "Newsfeed",
          ),
          BottomNavigationBarItem(
            icon: _buildIcon('assets/images/profile.png', 4),
            label: "Profile",
          ),
        ],
      ),
    );
  }

  Widget _buildIcon(String assetPath, int index) {
    return ColorFiltered(
      colorFilter: ColorFilter.mode(
        _selectedIndex == index ? Colors.black87 : Colors.grey[600]!,
        BlendMode.srcIn,
      ),
      child: Image.asset(
        assetPath,
        width: 24,
        height: 24,
      ),
    );
  }
}
