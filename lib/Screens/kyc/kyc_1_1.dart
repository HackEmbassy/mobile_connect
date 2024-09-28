import 'package:flutter/material.dart';

import '../../Components/Image/ImageView.dart';
import '../../Components/Image/Model/ImageConfig.dart';
import '../../assets/app_image.dart';
import 'kyc.dart';

class CustomizeInterestsScreen extends StatefulWidget {
  @override
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
          ? Center(
        child: Icon(
          Icons.check,
          color: Colors.grey,
          size: 16.0,
        ),
      )
          : SizedBox.shrink(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Row(
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
                  SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [],
                  ),
                ],
              ),
            ),
            IconButton(
              icon: Icon(Icons.arrow_back_ios),
              color: Colors.black,
              onPressed: () {
                // Handle back button press
              },
            ),
            Text(
              'What will you love to use HerHealth for today?',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Customize your interests',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 16),
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
            SizedBox(height: 16),
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
            SizedBox(height: 16),
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
            SizedBox(height: 16),
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
            Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>   PersonalInformation()),
                  );
// Handle continue button press
                },
                child: Text('CONTINUE'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 80, vertical: 16),
                  textStyle: TextStyle(
                    fontSize: 18,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInterestItem(String title, String subtitle, bool value, Function(bool?) onChanged) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            onChanged(!value);
          },
          child: _buildCircularCheckbox(value),
        ),
        SizedBox(width: 16),
        SizedBox(
          width: 50, // Set the desired width
          height: 50,
          child: ImageView(
            imageConfig: ImageConfig(
              imageURL: AppImage.kyclogo, // Your image path
              imageType: ImageType.asset,   // Specify if it's an asset or a network image
            ),
          ),
        ),
        SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                subtitle,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
