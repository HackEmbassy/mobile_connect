import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:herhealthconnect/Authentications_Screens/sign_up_as.dart';
import 'package:herhealthconnect/Components/Button/ButtonWidget.dart';
import 'package:herhealthconnect/Components/Button/Model/ButtonConfig.dart';
import 'package:herhealthconnect/assets/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'; // Import the package

//import '../../Authentications_Screens/sign_up_as.dart';
import '../../Components/Image/ImageView.dart';
import '../../Components/Image/Model/ImageConfig.dart';
import '../../assets/app_image.dart';
import '../Authentications_Screens/sign_up_as.dart';
import '../kyc/kyc_1.dart';

class OnboardingScreen extends StatefulWidget {
  OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  // PageController to manage the pages
  final PageController _pageController = PageController();

  // Track the current page index
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 20), // Spacing from the top
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 200, // Set the desired width
                        height: 200, // Set the desired height
                        child: ImageView(
                          imageConfig: ImageConfig(
                            imageURL: AppImage.applogo,
                            imageType: ImageType.asset,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              children: [
                // First page
                Center(
                  child: Column(
                    children: [
                      SizedBox(
                        width: 350, // Set the desired width
                        height: 350, // Set the desired height
                        child: ImageView(
                          imageConfig: ImageConfig(
                            imageURL: AppImage.onboarding,
                            imageType: ImageType.asset,
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      const Text(
                        'Book appointments\neasily',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Schedule sessions with gynecologists,\nobstetricians, fitness coaches, and dietitians.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
                // Second page
                Center(
                  child: Column(
                    children: [
                      SizedBox(
                        width: 350, // Set the desired width
                        height: 350, // Set the desired height
                        child: ImageView(
                          imageConfig: ImageConfig(
                            imageURL: AppImage.onboarding,
                            imageType: ImageType.asset,
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      const Text(
                        'Track Your Health',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Monitor your menstrual cycle, fitness progress,\nand dietary habits.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
                // Third page (new screen)
                Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: SizedBox(
                          width: 350, // Set the desired width
                          height: 350, // Set the desired height
                          child: ImageView(
                            imageConfig: ImageConfig(
                              imageURL: AppImage.onboarding,
                              imageType: ImageType.asset,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      const Text(
                        'Connect with our Community',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Join discussions, get support, and share\nexperiences with other women.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SmoothPageIndicator(
            controller: _pageController, // Attach the PageController
            count: 3, // Number of pages
            effect: const WormEffect(
              // Customize the indicator effect
              dotWidth: 10.0,
              dotHeight: 10.0,
              spacing: 16.0,
              dotColor: Colors.grey,
              activeDotColor: Colors.black87,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ButtonWidget(
                  config: ButtonConfig(
                      text: "NEXT",
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      textColor: AppColors.black,
                      onPressed: () {
                        _pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },
                      radius: 30.r,
                      buttonOutlinedColor: AppColors.black,
                      buttonColor: AppColors.white,
                      width: 100.w,
                      height: 40),
                ),
                // ElevatedButton(
                //   onPressed: () {
                //     // Navigate to the next screen

                //   },
                //   style: ElevatedButton.styleFrom(
                //     padding: const EdgeInsets.symmetric(
                //         vertical: 15, horizontal: 40),
                //     shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(30),
                //       side: const BorderSide(color: Colors.black87),
                //     ),
                //     backgroundColor: Colors.white,
                //     foregroundColor: Colors.black87,
                //     elevation: 2,
                //   ),
                //   child: const Text(
                //     "NEXT",
                //     style: TextStyle(
                //       fontSize: 18,
                //       fontWeight: FontWeight.bold,
                //     ),
                //   ),
                // ),
                ButtonWidget(
                  config: ButtonConfig(
                      text: "SKIP",
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
                    : SizedBox.shrink(), // Hide the NEXT button on the last page
                _currentPage < 2 // If the current page is not the last one
                    ? ElevatedButton(
                  onPressed: () {
                    // Skip and navigate to the home screen or other
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpAsScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      side: const BorderSide(color: Colors.black87),
                    ),
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black87,
                    elevation: 2,
                  ),
                  child: const Text(
                    "SKIP",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
                    : ElevatedButton(
                  onPressed: () {
                    // Navigate to the next screen or home screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpAsScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      side: const BorderSide(color: Colors.black87),
                    ),
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black87,
                    elevation: 2,
                  ),
                  child: const Text(
                    "CONTINUE",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
