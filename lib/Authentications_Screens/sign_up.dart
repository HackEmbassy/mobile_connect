import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geolocator/geolocator.dart';
import 'package:herhealthconnect/Components/Button/ButtonWidget.dart';
import 'package:herhealthconnect/Components/Button/Model/ButtonConfig.dart';
import 'package:herhealthconnect/Components/Gap.dart';
import 'package:herhealthconnect/Core/AppUtils/Form_Validator.dart';
import 'package:herhealthconnect/Core/CoreFolder/app.locator.dart';
import 'package:herhealthconnect/Core/Helpers/Model/create_user_model_entity/create_user_model_entity.dart';
import 'package:herhealthconnect/Core/Helpers/veiwModel/auth_viewmodel.dart';
import 'package:herhealthconnect/assets/app_colors.dart';
import 'package:stacked/stacked.dart';
import '../../Components/Image/ImageView.dart';
import '../../Components/Image/Model/ImageConfig.dart';
import '../../assets/app_image.dart';
//import '../kyc/kyc_1.dart';
import '../Screens/kyc/kyc_1.dart';
import 'login.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
  }

  String _locationMessage = "";
  final fullname = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final age = TextEditingController();
  final state = TextEditingController();
  final city = TextEditingController();
  final phone = TextEditingController();
  final gender = TextEditingController();
  bool _isPasswordVisible = false;
  String? long, latitude;

  Future<void> _getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    try{
      serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      setState(() {
        _locationMessage = "Location services are disabled.";
      });
      return;
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        setState(() {
          _locationMessage = "Location permissions are denied";
        });
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      setState(() {
        _locationMessage = "Location permissions are permanently denied.";
      });
      return;
    }

    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    setState(() {
      _locationMessage = "${position.longitude},${position.latitude}";
      long = position.longitude.toString();
      latitude = position.latitude.toString();
    });
    print(_locationMessage);
    }
    catch(e){
      print(e.toString());

    }
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AuthViewmodel>.reactive(
        disposeViewModel: false,
        onViewModelReady: (model) {
          _getCurrentLocation();
        },
        viewModelBuilder: () => locator<AuthViewmodel>(),
        builder: (_, model, __) {
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: SingleChildScrollView(
                child: Form(
                  key: model.formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Gap(
                        height: 50,
                      ),
                      ImageView(
                        imageConfig: ImageConfig(
                          imageURL: AppImage.logo,
                          height: 40.97,
                          width: 140.62,
                          imageType: ImageType.asset,
                        ),
                      ),
                      const Gap(height: 40), // Space for the status bar
                      IconButton(
                        icon: const Icon(Icons.arrow_back_ios_new_rounded,
                            color: Colors.black),
                        onPressed: () {
                          // Action for back button
                          Navigator.pop(context);
                        },
                      ),
                      Center(
                        child: Column(
                          children: [
                            const SizedBox(height: 20),
                            const Text(
                              'Create account',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            const Gap(height: 20),
                            // Full Name TextField
                            TextFormField(
                              controller: fullname,
                              validator: FieldValidator.validateName(),
                              decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.person_outline),
                                labelText: 'Full name',
                                filled: true,
                                fillColor: Colors.grey[200],
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                            const Gap(height: 15),
                            // Email TextField
                            TextFormField(
                              controller: email,
                              validator: FieldValidator.validateEmail(),
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
                            const Gap(height: 15),
                            // Password TextField
                            TextFormField(
                              obscureText: !_isPasswordVisible,
                              controller: password,
                              validator:
                                  FieldValidator.validatePassword(password),
                              decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.lock_outline),
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
                                labelText: 'Password',
                                filled: true,
                                fillColor: Colors.grey[200],
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                            const Gap(height: 15),
                            TextFormField(
                              controller: age,
                              validator: FieldValidator.validateString(),
                              decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.person_2_outlined),
                                labelText: 'Age',
                                filled: true,
                                fillColor: Colors.grey[200],
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                            const Gap(height: 15),
                            TextFormField(
                              controller: state,
                              validator: FieldValidator.validateString(),
                              decoration: InputDecoration(
                                prefixIcon:
                                    const Icon(Icons.location_on_outlined),
                                labelText: 'State',
                                filled: true,
                                fillColor: Colors.grey[200],
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                            const Gap(height: 15),
                            TextFormField(
                              controller: city,
                              validator: FieldValidator.validateString(),
                              decoration: InputDecoration(
                                prefixIcon:
                                    const Icon(Icons.location_on_outlined),
                                labelText: 'City',
                                filled: true,
                                fillColor: Colors.grey[200],
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                            const Gap(height: 15),
                            TextFormField(
                              controller: phone,
                              validator: FieldValidator.validateString(),
                              decoration: InputDecoration(
                                prefixIcon:
                                    const Icon(Icons.location_on_outlined),
                                labelText: 'Phone Number',
                                filled: true,
                                fillColor: Colors.grey[200],
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                            const Gap(height: 30),
                            // Sign Up Button
                            ButtonWidget(
                                config: ButtonConfig(
                              text: "SIGN UP",
                              loading: model.isLoading ?? false,
                              onPressed: () {
                                if (model.formKey.currentState!.validate()) {
                                  model.signUpUser(CreateUserModelEntity(
                                      fullName: fullname.text,
                                      age: int.parse(age.text),
                                      city: city.text,
                                      gender: "Female",
                                      state: state.text,
                                      email: email.text,
                                      password: password.text,
                                      phone: phone.text,
                                      longitude: long.toString(),
                                      latitude: latitude.toString()));
                                }
                              },
                              height: 50,
                              // width: 120,
                              textColor: AppColors.black,
                              buttonColor: AppColors.white,
                              buttonOutlinedColor: AppColors.black,
                              radius: 12.r,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            )),
                            // ElevatedButton(
                            //   onPressed: () {
                            //     // Action for sign-up button
                            //   },
                            //   style: ElevatedButton.styleFrom(
                            //     foregroundColor: Colors.black,
                            //     backgroundColor: Colors.white,
                            //     padding: const EdgeInsets.symmetric(
                            //         horizontal: 120, vertical: 15),
                            //     shape: RoundedRectangleBorder(
                            //       borderRadius: BorderRadius.circular(12),
                            //       side: const BorderSide(color: Colors.black, width: 2),
                            //     ),
                            //   ),
                            //   child: const Text(
                            //     'SIGN UP',
                            //     style: TextStyle(fontSize: 16),
                            //   ),
                            // ),
                            const Gap(height: 20),
                            const Text(
                              'or continue with',
                              style: TextStyle(color: Colors.black54),
                            ),
                            const SizedBox(height: 15),
                            // Social Media Buttons
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  icon: const Icon(Icons.search_rounded),
                                  // Google logo asset
                                  iconSize: 40,
                                  onPressed: () {
                                    // Google sign-in action
                                  },
                                ),
                                const SizedBox(width: 20),
                                IconButton(
                                  icon: const Icon(Icons.facebook),
                                  // Facebook logo asset
                                  iconSize: 40,
                                  onPressed: () {
                                    // Facebook sign-in action
                                  },
                                ),
                              ],
                            ),
                            const SizedBox(height: 30),
                            Center(
                              child: RichText(
                                text: TextSpan(
                                  text: 'Already have an account? ',
                                  style: const TextStyle(color: Colors.black),
                                  children: [
                                    TextSpan(
                                      text: 'Log in',
                                      style: const TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          // Navigate to login page
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const LoginPage(),
                                            ),
                                          );
                                        },
                                    ),
                                  ],
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
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
