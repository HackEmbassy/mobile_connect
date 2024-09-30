import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
class ProfessionalCalendarScreen extends StatefulWidget {
  const ProfessionalCalendarScreen({super.key});

  @override
  _ProfessionalCalendarScreenState createState() =>
      _ProfessionalCalendarScreenState();
}

class _ProfessionalCalendarScreenState
    extends State<ProfessionalCalendarScreen> {
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();
  Map<DateTime, List<String>> events = {
    DateTime(2023, 12, 24): ['Ivory\'s Appointment', 'Event 2'],
  };

  List<String> _getEventsForDay(DateTime day) {
    return events[day] ?? [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calendar'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back action
          },
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DropdownButton<String>(
                  value: 'Dec 2023',
                  icon: const Icon(Icons.arrow_drop_down),
                  items: <String>['Dec 2023', 'Jan 2024'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    // Handle month/year change
                  },
                ),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.calendar_today),
                      onPressed: () {
                        // Handle calendar icon press
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.list_alt),
                      onPressed: () {
                        // Handle list icon press
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: TableCalendar(
              firstDay: DateTime.utc(2020, 1, 1),
              lastDay: DateTime.utc(2024, 12, 31),
              focusedDay: focusedDay,
              selectedDayPredicate: (day) => isSameDay(selectedDay, day),
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  this.selectedDay = selectedDay;
                  this.focusedDay = focusedDay;
                });
              },
              calendarFormat: CalendarFormat.month,
              eventLoader: _getEventsForDay,
            ),
          ),
          if (_getEventsForDay(selectedDay).isNotEmpty)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: _getEventsForDay(selectedDay)
                    .map((event) => Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Text(event),
                        ))
                    .toList(),
              ),
            ),
        ],
      ),
    );
  }
}
