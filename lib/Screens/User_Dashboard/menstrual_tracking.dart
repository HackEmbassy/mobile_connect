import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import 'add_period.dart';
import 'analysis.dart';
import 'calendar.dart';
import 'record.dart';

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
    // Initialize ScreenUtil for responsive design
    ScreenUtil.init(context, designSize: const Size(375, 812));

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
            height: 1.sh, // Full screen height
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 5.h),
                Text(
                  'RECORD',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 20.sp, // Scaled text
                    color: const Color(0xffffffff),
                    fontFamily: 'NunitoSans-Bold',
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/image4_80214645.png',
                      width: 8.w,
                      height: 17.h,
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      format(today),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 16.sp,
                        color: const Color(0xffffffff),
                        fontFamily: 'NunitoSans-Bold',
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Image.asset(
                      'assets/images/image3_80214642.png',
                      width: 8.w,
                      height: 17.h,
                    ),
                  ],
                ),
                SizedBox(height: 40.h),
                Container(
                  width: 250.w,
                  height: 250.w, // Square container, responsive to width
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xff244599), Color(0xff0C1733)],
                    ),
                    borderRadius: BorderRadius.circular(125.w),
                    border: Border.all(
                      color: Colors.white,
                      width: 6.w,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 30.h),
                      Text(
                        'OVULATION IN',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 11.sp,
                          color: const Color(0xffffffff),
                          fontFamily: 'NunitoSans-Bold',
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Text(
                        '7 DAYS',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 52.sp,
                          color: const Color(0xffffffff),
                          fontFamily: 'NunitoSans-Bold',
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Container(
                        width: 100.w,
                        height: 1.h,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xffffffff),
                            width: 1.w,
                          ),
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Text(
                        'low chance \nof getting pregnant',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 12.sp,
                          color: const Color(0xffffffff),
                          fontFamily: 'NunitoSans-Bold',
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AddPeriodScreen()),
                    );
                  },
                  child: Container(
                    width: 200.w,
                    height: 60.h,
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      borderRadius: BorderRadius.circular(43.r),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0, 4),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'ADD PERIOD',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 13.sp,
                          color: const Color(0xff484848),
                          fontFamily: 'NunitoSans-Bold',
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40.w),
                          child: Text(
                            'Next Period',
                            style: TextStyle(
                              fontSize: 15.sp,
                              color: Colors.white,
                              fontFamily: 'NunitoSans-Bold',
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40.w),
                          child: Text(
                            'Next Fertile',
                            style: TextStyle(
                              fontSize: 15.sp,
                              color: Colors.white,
                              fontFamily: 'NunitoSans-Bold',
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40.w),
                          child: Text(
                            formatDate(_nextPeriod),
                            style: TextStyle(
                              fontSize: 15.sp,
                              color: Colors.white,
                              fontFamily: 'NunitoSans-Bold',
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40.w),
                          child: Text(
                            formatDate(_nextFertile),
                            style: TextStyle(
                              fontSize: 15.sp,
                              color: Colors.white,
                              fontFamily: 'NunitoSans-Bold',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                Container(
                  height: 150.h,
                  padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
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
          Image.asset(assetPath, width: 90.w, height: 90.h),
        ],
      ),
    );
  }
}
