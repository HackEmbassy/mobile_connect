import 'package:flutter/material.dart';

import '../../Components/Image/ImageView.dart';
import '../../Components/Image/Model/ImageConfig.dart';
import '../../assets/app_image.dart';
import '../kyc/kyc_1.dart';

class ResetSuccessfulScreen extends StatelessWidget {
  const ResetSuccessfulScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(flex: 2),
            SizedBox(
              height: 251,
              width: 316.69,
              child: ImageView(
                imageConfig: ImageConfig(
                  imageURL: AppImage.security,
                  imageType: ImageType.asset,
                ),
              ),
            ),
            const SizedBox(height: 60),
            // Title Text
            const Text(
              'Reset Successful!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Please log in to HerHealth again with your new password',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            const Spacer(flex: 3),
            // Log In Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) =>    CustomizeInterestsScreen()),
                  // );
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                    side: const BorderSide(color: Colors.black, width: 2),
                  ),
                ),
                child: const Text(
                  'LOG IN',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
