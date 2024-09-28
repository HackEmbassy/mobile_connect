import 'package:flutter/material.dart';
import 'package:herhealthconnect/Screens/Professional_Side/Professional_dashboard.dart';
import 'package:herhealthconnect/Screens/Professional_Side/Professional_home_page.dart';

import '../../../Components/Image/ImageView.dart';
import '../../../Components/Image/Model/ImageConfig.dart';
import '../../../assets/app_image.dart';
class ProfessionalResetSuccessfulScreen extends StatelessWidget {
  const ProfessionalResetSuccessfulScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 200,),
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
                fontSize: 32,
                fontWeight: FontWeight.w700,
                color: Colors.black,
                fontFamily: 'NunitoSans'
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
            SizedBox(height: 100,),
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
                    MaterialPageRoute(builder: (context) =>   const ProfessionalDashboard()),
                  );// Action for sign-up button
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent, // Make background transparent
                  shadowColor: Colors.transparent,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 150, vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: const BorderSide(color: Color(0xFF3A6EA5), width: 2),
                  ),
                ),
                child: const Text(
                  'LOG IN ',
                  style: TextStyle(fontSize: 16,color: Colors.white),
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
