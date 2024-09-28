import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:herhealthconnect/Screens/Authentications_Screens/sign_up.dart';
import '../../Components/Image/ImageView.dart';
import '../../Components/Image/Model/ImageConfig.dart';
import '../../assets/app_image.dart';
import '../kyc/kyc_1.dart';
import 'forgot_password.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const SizedBox(height: 20),
              const Text(
                'Welcome back',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 40),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.email),
                  hintText: 'Email',
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                obscureText: !_isPasswordVisible,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock),
                  hintText: 'Password',
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                  suffixIcon: IconButton(
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
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (value) {},
                  ),
                  const Text('Remember me'),
                  const Spacer(),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  const ForgotPassword ()),
                      );

                    },
                    child: const Text('Forgot password'),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>   const CustomizeInterestsScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black, backgroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 120, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: const BorderSide(color: Colors.black, width: 2),
                  ),
                ),
                child: const Text('LOG IN'),
              ),
              const SizedBox(height: 20),
              const Text('or continue with'),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const Icon(Icons.search_rounded), // Google icon
                    iconSize: 40,
                    onPressed: () {
                      // Google sign-in functionality
                    },
                  ),
                  const SizedBox(width: 20),
                  IconButton(
                    icon: const Icon(Icons.facebook), // Facebook icon
                    iconSize: 40,
                    onPressed: () {
                      // Facebook sign-in functionality
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20),
              RichText(
                text: TextSpan(
                  text: "Don't have an account? ",
                  style: const TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      text: 'Sign up',
                      style: const TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // Navigate to sign-up page
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignUpScreen(),
                            ),
                          );
                        },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 70),
              Container(
                height: 2,
                width: 80,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}