import 'package:flutter/material.dart';
import 'package:herhealthconnect/Screens/User_Dashboard/add_period.dart';
import 'package:herhealthconnect/Screens/User_Dashboard/analysis.dart';
import 'package:herhealthconnect/Screens/User_Dashboard/calendar.dart';
import 'package:herhealthconnect/Screens/User_Dashboard/profile.dart';
import 'package:herhealthconnect/Screens/User_Dashboard/record.dart';
import 'package:herhealthconnect/Screens/User_Dashboard/user_homescreen.dart';

import 'book_a_session.dart';
import 'menstrual_tracking.dart';
import 'calendar.dart';
import 'newsfeed.dart';
import 'record.dart';
import 'analysis.dart';
import 'add_period.dart';

class UserDashboard extends StatefulWidget {
  @override
  _UserDashboardState createState() => _UserDashboardState();
}

class _UserDashboardState extends State<UserDashboard> {
  int _selectedIndex = 0; // Track the selected index

  // Define the screens based on the index
  static List<Widget> _screens = <Widget>[
    HomeScreen(), // Screen 0 - Home
    BookSessionScreen(), // Screen 1 - Book a session
    MenstrualTrackingScreen(),
    CalendarScreen(), // Add other screens here if needed
    RecordScreen(),
    AddPeriodScreen(),
    AnalysisScreen(),
    NewsFeedScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Update the selected index when tapped
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[
          _selectedIndex], // Display the screen based on selected index
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black87,
        unselectedItemColor: Colors.grey[600],
        currentIndex: _selectedIndex, // Highlight the currently selected item
        onTap: _onItemTapped, // Handle tap events to switch screens
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_outline),
            label: "Book a session",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: "Menstrual Tracking",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper),
            label: "Newsfeed",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
