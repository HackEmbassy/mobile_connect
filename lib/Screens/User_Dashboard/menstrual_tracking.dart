import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:herhealthconnect/Screens/User_Dashboard/add_period.dart';
import 'package:herhealthconnect/Screens/User_Dashboard/record.dart';
import 'package:intl/intl.dart';

import 'analysis.dart';
import 'calendar.dart';

class MenstrualTrackingScreen extends StatefulWidget {
  const MenstrualTrackingScreen({super.key});

  @override
  _MenstrualTrackingScreenState createState() =>
      _MenstrualTrackingScreenState();
}

class _MenstrualTrackingScreenState extends State<MenstrualTrackingScreen> {
  DateTime? _nextPeriod = DateTime(2024, 9, 28);
  DateTime? _nextFertile = DateTime(2024, 10, 28);
  DateTime? today = DateTime.now();

  String formatDate(DateTime? date) {
    if (date == null) return 'Unknown';
    return DateFormat('d MMM').format(date);
  }

  String format(DateTime? date) {
    if (date == null) return 'Unknown';
    return DateFormat('d MMM y').format(date);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xff244599), Color(0xff0C1733)],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: SizedBox(
            height: 900,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Text(
                  'RECORD',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 20,
                      color: Color(0xffffffff),
                      fontFamily: 'NunitoSans-Bold',
                      fontWeight: FontWeight.normal),
                  maxLines: 9999,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center, // Center the content horizontally
                  children: [
                    Image.asset(
                      'assets/images/image4_80214645.png',
                      width: 8.289,
                      height: 17.043,
                    ),
                    const SizedBox(width: 10), // Add spacing between image and text
                    Text(
                      format(today),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 16,
                        color: Color(0xffffffff),
                        fontFamily: 'NunitoSans-Bold',
                        fontWeight: FontWeight.normal,
                      ),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(width: 10), // Add spacing between text and image
                    Image.asset(
                      'assets/images/image3_80214642.png',
                      width: 8.289,
                      height: 17.043,
                    ),
                  ],
                ),
                SizedBox(height: 40),
                Container(
                  width: 350, // Set width
                  height: 350, // Set height equal to width
                  decoration: BoxDecoration(
                    gradient:const LinearGradient(
                      colors: [Color(0xff244599), Color(0xff0C1733)],
                    ),
                    borderRadius: BorderRadius.circular(400),
                    border: Border.all( // Add border
                      color: Colors.white, // Border color
                      width: 6, // Border width
                    ),// Half of width/height
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 80),
                    Text(
                                      'OVULATION IN',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: 11.191,
                                          color: Color(0xffffffff),
                                          fontFamily: 'NunitoSans-Bold',
                                          fontWeight: FontWeight.normal),
                                      maxLines: 9999,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                      SizedBox(height: 20),
                  Text(
                                      '7 DAYS',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: 52.222,
                                          color: Color(0xffffffff),
                                          fontFamily: 'NunitoSans-Bold',
                                          fontWeight: FontWeight.normal),
                                      maxLines: 9999,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                      SizedBox(height: 20),
                  Container(
                                      width: 100,
                                      height: 1,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: const Color(0xffffffff), width: 1),
                                      ),
                                    ),
                      SizedBox(height: 20),
                  Text(
                                      'low chance \nof getting pregnant',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: 12,
                                          color: Color(0xffffffff),
                                          fontFamily: 'NunitoSans-Bold',
                                          fontWeight: FontWeight.normal),
                                      maxLines: 9999,
                                      overflow: TextOverflow.ellipsis,
                                    ),

                    ],
                  ),

                ),
                SizedBox(height: 20),
                Container(
                  width: 200,
                  height: 60,
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    border: Border.all(
                        color: const Color(0xffffffff), width: 1.0118764638900757),
                    borderRadius: BorderRadius.circular(43),
                    boxShadow: const [
                      BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0, 4),
                          blurRadius: 4),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 32, top: 5, right: 30, bottom: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          child: const Text(
                            'ADD PERIOD',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 13.125,
                                color: Color(0xff484848),
                                fontFamily: 'NunitoSans-Bold',
                                fontWeight: FontWeight.normal),
                            maxLines: 9999,
                            overflow: TextOverflow.ellipsis,
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                   AddPeriodScreen()),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 40,),
                        Text(
                                            'Next Period',
                                            textAlign: TextAlign.left,
                                            style: const TextStyle(
                                                decoration: TextDecoration.none,
                                                fontSize: 15.762,
                                                color: Color(0xffffffff),
                                                fontFamily: 'NunitoSans-Bold',
                                                fontWeight: FontWeight.normal),
                                            maxLines: 9999,
                                            overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(width: 140,),
                        Text(
                                            'Next Period',
                                            textAlign: TextAlign.left,
                                            style: const TextStyle(
                                                decoration: TextDecoration.none,
                                                fontSize: 15.762,
                                                color: Color(0xffffffff),
                                                fontFamily: 'NunitoSans-Bold',
                                                fontWeight: FontWeight.normal),
                                            maxLines: 9999,
                                            overflow: TextOverflow.ellipsis,
                                          ),

                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 60,),
                        Text(
                                            formatDate(_nextPeriod),
                                            textAlign: TextAlign.left,
                                            style: const TextStyle(
                                                decoration: TextDecoration.none,
                                                fontSize: 15.762,
                                                color: Color(0xffffffff),
                                                fontFamily: 'NunitoSans-Bold',
                                                fontWeight: FontWeight.normal),
                                            maxLines: 9999,
                                            overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(width: 180,),
                        Text(
                                            formatDate(_nextFertile),
                                            textAlign: TextAlign.left,
                                            style: const TextStyle(
                                                decoration: TextDecoration.none,
                                                fontSize: 15.76,
                                                color: Color(0xffffffff),
                                                fontFamily: 'NunitoSans-Bold',
                                                fontWeight: FontWeight.normal),
                                            maxLines: 9999,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  height: 150,
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                    vertical: 15.h,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildBottomIcon(context, 'assets/images/calendar_icon.png',
                          const CalendarScreen()),
                      _buildBottomIcon(context, 'assets/images/record_icon.png',
                          const RecordScreen()),
                      _buildBottomIcon(context, 'assets/images/analysis_icon.png',
                          const AnalysisScreen()),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBottomIcon(
      BuildContext context, String assetPath, Widget destinationScreen) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destinationScreen),
        );
      },
      child: Column(
        children: [
          Image.asset(assetPath, width: 90, height: 90),
        ],
      ),
    );
  }
}
