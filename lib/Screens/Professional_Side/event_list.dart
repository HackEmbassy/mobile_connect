import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class  ProfessionalEventListScreen extends StatefulWidget {
  const ProfessionalEventListScreen({super.key});

  @override
  _ProfessionalEventListScreenState createState() => _ProfessionalEventListScreenState();
}

class _ProfessionalEventListScreenState extends State<ProfessionalEventListScreen> {
  DateTime _selectedDay = DateTime.now();
  DateTime _focusedDay = DateTime.now();

  final List<Event> _eventsList = [
    Event(title: "Joe's basketball class", date: DateTime(2024, 12, 26, 14, 0)),
    // Add other events here
  ];

  late final Map<DateTime, List<Event>> _events;

  @override
  void initState() {
    super.initState();

    // Convert the list of events into a map of DateTime and List<Event>
    _events = {};
    for (var event in _eventsList) {
      DateTime eventDay = DateTime(event.date.year, event.date.month, event.date.day);
      if (_events[eventDay] == null) {
        _events[eventDay] = [];
      }
      _events[eventDay]!.add(event);
    }
  }

  List<Event> _getEventsForDay(DateTime day) {
    return _events[day] ?? [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calendar'),
      ),
      body: Column(
        children: [
          TableCalendar(
            focusedDay: _focusedDay,
            firstDay: DateTime.utc(2023, 10, 1),
            lastDay: DateTime.utc(2025, 12, 31),
            selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                _selectedDay = selectedDay;
                _focusedDay = focusedDay; // update the focused day as well
              });
            },
            eventLoader: _getEventsForDay,
          ),
          const SizedBox(height: 16.0),
          ..._getEventsForDay(_selectedDay).map(
                (event) => ListTile(
              title: Text(event.title),
              tileColor: Colors.blue.shade100,
            ),
          ),
        ],
      ),
    );
  }
}

class Event {
  final String title;
  final DateTime date;

  Event({required this.title, required this.date});
}
