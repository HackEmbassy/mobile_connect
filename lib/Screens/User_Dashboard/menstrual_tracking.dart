import 'package:flutter/material.dart';

class MenstrualTrackingScreen extends StatelessWidget {
  const MenstrualTrackingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          backgroundColor: Colors.grey[300],
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Column(
              children: [
                Text(
                  'Wed, 11 Sept 2024',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          centerTitle: true,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue[900],
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "OVULATION IN",
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "7 DAYS",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "low chance of getting pregnant",
                    style: TextStyle(color: Colors.white54, fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text(
                      'ADD PERIOD',
                      style: TextStyle(color: Colors.blue[900]),
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "28 SEP",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          Text(
                            "NEXT PERIOD",
                            style:
                            TextStyle(color: Colors.white70, fontSize: 12),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "28 OCT",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          Text(
                            "NEXT FERTILE",
                            style:
                            TextStyle(color: Colors.white70, fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30), // Add space between the main section and image
            Image.asset(
              'assets/images/clendar_image.png', // Your uploaded image asset
              width: 100,
              height: 100,
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: 0,
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
      //   selectedItemColor: Colors.blue[900],
      //   unselectedItemColor: Colors.black54,
      // ),
    );
  }
}
