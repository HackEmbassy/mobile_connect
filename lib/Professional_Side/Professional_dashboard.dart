import 'package:flutter/material.dart';
import 'package:herhealthconnect/Screens/User_Dashboard/profile.dart';
import 'Professional_Client.dart';
import 'Professional_appointments.dart';
import 'Professional_calender.dart';
import 'Professional_event_details.dart';
import 'Professional_event_list.dart';
import 'Professional_event_week.dart';
import 'Professional_home_page.dart';
import 'Professional_profile.dart';

class ProfessionalDashboard extends StatefulWidget {
  const ProfessionalDashboard({super.key});

  @override
  _ProfessionalDashboardState createState() => _ProfessionalDashboardState();
}

class _ProfessionalDashboardState extends State<ProfessionalDashboard> {
  int _selectedIndex = 0; // Track the selected index

  // Define the screens based on the index
  static final List<Widget> _screens = <Widget>[
    const ProfessionalHomePage(),         // Screen 0 - Home
    const ProfessionalAppointmentsScreen(),   // Screen 1 - Book a session
    const ProfessionalClientScreen(), // Screen 2 - Menstrual Tracking
    const ProfessionalCalendarScreen(), // Screen 3 - Newsfeed
    const ProfessionalProfileScreen(),      // Screen 4 - Profile
    const ProfessionalEventList(),
    const ProfessionalCalendarEventScreen(),
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
        index: _selectedIndex,  // Display the selected screen
        children: _screens,     // Keep all screens loaded and switch between them
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black87,
        unselectedItemColor: Colors.grey[600],
        currentIndex: _selectedIndex, // Highlight the currently selected item
        onTap: _onItemTapped,         // Handle tap events to switch screens
        items: [
          BottomNavigationBarItem(
            icon: _buildIcon('assets/images/home.png', 0),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: _buildIcon('assets/images/image_I101339187858676.png', 1),
            label: "Appointments",
          ),
          BottomNavigationBarItem(
            icon: _buildIcon('assets/images/image_I101339187858679.png', 2),
            label: "Client",
          ),
          BottomNavigationBarItem(
            icon: _buildIcon('assets/images/calendar.png', 3),
            label: "Calendar",
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