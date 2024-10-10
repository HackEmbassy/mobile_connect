import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:herhealthconnect/Components/Body/BodyWidget.dart';
import 'package:herhealthconnect/Components/Body/Model/BodyConfig.dart';
import 'package:herhealthconnect/Components/Button/ButtonWidget.dart';
import 'package:herhealthconnect/Components/Button/Model/ButtonConfig.dart';
import 'package:herhealthconnect/Components/Gap.dart';
import 'package:herhealthconnect/Core/AppUtils/Form_Validator.dart';
import 'package:herhealthconnect/Core/AppUtils/app_ui_components.dart';
import 'package:herhealthconnect/Core/CoreFolder/app.locator.dart';
import 'package:herhealthconnect/Core/CoreFolder/app.router.dart';
import 'package:herhealthconnect/Core/Helpers/veiwModel/auth_viewmodel.dart';
import 'package:herhealthconnect/Core/router/page_router.dart';
import 'package:herhealthconnect/assets/app_colors.dart';
import 'package:stacked/stacked.dart';
import '../../../Components/Image/ImageView.dart';
import '../../../Components/Image/Model/ImageConfig.dart';
import '../../../assets/app_image.dart';

class ProfessionalSignUpScreen extends StatefulWidget {
  const ProfessionalSignUpScreen({super.key});

  @override
  _ProfessionalSignUpScreenState createState() =>
      _ProfessionalSignUpScreenState();
}

class _ProfessionalSignUpScreenState extends State<ProfessionalSignUpScreen> {
  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
  }

  bool _isPasswordVisible = false;
  final fullname = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final address = TextEditingController();
  final state = TextEditingController();
  final city = TextEditingController();
  final phone = TextEditingController();
  String _locationMessage = "";
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
      print(_locationMessage);
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AuthViewmodel>.reactive(
        viewModelBuilder: () => locator<AuthViewmodel>(),
        disposeViewModel: false,
        // onDispose: (viewModel) => dispose(),
        builder: (_, model, __) {
          return BodyWidget(
            config: BodyConfig(
              child: SingleChildScrollView(
                child: Form(
                  key: model.profKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Gap(
                        height: 30,
                      ),
                      ImageView(
                        imageConfig: ImageConfig(
                          imageURL: AppImage.applogo,
                          imageType: ImageType.asset,
                          height: 80.97,
                          width: 150.62,
                        ),
                      ),
                      const SizedBox(height: 30), // Space for the status bar
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.arrow_back_rounded,
                                color: Colors.black),
                            onPressed: () {
                              // Action for back button
                              PageRouter.pop();
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
                                colors: [Color(0xff244599), Color(0xff0C1733)],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ).createShader(
                                Rect.fromLTWH(
                                    0, 0, bounds.width, bounds.height),
                              ),
                              child: const Text(
                                'Create Your Professional\nAccount',
                                textAlign: TextAlign.center,
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
                              controller: fullname,
                              validator: FieldValidator.validateName(),
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
                              controller: email,
                              validator: FieldValidator.validateEmail(),
                              keyboardType: TextInputType.emailAddress,
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
                            TextFormField(
                              controller: phone,
                              validator: FieldValidator.validateString(),
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.phone),
                                labelText: 'Phone Number',
                                filled: true,
                                fillColor: Colors.grey[200],
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
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
                            const SizedBox(height: 20),
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
                            const SizedBox(height: 20),
                            TextFormField(
                              controller: address,
                              validator: FieldValidator.validateString(),
                              decoration: InputDecoration(
                                prefixIcon:
                                    const Icon(Icons.location_on_outlined),
                                labelText: 'Address',
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
                              controller: password,
                              validator:
                                  FieldValidator.validatePassword(password),
                              obscureText: !_isPasswordVisible,
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
                            const SizedBox(height: 50),
                            // Sign Up Button
                            Container(
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xff244599),
                                    Color(0xff0C1733)
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: ButtonWidget(
                                config: ButtonConfig(
                                  text: "SIGN UP",
                                  onPressed: () {
                                    if (model.profKey.currentState!
                                        .validate()) {
                                      PageRouter.pushNamed(
                                          Routes.professionalInfoScreen,
                                          args: ProfessionalInfoScreenArguments(
                                              fname: fullname.text,
                                              email: email.text,
                                              state: state.text,
                                              city: city.text,
                                              address: address.text,
                                              phone: phone.text,
                                              lat: latitude.toString(),
                                              long: long.toString(),
                                              password: password.text));
                                    }
                                  },
                                  buttonColor: Colors.transparent,
                                  buttonOutlinedColor: Colors.transparent,
                                  textColor: AppColors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
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
                                        color: Color(0xff26144B),
                                        fontWeight: FontWeight.bold,
                                      ),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          // Navigate to login page
                                          PageRouter.pushNamed(
                                              Routes.professionalLoginPage);
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
            ),
          );
        });
  }
}
