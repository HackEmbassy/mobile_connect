import 'package:flutter/material.dart';
import 'package:herhealthconnect/Components/Gap.dart';
import 'package:herhealthconnect/Components/Image/ImageView.dart';
import 'package:herhealthconnect/Components/Image/Model/ImageConfig.dart';
import 'package:herhealthconnect/Core/CoreFolder/app.router.dart';
import 'package:herhealthconnect/Core/router/page_router.dart';
import 'package:herhealthconnect/assets/app_colors.dart';
import 'package:herhealthconnect/assets/app_image.dart';

class SignUpAsScreen extends StatefulWidget {
  const SignUpAsScreen({super.key});

  @override
  _SignUpAsScreenState createState() => _SignUpAsScreenState();
}

class _SignUpAsScreenState extends State<SignUpAsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        children: [
          const Gap(
            height: 60,
          ),
          ImageView(
            imageConfig: ImageConfig(
              imageURL: AppImage.applogo,
              imageType: ImageType.asset,
              height: 50, // Adjusted logo size for better match
              width: 150,
            ),
          ),
          // Back Button
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 16, top: 10),
              child: IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
          const Gap(height: 30),
// Title Text
          Center(
            child: ShaderMask(
              shaderCallback: (bounds) => const LinearGradient(
                colors: [Color(0xff244599), Color(0xff0C1733)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ).createShader(
                Rect.fromLTWH(0, 0, bounds.width, bounds.height),
              ),
              child: const Text(
                'What will you sign up for?',
                style: TextStyle(
                  fontSize: 24,
                  color: Color(0xff244599),
                  fontFamily: 'NunitoSans',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          const Gap(height: 100),

          // Buttons
          Center(
            child: Column(
              children: [
                // Health & Fitness Support Button
                Container(
                  width: 250, // Adjusted width
                  height: 55, // Adjusted height
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xff244599), Color(0xff0C1733)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      PageRouter.pushNamed(Routes.signUpScreen);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 10),
                    ),
                    child: const Text(
                      'Health & Fitness Support',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),

                const Gap(height: 20),

                // Provide Professional Services Button
                Container(
                  width: 250, // Matching the size to the top button
                  height: 55,
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color(0xff3A6EA5), width: 2),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      PageRouter.pushNamed(Routes.professionalSignUpScreen);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shadowColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 10),
                    ),
                    child: const Text(
                      'Provide Professional Services',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
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
