import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'Professional_calender.dart';
import 'Professional_chat.dart';
import 'Professional_event_list.dart';

class ProfessionalCalendarEventScreen extends StatefulWidget {
  const ProfessionalCalendarEventScreen({super.key});

  @override
  _ProfessionalCalendarEventScreenState createState() => _ProfessionalCalendarEventScreenState();
}

class _ProfessionalCalendarEventScreenState extends State<ProfessionalCalendarEventScreen> {
  final DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

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
          // Calendar Header Row (Month Selector)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Text(
                  DateFormat('MMM yyyy').format(_focusedDay),
                  style: const TextStyle(
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
                      MaterialPageRoute(builder: (context) => ProfessionalChatScreen()),
                    );
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),

          // Horizontal Calendar (Days of the Month)
          SizedBox(
            height: 80, // Adjust height as per your design
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 31, // Assuming 31 days for the selected month
              itemBuilder: (context, index) {
                DateTime date = DateTime(_focusedDay.year, _focusedDay.month, index + 1);
                bool isSelected = date.day == (_selectedDay?.day ?? 0) && date.month == (_selectedDay?.month ?? 0);

                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedDay = date;
                    });
                  },
                  child: Container(
                    width: 30,
                    height: 80,
                    margin: const EdgeInsets.symmetric(horizontal: 9),
                    decoration: BoxDecoration(
                      color: isSelected ? Colors.blue[900] : Colors.transparent,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          DateFormat.E().format(date).substring(0, 3), // Day abbreviation (e.g. "Tue")
                          style: TextStyle(
                            fontSize: 14,
                            color: isSelected ? Colors.white : Colors.black,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          '${date.day}',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: isSelected ? Colors.white : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 10),

          // Events List
          Expanded(
            child: ListView(
              children:  [
                ListTile(
                  leading: const Text("2:00 PM", style: TextStyle(fontWeight: FontWeight.bold)),
                  title: const Text("Joe's basketball class"),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.alarm, color: Colors.blue[900]),
                      const SizedBox(width: 4),
                      Icon(Icons.note_add_rounded, color: Colors.blue[900]),
                    ],
                  ),
                ),
                ListTile(
                  leading: const Text("4:10 PM", style: TextStyle(fontWeight: FontWeight.bold)),
                  title: const Text("Event 2"),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.alarm, color: Colors.blue[900]),
                      const SizedBox(width: 4),
                      Icon(Icons.list_alt, color: Colors.blue[900]),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  //Function to show the popup menu
  void _showPopupMenu(BuildContext context) {
    showMenu<String>(
      context: context,
      position: const RelativeRect.fromLTRB(100, 80, 0, 0), // Adjust position near the icon
      items: const [
        PopupMenuItem<String>(
          value: 'Month',
          child: Text('Month'),
        ),
        PopupMenuItem<String>(
          value: 'Week',
          child: Text('Week'),
        ),
        PopupMenuItem<String>(
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
          MaterialPageRoute(builder: (context) => const ProfessionalCalendarScreen()),
        );
        break;
      case 'Week':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProfessionalCalendarEventScreen()),
        );
        break;
      case 'List':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ProfessionalEventList()),
        );
        break;
    }
  }
}
