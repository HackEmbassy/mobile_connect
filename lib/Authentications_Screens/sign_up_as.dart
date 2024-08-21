import 'package:flutter/material.dart';
import 'package:herhealthconnect/Authentications_Screens/sign_up.dart';
import '../Components/Image/ImageView.dart';
import '../Components/Image/Model/ImageConfig.dart';
import '../assets/app_image.dart';

class SignUpAsScreen extends StatefulWidget {
  const SignUpAsScreen({super.key});

  @override
  _SignUpAsScreenState createState() => _SignUpAsScreenState();
}

class _SignUpAsScreenState extends State<SignUpAsScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            const SizedBox(height: 20,width: 20,),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: IconButton(
                icon: const Icon(Icons.arrow_back_ios_sharp, color: Colors.black),
                onPressed: () {
                  // Action for back button
                },
              ),
            ),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 1,width: 20,),
                    const Text(
                      'What will you sign up for?',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SignUpScreen()),
                        );

                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black, // Button color
                        padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: const BorderSide(color: Colors.black, width: 2),
                        ),
                      ),
                      child: const Text(
                        'Health & Fitness Support',
                        style: TextStyle(fontSize: 16,color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  const SignUpScreen()),
                        );

                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black, backgroundColor: Colors.white, // Text and border color
                        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20), // Rounded corners
                          side: const BorderSide(color: Colors.black, width: 2), // Border color
                        ),
                      ),
                      child: const Text(
                        'Provide Professional Services',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}