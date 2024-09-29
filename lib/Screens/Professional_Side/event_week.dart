import 'package:flutter/material.dart';

class ProfessionalCalendarEventScreen extends StatefulWidget {
  const ProfessionalCalendarEventScreen({super.key});

  @override
  _ProfessionalCalendarEventScreenState createState() =>
      _ProfessionalCalendarEventScreenState();
}

class _ProfessionalCalendarEventScreenState
    extends State<ProfessionalCalendarEventScreen> {
  DateTime selectedDay = DateTime(2023, 12, 26);
  List<Map<String, dynamic>> events = [
    {
      'time': '2:00 PM - 3:00 PM',
      'title': "Joe's basketball class",
      'icons': [Icons.alarm, Icons.note],
    },
    {
      'time': '4:10 PM - 5:00 PM',
      'title': "Event2",
      'icons': [Icons.alarm, Icons.note],
    },
  ];

  List<String> daysOfWeek = ['SUN', 'MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT'];
  DateTime startDate = DateTime(2023, 12, 24);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calendar'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back navigation
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
                  icon: Icon(Icons.arrow_drop_down),
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
                      icon: Icon(Icons.calendar_today),
                      onPressed: () {
                        // Handle calendar icon press
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.list_alt),
                      onPressed: () {
                        // Handle list icon press
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 80,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 7,
              itemBuilder: (context, index) {
                DateTime day = startDate.add(Duration(days: index));
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedDay = day;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Column(
                      children: [
                        Text(
                          daysOfWeek[day.weekday % 7],
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(height: 8),
                        CircleAvatar(
                          radius: 18,
                          backgroundColor: selectedDay == day
                              ? Colors.blueAccent
                              : Colors.grey[200],
                          child: Text(
                            day.day.toString(),
                            style: TextStyle(
                              color: selectedDay == day
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 16),
          Divider(height: 1),
          Expanded(
            child: ListView.builder(
              itemCount: events.length,
              itemBuilder: (context, index) {
                var event = events[index];
                return ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  title: Text(
                    event['title'],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(event['time']),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: event['icons']
                        .map<Widget>((icon) => Icon(
                              icon,
                              size: 18,
                            ))
                        .toList(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
