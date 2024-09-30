import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:herhealthconnect/Components/Button/ButtonWidget.dart';
import 'package:herhealthconnect/Components/Button/Model/ButtonConfig.dart';
import 'package:herhealthconnect/Components/Gap.dart';
import '../../Components/Image/ImageView.dart';
import '../../Components/Image/Model/ImageConfig.dart';
import '../../assets/app_image.dart';
import '../kyc/kyc_1.dart';
import 'login.dart';

class PhoneVerificationScreen extends StatelessWidget {
  const PhoneVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Gap(
              height: 40,
            ),
            ImageView(
              imageConfig: ImageConfig(
                height: 40.97,
                width: 140.62,
                imageURL: AppImage.applogo,
                imageType: ImageType.asset,
              ),
            ),
            const Gap(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                icon: const Icon(Icons.arrow_back_ios_new_rounded),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            const Gap(height: 16.0),
            const Text(
              'We just sent you an SMS',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Gap(height: 8.0),
            Text(
              'Enter the security code we sent to ********234',
              style: TextStyle(fontSize: 14, color: Colors.grey[600]),
            ),
            const Gap(height: 24.0),
            // Security Code Fields
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(6, (index) {
                return SizedBox(
                  width: 40.0,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    maxLength: 1,
                    decoration: InputDecoration(
                      counterText: "",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                );
              }),
            ),
            const Gap(
              height: 15,
            ),
            const Row(
              children: [
                Text(
                  'Send a new code',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const Gap(height: 16.0),
            Center(
              child: RichText(
                text: TextSpan(
                  text: 'Already have an account? ',
                  style: const TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      text: 'Log in',
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // Navigate to login page
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginPage(),
                            ),
                          );
                        },
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            ButtonWidget(
              config: ButtonConfig(
                text: "Continue".toUpperCase(),
                onPressed: () {},
                height: 48,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                radius: 25.0.r,
                textColor: Colors.black,
                buttonColor: Colors.white,
                buttonOutlinedColor: Colors.black,
              ),
            ),
            const Gap(height: 20.0),
            Container(
              height: 2,
              width: 80,
              color: Colors.black,
            ),
            const Gap(height: 16.0),
          ],
        ),
      ),
    );
  }
}
