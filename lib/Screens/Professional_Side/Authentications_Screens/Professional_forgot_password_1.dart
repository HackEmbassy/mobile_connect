import 'package:flutter/material.dart';
import '../../../Components/Image/ImageView.dart';
import '../../../Components/Image/Model/ImageConfig.dart';
import '../../../assets/app_image.dart';
import 'Professional_check_your_mail.dart';

class ProfessionalForgotPassword extends StatelessWidget {
  const ProfessionalForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          SizedBox(
            height: 70.97,
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
                icon: const Icon(Icons.arrow_back_rounded),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
          const SizedBox(height: 32.0),
          // Enter Phone Number
          ShaderMask(
            shaderCallback: (bounds) => const LinearGradient(
              colors: [Color(0xff244599), Color(0xff0C1733)],
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
          const SizedBox(
            height: 40,
          ),
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.mail_outline),
              labelText: 'Email',
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(9),
                borderSide: BorderSide.none,
              ),
            ),
          ),

          const SizedBox(height: 40),
          const Spacer(),
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
                      builder: (context) =>
                          const ProfessionalCheckInboxScreen()),
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
        ]),
      ),
    );
  }
}
