import 'package:flutter/material.dart';
import 'package:herhealthconnect/Screens/Professional_Side/kyc2%20professional_information.dart';

import '../../Components/Image/ImageView.dart';
import '../../Components/Image/Model/ImageConfig.dart';
import '../../assets/app_image.dart';

class ProfessionSelectionPage extends StatefulWidget {
  const ProfessionSelectionPage({super.key});

  @override
  _ProfessionSelectionPageState createState() =>
      _ProfessionSelectionPageState();
}

class _ProfessionSelectionPageState extends State<ProfessionSelectionPage> {
  String selectedProfession = 'Gynecologist';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 150, // Set the desired width
                  height: 150,
                  child: ImageView(
                    imageConfig: ImageConfig(
                      imageURL: AppImage.applogo,
                      imageType: ImageType.asset,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Text('1 of 5 ')],
            ),
            const SizedBox(height: 5),
            Text(
              'Which of these best describes your Profession?',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.blue[900],
                fontFamily: '',
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Let us know more about you.',
              style: TextStyle(fontSize: 16, color: Colors.blueGrey),
            ),
            const SizedBox(height: 32),
            _buildProfessionButton('Gynecologist', Colors.blue[900]!),
            const SizedBox(height: 35),
            _buildProfessionButton('Fitness coach', Colors.blue[900]!),
            const SizedBox(height: 35),
            _buildProfessionButton('Dietitian', Colors.blue[900]!),
            const SizedBox(height: 35),
            _buildProfessionButton('Obstetrician', Colors.blue[900]!),

            // Optional: Add a continue button or navigation logic here
          ],
        ),
      ),
    );
  }

  // Helper method to build profession buttons
  Widget _buildProfessionButton(String profession, Color color) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                ProfessionalInfoScreen(profession: profession),
          ),
        );
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 18),
        decoration: BoxDecoration(
          color: selectedProfession == profession
              ? Colors.blue[900]
              : Colors.blueGrey[300],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            profession,
            style: TextStyle(
              color: selectedProfession == profession
                  ? Colors.blueGrey
                  : Colors.blueGrey,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
