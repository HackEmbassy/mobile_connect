import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:herhealthconnect/assets/app_colors.dart';

import '../../Components/Image/ImageView.dart';
import '../../Components/Image/Model/ImageConfig.dart';
import '../../assets/app_image.dart';
import 'onboarding.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image using ImageView
          Positioned.fill(
            child: ImageView(
              imageConfig: ImageConfig(
                imageURL: AppImage.bg, // Your image path
                imageType: ImageType
                    .asset, // Specify if it's an asset or a network image
              ),
            ),
          ),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Spacing for the top of the screen
                const Spacer(flex: 20),
                // Text content
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.0.w),
                  child: Column(
                    children: [
                      Text(
                        'Book appointments\nwith professionals &\nMonitor your menstrual cycle',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 35.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Your personalized guide to better health and fitness.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(flex: 3),
                // Button at the bottom
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const OnboardingScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: const BorderSide(color: Colors.black87),
                      ),
                      backgroundColor: const Color(0xff244599),
                      foregroundColor: const Color(0xff0C1733),
                      elevation: 2,
                      minimumSize: const Size(
                          double.infinity, 50), // Make the button full-width
                    ),
                    child: const Text(
                      "LET'S START",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30), // Additional spacing at the bottom
              ],
            ),
          ),
        ],
      ),
    );
  }
}
