import 'package:flutter/material.dart';



class BookingSuccessPage extends StatelessWidget {
  const BookingSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.close, color: Colors.black),
          onPressed: () {
            // Handle close action
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.blue[800],
              child: const Icon(Icons.check, size: 50, color: Colors.white),
            ),
            const SizedBox(height: 60,),

            // Success Message
            const Text(
              'Booking Successful !',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 16),

            // Details Text
            RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                style: TextStyle(fontSize: 16, color: Colors.black),
                children: <TextSpan>[
                  TextSpan(text: 'Dear Kaka, you have successfully booked a session with '),
                  TextSpan(
                      text: 'Dr. Richar Kandowen',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: ' for a '),
                  TextSpan(
                      text: 'Full Body Check up',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: ' on the upcoming date '),
                  TextSpan(
                      text: '7th October by 02:00pm.',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: ' You’ll get a reminder 1hr to the meeting.'),
                ],
              ),
            ),
            const SizedBox(height: 300),

            // Buttons (Add to Calendar and Go to Home Page)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Add to Calendar Button
                OutlinedButton(
                  onPressed: () {

                  },
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    'Add to Calendar',
                    style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                  ),
                ),

                // Go to Home Page Button
                ElevatedButton(
                  onPressed: () {
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(builder: (context) => const ProfessionSelectionPage()),
                  //   );
                   },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[800],
                    padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Go to Home Page',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
