import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import 'Professional_chat.dart';
import 'Professional_event_list.dart';
import 'Professional_event_week.dart';

class ProfessionalCalendarScreen extends StatefulWidget {
  const ProfessionalCalendarScreen({super.key});

  @override
  _ProfessionalCalendarScreenState createState() =>
      _ProfessionalCalendarScreenState();
}

class _ProfessionalCalendarScreenState
    extends State<ProfessionalCalendarScreen> {
  DateTime focusedDay = DateTime.now();
  DateTime? selectedDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        title: const Text(
          'Calendar',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
            child: Row(
              children: [
                const Text(
                  'Dec 2023',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.calendar_month),
                  onPressed: () {
                    _showPopupMenu(context);
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.chat),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProfessionalChatScreen()),
                    );
                  },
                ),
              ],
            ),
          ),
          TableCalendar(
            focusedDay: focusedDay,
            firstDay: DateTime(2020),
            lastDay: DateTime(2030),
            selectedDayPredicate: (day) {
              return isSameDay(selectedDay, day);
            },
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                this.selectedDay = selectedDay;
                this.focusedDay = focusedDay;
              });
            },
            calendarStyle: CalendarStyle(
              todayDecoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              selectedDecoration: BoxDecoration(
                color: Colors.indigo[900],
                shape: BoxShape.circle,
              ),
              markerDecoration: const BoxDecoration(
                color: Colors.blueAccent,
                shape: BoxShape.circle,
              ),
            ),
            headerVisible: false, // Disable default header
            calendarFormat: CalendarFormat.month,
            startingDayOfWeek: StartingDayOfWeek.sunday,
            daysOfWeekStyle: DaysOfWeekStyle(
              weekendStyle: TextStyle(color: Colors.grey.shade500),
              weekdayStyle: TextStyle(color: Colors.grey.shade500),
            ),
          ),
        ],
      ),
    );
  }

// Function to show the popup menu
  void _showPopupMenu(BuildContext context) {
    showMenu<String>(
      context: context,
      position: const RelativeRect.fromLTRB(
          100, 80, 0, 0), // Adjust position near the icon
      items: [
        const PopupMenuItem<String>(
          value: 'Month',
          child: Text('Month'),
        ),
        const PopupMenuItem<String>(
          value: 'Week',
          child: Text('Week'),
        ),
        const PopupMenuItem<String>(
          value: 'List',
          child: Text('List'),
        ),
      ],
    ).then((value) {
      if (value != null) {
        _handleMenuAction(context, value);
      }
    });
  }

  // Navigation logic based on the selected option
  void _handleMenuAction(BuildContext context, String selectedValue) {
    switch (selectedValue) {
      case 'Month':
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const ProfessionalCalendarScreen()),
        );
        break;
      case 'Week':
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const ProfessionalCalendarEventScreen()),
        );
        break;
      case 'List':
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const ProfessionalEventList()),
        );
        break;
    }
  }
}
