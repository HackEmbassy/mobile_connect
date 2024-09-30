import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:herhealthconnect/Components/Gap.dart';
import 'package:herhealthconnect/Components/TextView/Models/TextViewConfig.dart';
import 'package:herhealthconnect/Components/TextView/TextView.dart';

import '../../Components/Image/ImageView.dart';
import '../../Components/Image/Model/ImageConfig.dart';
import '../../assets/app_image.dart';
import 'kyc.dart';

class CustomizeInterestsScreen extends StatefulWidget {
  const CustomizeInterestsScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CustomizeInterestsScreenState createState() =>
      _CustomizeInterestsScreenState();
}

class _CustomizeInterestsScreenState extends State<CustomizeInterestsScreen> {
  bool scheduleHealthAppointments = true;
  bool trackMenstrualCycle = false;
  bool improvePhysicalFitness = true;
  bool maintainHealthyDiet = false;

  Widget _buildCircularCheckbox(bool value) {
    return Container(
      width: 24.0,
      height: 24.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.grey),
      ),
      child: value
          ? const Center(
        child: Icon(
          Icons.check,
          color: Colors.grey,
          size: 16.0,
        ),
      )
          : const SizedBox.shrink(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 180, // Set the desired width
                  height: 180,
                  child: ImageView(
                    imageConfig: ImageConfig(
                      imageURL: AppImage.applogo,
                      imageType: ImageType.asset,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [],
                ),
              ],
            ),
            IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              color: Colors.black,
              onPressed: () {
                // Handle back button press
              },
            ),
            const Text(
              'What will you love to use HerHealth for today?',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Customize your interests',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 16),
            _buildInterestItem(
              'Schedule Health Appointments',
              'Quickly and easily book a session with a gynecologist, obstetrician, fitness coach, or dietitian',
              scheduleHealthAppointments,
              (value) {
                setState(() {
                  scheduleHealthAppointments = value!;
                });
              },
            ),
            const SizedBox(height: 16),
            _buildInterestItem(
              'Track Menstrual Cycle',
              'Track and manage your menstrual cycle with ease',
              trackMenstrualCycle,
              (value) {
                setState(() {
                  trackMenstrualCycle = value!;
                });
              },
            ),
            const SizedBox(height: 16),
            _buildInterestItem(
              'Improve Physical Fitness',
              'Follow personalized workout plans and access workout tutorials and fitness tips recommended by your fitness coach.',
              improvePhysicalFitness,
              (value) {
                setState(() {
                  improvePhysicalFitness = value!;
                });
              },
            ),
            const SizedBox(height: 16),
            _buildInterestItem(
              'Maintain a Healthy Diet',
              'Get personalized meal plans and access nutritional advice to maintain a balanced and healthy diet.',
              maintainHealthyDiet,
              (value) {
                setState(() {
                  maintainHealthyDiet = value!;
                });
              },
            ),
            const Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>   const PersonalInformation()),
                  );
// Handle continue button press
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 16),
                  textStyle: const TextStyle(
                    fontSize: 18,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text('CONTINUE'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInterestItem(
      String title, String subtitle, bool value, Function(bool?) onChanged) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            onChanged(!value);
          },
          child: _buildCircularCheckbox(value),
        ),
        const SizedBox(width: 16),
        SizedBox(
          width: 50, // Set the desired width
          height: 50,
          child: ImageView(
            imageConfig: ImageConfig(
              imageURL: AppImage.kyclogo, // Your image path
              imageType: ImageType
                  .asset, // Specify if it's an asset or a network image
            ),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                subtitle,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
