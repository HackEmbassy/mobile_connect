import 'package:flutter/material.dart';
import '../../Components/Image/ImageView.dart';
import '../../Components/Image/Model/ImageConfig.dart';
import '../../assets/app_image.dart';
import 'check_your_mail.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

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
                  imageURL: AppImage.logo,
                  imageType: ImageType.asset,
                ),
              ),
            ),
            const SizedBox(height: 60),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.gpp_bad),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            const SizedBox(height: 32.0),
            // Enter Phone Number
            const Text(
              'Forgot Password',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 40,),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.mail_outline),
                labelText: 'Email',
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(9),
                  borderSide: BorderSide.none,
                ),
              ),
            ),

            const SizedBox(height: 40),
            const Spacer(),
            // Continue Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>   CheckInboxScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      side: const BorderSide(color: Colors.black, width: 2)
                  ),
                  backgroundColor: Colors.white,
                ),
                child: const Text(
                  'SEND EMAIL',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),

            const SizedBox(height: 70),
            // Line at the bottom
            Container(
              height: 2,
              width: 80,
              color: Colors.black,
            ),
            const SizedBox(height: 10),

          ]
      ),
      ),
    );
  }
}