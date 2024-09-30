import 'package:flutter/material.dart';
import 'package:herhealthconnect/Components/Gap.dart';
import 'package:herhealthconnect/assets/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'; // Import the package

//import '../../Authentications_Screens/sign_up_as.dart';
import '../../Components/Image/ImageView.dart';
import '../../Components/Image/Model/ImageConfig.dart';
import '../../assets/app_image.dart';
import '../Authentications_Screens/sign_up_as.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:herhealthconnect/Components/Button/ButtonWidget.dart';
import 'package:herhealthconnect/Components/Button/Model/ButtonConfig.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
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
          const Gap(height: 30),
          ImageView(
            imageConfig: ImageConfig(
              imageURL: AppImage.applogo,
              imageType: ImageType.asset,
              height: 120.h,
              width: 200.w,
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
                      ImageView(
                        imageConfig: ImageConfig(
                          imageURL: AppImage.onboarding,
                          imageType: ImageType.asset,
                          height: 300.h,
                          width: 300.w,
                        ),
                      ),
                      Gap(height: 20.h),
                      Text(
                        'Book appointments\neasily',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      Gap(height: 5.h),
                      Text(
                        'Schedule sessions with gynecologists,\nobstetricians, fitness coaches, and dietitians.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16.sp,
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
                      ImageView(
                        imageConfig: ImageConfig(
                          imageURL: AppImage.onboarding,
                          imageType: ImageType.asset,
                          height: 300.h,
                          width: 300.w,
                        ),
                      ),
                      const Gap(height: 30),
                      Text(
                        'Track Your Health',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      const Gap(height: 10),
                      Text(
                        'Monitor your menstrual cycle, fitness progress,\nand dietary habits.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16.sp,
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
                      const Gap(height: 30),
                      Text(
                        'Connect with our Community',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 35.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      const Gap(height: 10),
                      Text(
                        'Join discussions, get support, and share\nexperiences with other women.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16.sp,
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
                _currentPage < 2 // If the current page is not the last one
                    ? ButtonWidget(
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
                          height: 50,
                        ),
                      )
                    : const SizedBox
                        .shrink(), // Hide the NEXT button on the last page
                _currentPage < 2 // If the current page is not the last one
                    ? ButtonWidget(
                        config: ButtonConfig(
                          text: "SKIP",
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          textColor: AppColors.black,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignUpAsScreen()),
                            );
                          },
                          radius: 30.r,
                          buttonOutlinedColor: AppColors.black,
                          buttonColor: AppColors.white,
                          width: 100.w,
                          height: 50,
                        ),
                      )
                    : ButtonWidget(
                        config: ButtonConfig(
                          text: "CONTINUE",
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          textColor: AppColors.black,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignUpAsScreen()),
                            );
                          },
                          radius: 30.r,
                          buttonOutlinedColor: AppColors.black,
                          buttonColor: AppColors.white,
                          width: 150.w,
                          height: 50,
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
