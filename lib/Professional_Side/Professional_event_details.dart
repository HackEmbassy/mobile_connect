import 'package:flutter/material.dart';

class ProfessionalEventDetailsScreen extends StatelessWidget {
  const  ProfessionalEventDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Event Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Text('Shirley,'),
                SizedBox(width: 8.0),
                Text('Joe,'),
              ],
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Joe\'s basketball class',
            ),
            const SizedBox(height: 8.0),
            const Row(
              children: [
                Text('Sun, Dec 24, 2024'),
                SizedBox(width: 16.0),
                Icon(Icons.arrow_forward),
                SizedBox(width: 16.0),
                Text('Sun, Dec 24, 2024'),
              ],
            ),
            const SizedBox(height: 8.0),
            const Row(
              children: [
                Text('2:00 pm'),
                SizedBox(width: 16.0),
                Text('3:00 pm'),
              ],
            ),
            const SizedBox(height: 16.0),
            const Text('Take Joe\'s basketball.'),
            const SizedBox(height: 16.0),
            Text('On time of event, 10 min before'),
            const SizedBox(height: 32.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle delete action
                  },
                  child: const Text('Delete'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Handle edit action
                  },
                  child: const Text('Edit'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}