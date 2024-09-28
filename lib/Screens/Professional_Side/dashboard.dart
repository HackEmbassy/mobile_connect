import 'package:flutter/material.dart';
import 'package:herhealthconnect/Screens/Professional_Side/event_details.dart';
import 'package:herhealthconnect/Screens/Professional_Side/event_week.dart';

import 'Professional_book a session.dart';
import 'Professional_home_page.dart';
import 'calender.dart';
import 'chat.dart';
import 'event_list.dart';

class UserDashboard extends StatefulWidget {
  @override
  _UserDashboardState createState() => _UserDashboardState();
}

class _UserDashboardState extends State<UserDashboard> {
  int _selectedIndex = 0; // Track the selected index

  // Define the screens based on the index
  static  final List<Widget> _screens = <Widget>[
    const ProfessionalHomePage(),         // Screen 0 - Home
    const ProfessionalBookSessionScreen(),   // Screen 1 - Book a session
    const ProfessionalCalendarEventScreen(),
    const ProfessionalCalendarScreen(), // Add other screens here if needed
    const ProfessionalEventDetailsScreen(),
    const ProfessionalEventListScreen(),
    const ProfessionalChatScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Update the selected index when tapped
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex], // Display the screen based on selected index
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black87,
        unselectedItemColor: Colors.grey[600],
        currentIndex: _selectedIndex, // Highlight the currently selected item
        onTap: _onItemTapped,         // Handle tap events to switch screens
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_outline),
            label: "Appointments",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: "Client",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper),
            label: "Calender",
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