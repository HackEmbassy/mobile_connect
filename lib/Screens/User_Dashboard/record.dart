import 'package:flutter/material.dart';

class RecordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'RECORD',
          style: TextStyle(color: Colors.black, fontSize: 14),
        ),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Greeting Text
            RichText(
              text: TextSpan(
                text: 'Good morning, ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.w500,
                ),
                children: [
                  TextSpan(
                    text: 'KaKa',
                    style: TextStyle(
                      color: Colors.pink[400],
                      fontSize: 26,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Calendar
            Row(
              children: [
                Icon(Icons.calendar_today_outlined, size: 18),
                SizedBox(width: 8),
                Text('Sep 2024', style: TextStyle(fontSize: 16)),
              ],
            ),
            SizedBox(height: 20),

            // Days Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(7, (index) {
                return Column(
                  children: [
                    Text(
                      ['S', 'M', 'T', 'W', 'T', 'F', 'S'][index],
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    SizedBox(height: 8),
                    CircleAvatar(
                      radius: 18,
                      backgroundColor:
                      (index == 4) ? Colors.purple[100] : Colors.transparent,
                      child: Text(
                        '${9 + index}',
                        style: TextStyle(
                          color: (index == 4)
                              ? Colors.purple
                              : Colors.black,
                        ),
                      ),
                    ),
                  ],
                );
              }),
            ),
            SizedBox(height: 20),

            // Prediction Box
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.pink[50],
                borderRadius: BorderRadius.circular(10),
              ),
              child: RichText(
                text: TextSpan(
                  text: 'Your period is likely to start on or around ',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  children: [
                    TextSpan(
                      text: 'Sep 29',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),

            // Last Menstrual Period Section
            Text(
              'Last Menstrual Period',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 10),

            // Period Info Boxes
            _buildInfoBox(
              icon: Icons.watch_later_outlined,
              title: 'Started August 20',
              subtitle: '18 days ago',
            ),
            SizedBox(height: 10),
            _buildInfoBox(
              icon: Icons.water_drop_outlined,
              title: 'Period Length: 4 days',
              subtitle: 'Normal',
            ),
            SizedBox(height: 10),
            _buildInfoBox(
              icon: Icons.refresh_outlined,
              title: 'Cycle Length: 28 days',
              subtitle: 'Normal',
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: 2, // Menstrual Tracking is selected
      //   type: BottomNavigationBarType.fixed,
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.people),
      //       label: 'Book a session',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.calendar_today),
      //       label: 'Menstrual Tracking',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.article),
      //       label: 'Newsfeed',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //       label: 'Profile',
      //     ),
      //   ],
      //   selectedItemColor: Colors.purple,
      //   unselectedItemColor: Colors.grey,
      // ),
    );
  }

  Widget _buildInfoBox({required IconData icon, required String title, required String subtitle}) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(icon, size: 30, color: Colors.pink),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              Text(
                subtitle,
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
