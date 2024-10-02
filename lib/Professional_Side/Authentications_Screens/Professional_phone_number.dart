import 'package:flutter/material.dart';
import '../../../Components/Image/ImageView.dart';
import '../../../Components/Image/Model/ImageConfig.dart';
import '../../../assets/app_image.dart';
import 'Professional_sms_verification.dart';

class ProfessionalPhoneNumberScreen extends StatelessWidget {
  const ProfessionalPhoneNumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 60.97,
              width: 200.62,
              child: ImageView(
                imageConfig: ImageConfig(
                  imageURL: AppImage.applogo,
                  imageType: ImageType.asset,
                ),
              ),
            ),
            const SizedBox(height: 60),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            const SizedBox(height: 10),
            // Enter Phone Number
            ShaderMask(
              shaderCallback: (bounds) => const LinearGradient(
                colors: [Color(0xff244599),Color(0xff0C1733)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ).createShader(
                Rect.fromLTWH(0, 0, bounds.width, bounds.height),
              ),
              child: const Text(
                'Enter your phone number',
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xff244599),
                  fontFamily: 'NunitoSans',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              'You will receive a code to confirm your identity',
              style: TextStyle(fontSize: 14, color: Colors.grey[600]),
            ),
            const SizedBox(height: 24.0),
            Row(
              children: [
                // Country Code
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.lightBlue),
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
                const SizedBox(width: 16.0),
                // Phone Number Field
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: '8056750798',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(color: Colors.lightBlue),
                      ),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            // Continue Button
            Container(
              decoration:  BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xff244599),Color(0xff0C1733)],
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>   const ProfessionalPhoneVerificationScreen()),
                  );// Action for sign-up button
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent, // Make background transparent
                  shadowColor: Colors.transparent,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 120, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: const BorderSide(color: Color(0xFF3A6EA5), width: 2),
                  ),
                ),
                child: const Text(
                  'CONTINUE',
                  style: TextStyle(fontSize: 16,color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}