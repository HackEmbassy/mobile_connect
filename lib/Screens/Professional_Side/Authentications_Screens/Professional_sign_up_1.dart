import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:herhealthconnect/Screens/Professional_Side/Authentications_Screens/Professional_login.dart';
import 'package:herhealthconnect/Screens/Professional_Side/Authentications_Screens/Professional_phone_number.dart';
import '../../../Components/Image/ImageView.dart';
import '../../../Components/Image/Model/ImageConfig.dart';
import '../../../assets/app_image.dart';

class ProfessionalSignUpScreen extends StatefulWidget {
  const ProfessionalSignUpScreen({super.key});

  @override
  _ProfessionalSignUpScreenState createState() => _ProfessionalSignUpScreenState();
}
class _ProfessionalSignUpScreenState extends State<ProfessionalSignUpScreen> {
  bool _isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 80.97,
                width: 150.62,
                child: ImageView(
                  imageConfig: ImageConfig(
                    imageURL: AppImage.applogo,
                    imageType: ImageType.asset,
                  ),
                ),
              ),
              const SizedBox(height: 30), // Space for the status bar
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_rounded, color: Colors.black),
                    onPressed: () {
                      // Action for back button
                    },
                  ),
                ],
              ),
              Center(
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    ShaderMask(
                      shaderCallback: (bounds) => const LinearGradient(
                        colors: [Color(0xff244599),Color(0xff0C1733)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ).createShader(
                        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                      ),
                      child: const Text(
                        'Create account',
                        style: TextStyle(
                          fontSize: 24,
                          color: Color(0xff244599),
                          fontFamily: 'NunitoSans',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 50),
                    // Full Name TextField
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.person_outline),
                        labelText: 'Full name',
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Email TextField
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.mail_outline),
                        labelText: 'Email',
                        filled: true,
                        fillColor: Colors.grey[200],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Password TextField
                    TextFormField(
                      obscureText: !_isPasswordVisible,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.lock_outline),
                        suffixIcon:  IconButton(
                          icon: Icon(
                            _isPasswordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: () {
                            setState(() {
                              _isPasswordVisible = !_isPasswordVisible;
                            });
                          },
                        ),
                        labelText: 'Password',
                        filled: true,
                        fillColor: Colors.grey[200],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 50),
                    // Sign Up Button
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
                            MaterialPageRoute(builder: (context) =>   const ProfessionalPhoneNumberScreen()),
                          );// Action for sign-up button
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent, // Make background transparent
                          shadowColor: Colors.transparent,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 120, vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: const BorderSide(color: Color(0xFF3A6EA5), width: 2),
                          ),
                        ),
                        child: const Text(
                          'SIGN UP',
                          style: TextStyle(fontSize: 16,color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    const Text(
                      'or continue with',
                      style: TextStyle(color: Colors.black54),
                    ),
                    const SizedBox(height: 15),
                    // Social Media Buttons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 40,
                          width: 40,
                          child: ImageView(
                            imageConfig: ImageConfig(
                              imageURL: AppImage.google,
                              imageType: ImageType.asset,
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        SizedBox(
                          height: 40,
                          width: 40,
                          child: ImageView(
                            imageConfig: ImageConfig(
                              imageURL: AppImage.facebook,
                              imageType: ImageType.asset,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 50),
                    Center(
                      child: RichText(
                        text: TextSpan(
                          text: 'Already have an account? ',
                          style: const TextStyle(color: Colors.black),
                          children: [
                            TextSpan(
                              text: 'Log in',
                              style: const TextStyle(
                                color:Color(0xff26144B),
                                fontWeight: FontWeight.bold,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  // Navigate to login page
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const ProfessionalLoginPage(),
                                    ),
                                  );
                                },
                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}