import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:herhealthconnect/Components/Button/ButtonWidget.dart';
import 'package:herhealthconnect/Components/Button/Model/ButtonConfig.dart';
import 'package:herhealthconnect/Components/Gap.dart';
import 'package:herhealthconnect/Core/CoreFolder/app.router.dart';
import 'package:herhealthconnect/Core/router/page_router.dart';
import 'package:herhealthconnect/Screens/User_Dashboard/user_homescreen.dart';
import 'package:herhealthconnect/assets/app_colors.dart';

class BookingSuccessPage extends StatelessWidget {
  const BookingSuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),

            // Checkmark Icon
            const CircleAvatar(
              radius: 45,
              backgroundColor: Color(0xff244599), // Blue circle background
              child: Icon(
                Icons.check,
                color: Colors.white,
                size: 48,
              ),
            ),
            const SizedBox(height: 24),

            // Success Message
            const Text(
              "Request Successful!",
              style: TextStyle(
                color: Colors.green,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),

            // Booking Details
            RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  height: 1.5,
                ),
                children: [
                  TextSpan(
                      text:
                          "Dear Kaka you have successfully booked a session with "),
                  TextSpan(
                    text: "Dr. Richar Kandowen",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: " for a "),
                  TextSpan(
                    text: "Full Body Check up",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: " on the upcoming date "),
                  TextSpan(
                    text: "7th October by 02:00pm.",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: " You’ll get a reminder 1hr to the meeting."),
                ],
              ),
            ),

            const Spacer(),

            // Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Add to Calendar Button
                // OutlinedButton(
                //   onPressed: () {
                //     // Handle adding to calendar
                //   },
                //   style: OutlinedButton.styleFrom(
                //     padding: const EdgeInsets.symmetric(
                //         horizontal: 24, vertical: 16),
                //     shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(12),
                //     ),
                //     side: const BorderSide(color: Colors.blueAccent),
                //   ),
                //   child: const Text(
                //     "Add to Calendar",
                //     style: TextStyle(
                //       color: Colors.grey,
                //       fontSize: 16,
                //     ),
                //   ),
                // ),

                Expanded(
                  child: ButtonWidget(
                      config: ButtonConfig(
                    text: "Add to Calendar",
                    onPressed: () {},
                    buttonColor: Colors.transparent,
                    buttonOutlinedColor: AppColors.primary,
                    height: 48,
                    radius: 20.r,
                    textColor: AppColors.black,
                  )),
                ),
                const Gap(
                  width: 40,
                ),
                Expanded(
                  child: ButtonWidget(
                      config: ButtonConfig(
                    text: "Go to Home Page",
                    onPressed: () {
                      PageRouter.pushReplacement(Routes.userDashboard);
                    },
                    radius: 20.r,
                    buttonColor: AppColors.primary,
                    buttonOutlinedColor: AppColors.primary,
                    height: 48,
                  )),
                ),
                // Go to Home Page Button
                // ElevatedButton(
                //   onPressed: () {
                //   },
                //   style: ElevatedButton.styleFrom(
                //     padding: const EdgeInsets.symmetric(
                //         horizontal: 24, vertical: 16),
                //     backgroundColor: const Color(0xff244599),
                //     shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(12),
                //     ),
                //   ),
                //   child: const Text(
                //     "Go to Home Page",
                //     style: TextStyle(
                //       color: Colors.white,
                //       fontSize: 16,
                //     ),
                //   ),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
