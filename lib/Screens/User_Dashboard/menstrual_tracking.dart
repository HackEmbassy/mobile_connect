import 'package:flutter/material.dart';
import 'package:herhealthconnect/Screens/User_Dashboard/add_period.dart';
import 'package:herhealthconnect/Screens/User_Dashboard/record.dart';
import 'package:intl/intl.dart';

import 'analysis.dart';
import 'calendar.dart';

class MenstrualTrackingScreen extends StatefulWidget {
  const MenstrualTrackingScreen({Key? key}) : super(key: key);

  @override
  _MenstrualTrackingScreenState createState() =>
      _MenstrualTrackingScreenState();
}

class _MenstrualTrackingScreenState extends State<MenstrualTrackingScreen> {
  DateTime? _nextPeriod = DateTime(2024, 9, 28);
  DateTime? _nextFertile = DateTime(2024, 10, 28);

  String formatDate(DateTime? date) {
    if (date == null) return 'Unknown';
    return DateFormat('d MMM').format(date);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900], // Background color like the design
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        // App bar same background
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          'Wed, 11 sept 2024',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_forward_ios, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue[900],
              ),
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "OVULATION IN",
                    style: TextStyle(color: Colors.white60, fontSize: 14),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "7 DAYS",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Divider(color: Colors.white24, thickness: 1),
                  Text(
                    "low chance of getting pregnant",
                    style: TextStyle(color: Colors.white60, fontSize: 14),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AddPeriodScreen()),
                      );// Add period button logic
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: Text(
                      'ADD PERIOD',
                      style: TextStyle(
                        color: Colors.blue[900],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(
                            '28 SEP',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'NEXT PERIOD',
                            style: TextStyle(
                              color: Colors.white54,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            '28 OCT',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'NEXT FERTILE',
                            style: TextStyle(
                              color: Colors.white54,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 80,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildBottomIcon(context, 'assets/images/calendar_icon.png', 'CALENDAR', Colors.red, CalendarScreen()),
                _buildBottomIcon(context, 'assets/images/record_icon.png', 'RECORD', Colors.black87, RecordScreen()),
                _buildBottomIcon(context, 'assets/images/analysis_icon.png', 'ANALYSIS', Colors.black87, AnalysisScreen()),
              ],
            ),
          ),
        ],
      ),
    );
  }

//   Widget _buildBottomIcon(String assetPath, String label, Color labelColor) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Image.asset(assetPath, width: 50, height: 50),
//         SizedBox(height: 8),
//         Text(
//           label,
//           style: TextStyle(color: labelColor, fontSize: 12),
//         ),
//       ],
//     );
//   }
// }

  Widget _buildBottomIcon(BuildContext context, String assetPath, String label,
      Color labelColor, Widget destinationScreen) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destinationScreen),
        );
      },
      child: Column(
        children: [
          Image.asset(assetPath, width: 50, height: 50),
          SizedBox(height: 8),
          Text(
            label,
            style: TextStyle(color: labelColor, fontSize: 12),
          ),
        ],
      ),
    );
  }
}