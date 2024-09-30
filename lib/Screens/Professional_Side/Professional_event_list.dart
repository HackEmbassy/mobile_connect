import 'package:flutter/material.dart';

class ProfessionalEventList extends StatelessWidget {
  const ProfessionalEventList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: const Text('Calendar'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DropdownButton<String>(
                  value: "Dec 2023", // Currently hardcoded, can be made dynamic
                  icon: Icon(Icons.arrow_drop_down),
                  items: <String>['Dec 2023', 'Jan 2024'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (newValue) {
                    // Handle month selection
                  },

                ),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.calendar_month),
                      onPressed: () {
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.chat),
                      onPressed: () {

                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(height: 1),
          // List of events
          Expanded(
            child: ListView(
              children: [
                buildDateSection(context, 'Tue, Dec 26, 2024', [
                  buildEventItem(context, '2:00 PM', '3:00 PM', "Joe's basketball class"),
                  buildEventItem(context, '4:10 PM', '5:00 PM', 'Event 2'),
                  buildEventItem(context, '6:00 PM', '8:00 PM', 'Event 3'),
                  buildEventItem(context, '9:10 PM', '11:00 PM', 'Event 4'),
                ]),
                buildDateSection(context, 'Wed, Dec 27, 2024', [
                  buildEventItem(context, '2:00 PM', '3:00 PM', "Joe's basketball class"),
                ]),
                buildDateSection(context, 'Thu, Dec 28, 2024', [
                  buildEventItem(context, '2:00 PM', '3:00 PM', "Joe's basketball class"),
                ]),
                buildDateSection(context, 'Fri, Dec 29, 2024', [
                  buildEventItem(context, '2:00 PM', '3:00 PM', "Joe's basketball class"),
                ]),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDateSection(BuildContext context, String date, List<Widget> events) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          color: Colors.grey[200],
          child: Text(
            date,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        Column(
          children: events,
        ),
        Divider(height: 1),
      ],
    );
  }

  Widget buildEventItem(BuildContext context, String startTime, String endTime, String title) {
    return InkWell(
      onTap: () {
        // Show the event details in a custom popup dialog
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Shirley,'),
                        Text('Joe,'),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Sun, Dec 24, 2024'),
                            Text(
                              startTime,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),

                          ],
                        ),
                        const Icon(Icons.arrow_forward),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Sun, Dec 24, 2024'),
                            Text(
                              endTime,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),

                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    const Row(
                      children: [
                        Icon(Icons.note),
                        SizedBox(width: 10),
                        Text("Take Joe's basketball."),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.alarm),
                        SizedBox(width: 10),
                        Text("On time of event, 10 min before."),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueAccent[100], // Delete button style
                            elevation: 0,
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Delete',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue[800], // Edit button style
                            elevation: 0,
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Edit',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  startTime,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  endTime,
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            const Row(
              children: [
                Icon(Icons.alarm, color: Colors.black),
                SizedBox(width: 10),
                Icon(Icons.note, color: Colors.black),
              ],
            ),
          ],
        ),
      ),
    );
  }
}