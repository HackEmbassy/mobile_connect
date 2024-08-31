import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:herhealthconnect/Authentications_Screens/sms_verification.dart';
import 'package:herhealthconnect/Components/Button/ButtonWidget.dart';
import 'package:herhealthconnect/Components/Button/Model/ButtonConfig.dart';
import 'package:herhealthconnect/Components/Gap.dart';

import '../Components/Image/ImageView.dart';
import '../Components/Image/Model/ImageConfig.dart';
import '../assets/app_image.dart';

class PhoneNumberScreen extends StatelessWidget {
  const PhoneNumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Gap(height: 60),
            ImageView(
              imageConfig: ImageConfig(
                height: 40.97,
                width: 140.62,
                imageURL: AppImage.logo,
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
            const Gap(height: 32.0),
            // Enter Phone Number
            const Text(
              'Enter your phone number',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Gap(height: 8.0),
            Text(
              'You will receive a code to confirm your identity',
              style: TextStyle(fontSize: 14, color: Colors.grey[600]),
            ),
            const Gap(height: 24.0),
            Row(
              children: [
                // Country Code
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12.0, vertical: 8.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.flag, color: Colors.grey[600]),
                      const SizedBox(width: 8.0),
                      const Text('+234', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ),
                const Gap(width: 16.0),
                // Phone Number Field
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: '8056750798',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(color: Colors.white30),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 12.0),
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            // Continue Button
            ButtonWidget(
              config: ButtonConfig(
                text: "Continue".toUpperCase(),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PhoneVerificationScreen()),
                  );
                },
                height: 48,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                radius: 25.0.r,
                textColor: Colors.black,
                buttonColor: Colors.white,
                buttonOutlinedColor: Colors.black,
              ),
            ),
            // SizedBox(
            //   width: double.infinity,
            //   child: ElevatedButton(
            //     onPressed: () {

            //     },
            //     style: ElevatedButton.styleFrom(
            //       padding: const EdgeInsets.symmetric(vertical: 16.0),
            //       shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(25.0),
            //           side: const BorderSide(color: Colors.black, width: 2)),
            //       backgroundColor: Colors.white,
            //     ),
            //     child: const Text(
            //       'CONTINUE',
            //       style: TextStyle(fontSize: 16),
            //     ),
            //   ),
            // ),
            const Gap(height: 20.0),
            Container(
              height: 2,
              width: 80,
              color: Colors.black,
            ),
            const Gap(height: 20.0),
          ],
        ),
      ),
    );
  }
}
