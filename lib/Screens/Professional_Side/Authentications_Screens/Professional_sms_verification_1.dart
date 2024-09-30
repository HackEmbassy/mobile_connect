import 'package:flutter/material.dart';
import 'package:herhealthconnect/Screens/Professional_Side/Professional_congrats_page.dart';
import 'package:herhealthconnect/Screens/Professional_Side/Professional_dashboard.dart';
import 'package:herhealthconnect/Screens/Professional_Side/kyc1%20profession_selection.dart';
import '../../../Components/Image/ImageView.dart';
import '../../../Components/Image/Model/ImageConfig.dart';
import '../../../assets/app_image.dart';

class ProfessionalPhoneVerificationScreen extends StatelessWidget {
  const ProfessionalPhoneVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 40.97,
              width: 140.62,
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
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            ShaderMask(
              shaderCallback: (bounds) => const LinearGradient(
                colors: [Color(0xff244599), Color(0xff0C1733)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ).createShader(
                Rect.fromLTWH(0, 0, bounds.width, bounds.height),
              ),
              child: const Text(
                'We just sent you an SMS',
                style: TextStyle(
                  fontSize: 24,
                  color: Color(0xff244599),
                  fontWeight: FontWeight.w700,
                  fontFamily: 'NunitoSans',
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Enter the security code we sent to ********234',
              style: TextStyle(
                  fontSize: 14,
                  color: Color(0xff484848),
                  fontWeight: FontWeight.w900),
            ),
            const SizedBox(height: 24.0),
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
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                ShaderMask(
                  shaderCallback: (bounds) => const LinearGradient(
                    colors: [Color(0xff244599), Color(0xff0C1733)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ).createShader(
                    Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                  ),
                  child: const Text(
                    'Send a new code',
                    style: TextStyle(
                      color: Color(0xff244599),
                      fontSize: 16,
                      fontFamily: "NunitoSans",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            // Continue Button
            Container(
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xff244599), Color(0xff0C1733)],
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfessionSelectionPage()),
                  ); // Action for sign-up button
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Colors.transparent, // Make background transparent
                  shadowColor: Colors.transparent,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 120, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: const BorderSide(color: Color(0xFF3A6EA5), width: 2),
                  ),
                ),
                child: const Text(
                  'CONTINUE',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
