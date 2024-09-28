import 'package:flutter/material.dart';
//import 'package:herhealthconnect/Screens/Professional_Side/Authentications_Screens/professional_set_new_password.dart';
import '../../../Components/Image/ImageView.dart';
import '../../../Components/Image/Model/ImageConfig.dart';
import '../../../assets/app_image.dart';
//import 'Professional_set_new_password.dart';
import 'package:herhealthconnect/Screens/Professional_Side/Authentications_Screens/Professional_set_new_password.dart';
//import 'package:herhealthconnect/Screens/Professional_Side/Authentications_Screens/professional_set_new_password.dart;

class ProfessionalCheckInboxScreen extends StatelessWidget {
  const ProfessionalCheckInboxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 40.97,
              width: 200.62,
              child: ImageView(
                imageConfig: ImageConfig(
                  imageURL: AppImage.logo,
                  imageType: ImageType.asset,
                ),
              ),
            ),
            const SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  const ProfessionalNewPasswordScreen()),
                    );
                  },
                ),
              ],
            ),
            ShaderMask(
              shaderCallback: (bounds) => const LinearGradient(
                colors: [Color(0xff244599),Color(0xff0C1733)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ).createShader(
                Rect.fromLTWH(0, 0, bounds.width, bounds.height),
              ),
              child: const Text(
                'Check Your Inbox',
                style: TextStyle(
                  fontSize: 24,
                  color: Color(0xff244599),
                  fontFamily: 'NunitoSans',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(height: 10),
            // Sub Text
            const Text(
              'Click the link sent to c*************01@gmail.com\n before reset your password',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
                fontWeight: FontWeight.w400
              ),
            ),
            const SizedBox(
              height:40,
              width:50
            ),
            const Spacer(flex: 8),
            const SizedBox(height: 30,),
            SizedBox(
              height: 367.91,
              width: 307.84,
              child: ImageView(
                imageConfig: ImageConfig(
                  imageURL: AppImage.mail,
                  imageType: ImageType.asset,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
