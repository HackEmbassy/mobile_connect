import 'package:flutter/material.dart';
import 'package:herhealthconnect/Components/TextView/Models/TextViewConfig.dart';
import 'package:herhealthconnect/Components/TextView/TextView.dart';
import 'package:herhealthconnect/assets/app_colors.dart';

class RecordScreen extends StatelessWidget {
  const RecordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        centerTitle: true,
        title: TextView(
          config: TextViewConfig(
            text: "Record",
            fontSize: 20,
            color: const Color(0xff244599),
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              // Greeting Text
              RichText(
                text: const TextSpan(
                  text: 'Good morning, \n',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                    fontWeight: FontWeight.w800,
                  ),
                  children: [
                    TextSpan(
                      text: 'KaKa',
                      style: TextStyle(
                        color: Color(0xff244599),
                        fontSize: 26,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Calendar
              const Row(
                children: [
                  Icon(Icons.calendar_today_outlined, size: 18),
                  SizedBox(width: 8),
                  Text('Sep 2024', style: TextStyle(fontSize: 16)),
                ],
              ),
              const SizedBox(height: 20),

              // Days Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(7, (index) {
                  return Column(
                    children: [
                      Text(
                        ['S', 'M', 'T', 'W', 'T', 'F', 'S'][index],
                        style:
                            const TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      const SizedBox(height: 8),
                      CircleAvatar(
                        radius: 18,
                        backgroundColor: (index == 4)
                            ? Colors.purple[100]
                            : Colors.transparent,
                        child: Text(
                          '${9 + index}',
                          style: TextStyle(
                            color: (index == 4) ? Colors.purple : Colors.black,
                          ),
                        ),
                      ),
                    ],
                  );
                }),
              ),
              const SizedBox(height: 20),

              // Prediction Box
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.pink[50],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: RichText(
                  text: const TextSpan(
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
              const SizedBox(height: 20),

              // Last Menstrual Period Section
              const Text(
                'Last Menstrual Period',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 10),

              // Period Info Boxes
              _buildInfoBox(
                icon: Icons.watch_later_outlined,
                title: 'Started August 20',
                subtitle: '18 days ago',
              ),
              const SizedBox(height: 10),
              _buildInfoBox(
                icon: Icons.water_drop_outlined,
                title: 'Period Length: 4 days',
                subtitle: 'Normal',
              ),
              const SizedBox(height: 10),
              _buildInfoBox(
                icon: Icons.refresh_outlined,
                title: 'Cycle Length: 28 days',
                subtitle: 'Normal',
              ),
            ],
          ),
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

  Widget _buildInfoBox(
      {required IconData icon,
      required String title,
      required String subtitle}) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(icon, size: 30, color: Colors.pink),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              Text(
                subtitle,
                style: const TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
