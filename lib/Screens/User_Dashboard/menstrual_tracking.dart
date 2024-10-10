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
    return Scaffold(
      backgroundColor: Colors.blue[900], // Background color like the design
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xff244599), Color(0xff0C1733)],
                ),
              ),
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Stack(
                children: [
                  const Positioned(
                    left: 150,
                    top: 65,
                    child: Text(
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
                  ),
                  Positioned(
                    left: 263,
                    width: 8.289,
                    top: 134,
                    height: 17.043,
                    child: Image.asset(
                      'assets/images/image3_80214642.png',
                      width: 8.289,
                      height: 17.043,
                    ),
                  ),
                  Positioned(
                    left: 113,
                    width: 8.289,
                    top: 134,
                    height: 17.043,
                    child: Image.asset(
                      'assets/images/image4_80214645.png',
                      width: 8.289,
                      height: 17.043,
                    ),
                  ),
                  Positioned(
                    left: 124,
                    top: 132,
                    child: Text(
                      format(today),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 16,
                          color: Color(0xffffffff),
                          fontFamily: 'NunitoSans-Bold',
                          fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 55,
                    width: 280,
                    top: 204,
                    height: 280,
                    child: Image.asset(
                      'assets/images/image1_80214633.png',
                      width: 280,
                      height: 280,
                    ),
                  ),
                  Positioned(
                    left: 61,
                    width: 268,
                    top: 210,
                    height: 268,
                    child: Image.asset(
                      'assets/images/image2_80214634.png',
                      width: 268,
                      height: 268,
                    ),
                  ),
                  Positioned(
                    left: 119,
                    width: 150,
                    top: 445,
                    height: 46,
                    child: Container(
                      width: 150,
                      height: 46,
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        border: Border.all(
                            color: const Color(0xffffffff),
                            width: 1.0118764638900757),
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
                            left: 32, top: 5, right: 32, bottom: 5),
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
                                          const AddPeriodScreen()),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 154,
                    top: 257,
                    child: Text(
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
                  ),
                  const Positioned(
                    left: 139,
                    width: 105,
                    top: 389,
                    child: Text(
                      'low chance \nof getting pregnant',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 11.191,
                          color: Color(0xffffffff),
                          fontFamily: 'NunitoSans-Bold',
                          fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const Positioned(
                    left: 102,
                    top: 297,
                    child: Text(
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
                  ),
                  Positioned(
                    left: 145,
                    width: 100,
                    top: 369,
                    height: 1,
                    child: Container(
                      width: 100,
                      height: 1,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color(0xffffffff), width: 1),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 107,
                    top: 521,
                    child: Text(
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
                  ),
                  Positioned(
                    left: 229,
                    width: 57,
                    top: 521,
                    height: 29,
                    child: Text(
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
                  ),
                  const Positioned(
                    left: 237,
                    width: 36,
                    top: 550,
                    height: 23,
                    child: Text(
                      'NEXT\n',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 13.125,
                          color: Color(0xffffffff),
                          fontFamily: 'NunitoSans-Bold',
                          fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const Positioned(
                    left: 115,
                    width: 37,
                    top: 550,
                    height: 28,
                    child: Text(
                      'NEXT\n',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 13.125,
                          color: Color(0xffffffff),
                          fontFamily: 'NunitoSans-Bold',
                          fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const Positioned(
                    left: 232,
                    width: 52,
                    top: 569,
                    height: 27,
                    child: Text(
                      'FERTILE',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 13.125,
                          color: Color(0xffffffff),
                          fontFamily: 'NunitoSans-Bold',
                          fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const Positioned(
                    left: 108,
                    width: 51,
                    top: 568,
                    height: 18,
                    child: Text(
                      'PERIOD',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 13.125,
                          color: Color(0xffffffff),
                          fontFamily: 'NunitoSans-Bold',
                          fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 107,
                    width: 53,
                    top: 547,
                    height: 1,
                    child: Container(
                      width: 53,
                      height: 1,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color(0xffffffff),
                            width: 1.332830548286438),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 228,
                    width: 58,
                    top: 547,
                    height: 1,
                    child: Container(
                      width: 58,
                      height: 1,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color(0xffffffff),
                            width: 1.332830548286438),
                      ),
                    ),
                  ),
                ],
              ),
              // child: Column(
              //   crossAxisAlignment: CrossAxisAlignment.center,
              //   children: [
              //     Text(
              //       "OVULATION IN",
              //       style: TextStyle(color: Colors.white60, fontSize: 14),
              //     ),
              //     SizedBox(height: 8),
              //     Text(
              //       "7 DAYS",
              //       style: TextStyle(
              //         color: Colors.white,
              //         fontSize: 48,
              //         fontWeight: FontWeight.bold,
              //       ),
              //     ),
              //     SizedBox(height: 10),
              //     Divider(color: Colors.white24, thickness: 1),
              //     Text(
              //       "low chance of getting pregnant",
              //       style: TextStyle(color: Colors.white60, fontSize: 14),
              //     ),
              //     SizedBox(height: 20),
              //     ElevatedButton(
              //       onPressed: () {
              //         Navigator.push(
              //           context,
              //           MaterialPageRoute(builder: (context) => AddPeriodScreen()),
              //         );// Add period button logic
              //       },
              //       style: ElevatedButton.styleFrom(
              //         backgroundColor: Colors.white,
              //         padding: const EdgeInsets.symmetric(
              //             horizontal: 50, vertical: 15),
              //         shape: RoundedRectangleBorder(
              //           borderRadius: BorderRadius.circular(50),
              //         ),
              //       ),
              //       child: Text(
              //         'ADD PERIOD',
              //         style: TextStyle(
              //           color: Colors.blue[900],
              //           fontWeight: FontWeight.bold,
              //         ),
              //       ),
              //     ),
              //     SizedBox(height: 40),
              //     Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceAround,
              //       children: [
              //         Column(
              //           children: [
              //             Text(
              //               '28 SEP',
              //               style: TextStyle(
              //                 color: Colors.white,
              //                 fontSize: 18,
              //                 fontWeight: FontWeight.bold,
              //               ),
              //             ),
              //             SizedBox(height: 4),
              //             Text(
              //               'NEXT PERIOD',
              //               style: TextStyle(
              //                 color: Colors.white54,
              //                 fontSize: 14,
              //               ),
              //             ),
              //           ],
              //         ),
              //         Column(
              //           children: [
              //             Text(
              //               '28 OCT',
              //               style: TextStyle(
              //                 color: Colors.white,
              //                 fontSize: 18,
              //                 fontWeight: FontWeight.bold,
              //               ),
              //             ),
              //             SizedBox(height: 4),
              //             Text(
              //               'NEXT FERTILE',
              //               style: TextStyle(
              //                 color: Colors.white54,
              //                 fontSize: 14,
              //               ),
              //             ),
              //           ],
              //         ),
              //       ],
              //     ),
              //   ],
              // ),
            ),
          ),
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
          Image.asset(assetPath, width: 100, height: 100),
        ],
      ),
    );
  }
}
