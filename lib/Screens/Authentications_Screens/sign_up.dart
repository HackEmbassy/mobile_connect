import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geolocator/geolocator.dart';
import 'package:herhealthconnect/Components/Button/ButtonWidget.dart';
import 'package:herhealthconnect/Components/Button/Model/ButtonConfig.dart';
import 'package:herhealthconnect/Components/Gap.dart';
import 'package:herhealthconnect/Core/AppUtils/Form_Validator.dart';
import 'package:herhealthconnect/Core/AppUtils/app_ui_components.dart';
import 'package:herhealthconnect/Core/CoreFolder/app.locator.dart';
import 'package:herhealthconnect/Core/Helpers/veiwModel/auth_viewmodel.dart';
import 'package:herhealthconnect/Screens/kyc/kyc_1.dart';
import 'package:herhealthconnect/assets/app_colors.dart';
import 'package:stacked/stacked.dart';
import '../../Components/Image/ImageView.dart';
import '../../Components/Image/Model/ImageConfig.dart';
import '../../assets/app_image.dart';
//import '../kyc/kyc_1.dart';
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
    try {
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
            AppUiComponents.triggerNotification(_locationMessage, error: true);
          });
          return;
        }
      }

      if (permission == LocationPermission.deniedForever) {
        setState(() {
          _locationMessage = "Location permissions are permanently denied.";
          AppUiComponents.triggerNotification(_locationMessage, error: true);
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
      // print(_locationMessage);
    } catch (e) {
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Gap(
                        height: 50,
                      ),
                      ImageView(
                        imageConfig: ImageConfig(
                          imageURL: AppImage.applogo,
                          height: 80.97,
                          width: 150.62,
                          imageType: ImageType.asset,
                        ),
                      ),
                      const Gap(height: 40), // Space for the status bar
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.arrow_back,
                                color: Colors.black),
                            onPressed: () {
                              // Action for back button
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                      Center(
                        child: Column(children: [
                          const SizedBox(height: 20),
                          ShaderMask(
                            shaderCallback: (bounds) => const LinearGradient(
                              colors: [Color(0xff244599), Color(0xff0C1733)],
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
                            keyboardType: TextInputType.number,
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
                            keyboardType: TextInputType.number,
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
                          Container(
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [
                                  Color(0xff244599),
                                  Color(0xff0C1733)
                                ], // Example gradient colors
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(
                                  12.r), // Use radius from config
                            ),
                            child: ButtonWidget(
                                config: ButtonConfig(
                              text: "SIGN UP",
                              loading: model.isLoading ?? false,
                              onPressed: () {
                                if (model.formKey.currentState!.validate()) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            CustomizeInterestsScreen(
                                              fname: fullname.text,
                                              email: email.text,
                                              password: password.text,
                                              age: age.text,
                                              state: state.text,
                                              city: city.text,
                                              phone: phone.text,
                                              gender: gender.text,
                                              long: long.toString(),
                                              latitude: latitude.toString(),
                                            )),
                                  );
                                }
                              },
                              height: 50,
                              // width: 120,
                              textColor: AppColors.white,
                              buttonOutlinedColor: AppColors.black,
                              radius: 12.r,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            )),
                          ),
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
                                      color: Color(0xff26144B),
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
                        ]),
                      ),
                      const Gap(
                        height: 30,
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
