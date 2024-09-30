import 'package:flutter/material.dart';

import '../../Components/Image/ImageView.dart';
import '../../Components/Image/Model/ImageConfig.dart';
import '../../assets/app_image.dart';
import 'kyc3 professional services.dart';
import 'kyc3 professional services_1.dart';

class ProfessionalInfoScreen extends StatelessWidget {
  const ProfessionalInfoScreen({super.key, required String profession});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // Wrapping everything inside a scroll view
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 140.62, // Set the desired width
                    height: 40.97,
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
                children: [
                  Text('2 of 5 '),
                ],
              ),
              const SizedBox(height: 2), // Adding spacing to separate sections
              ShaderMask(
                shaderCallback: (bounds) => const LinearGradient(
                  colors: [Color(0xff244599), Color(0xff0C1733)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ).createShader(
                  Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                ),
                child: const Text(
                  'Professional\nInformation',
                  style: TextStyle(
                    color: Color(0xff244599),
                    fontSize: 32,
                    fontFamily: "NunitoSans",
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Please provide the following information to \n help your clients get the best \nrecommendation..',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blueGrey,
                  fontFamily: "NunitoSans",
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Title',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Eg. Dr., Coach',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'University',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
                items: const [
                  DropdownMenuItem(value: 'Harvard', child: Text('Harvard')),
                  DropdownMenuItem(value: 'Stanford', child: Text('Stanford')),
                  DropdownMenuItem(value: 'MIT', child: Text('MIT')),
                ],
                onChanged: (String? newValue) {},
              ),
              const SizedBox(height: 16),
              const Text(
                'License',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Upload your license',
                  suffixIcon: Icon(Icons.upload_file),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Years of experience',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Professional Summary',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              TextFormField(
                maxLines: 5,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 24),
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
                              ProfessionalServicesAndOpenHoursScreen()),
                    ); // Action for sign-up button
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Colors.transparent, // Make background transparent
                    shadowColor: Colors.transparent,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 120, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side:
                          const BorderSide(color: Color(0xFF3A6EA5), width: 2),
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
      ),
    );
  }
}
