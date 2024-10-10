import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:herhealthconnect/Components/Body/BodyWidget.dart';
import 'package:herhealthconnect/Components/Body/Model/BodyConfig.dart';
import 'package:herhealthconnect/Components/Button/ButtonWidget.dart';
import 'package:herhealthconnect/Components/Button/Model/ButtonConfig.dart';
import 'package:herhealthconnect/Components/Gap.dart';
import 'package:herhealthconnect/Core/AppUtils/Form_Validator.dart';
import 'package:herhealthconnect/Core/CoreFolder/app.locator.dart';
import 'package:herhealthconnect/Core/Helpers/Model/login_model_entity/login_model_entity.dart';
import 'package:herhealthconnect/Core/Helpers/veiwModel/auth_viewmodel.dart';
import 'package:herhealthconnect/assets/app_colors.dart';
import 'package:stacked/stacked.dart';
import '../../../Components/Image/ImageView.dart';
import '../../../Components/Image/Model/ImageConfig.dart';
import '../../../assets/app_image.dart';
import 'Professional_forgot_password.dart';
import 'Professional_sign_up.dart';

class ProfessionalLoginPage extends StatefulWidget {
  const ProfessionalLoginPage({super.key});

  @override
  _ProfessionalLoginPageState createState() => _ProfessionalLoginPageState();
}

class _ProfessionalLoginPageState extends State<ProfessionalLoginPage> {
  bool _isPasswordVisible = false;

  final email = TextEditingController();
  final password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AuthViewmodel>.reactive(
        viewModelBuilder: () => locator<AuthViewmodel>(),
        disposeViewModel: false,
        builder: (_, model, __) {
          return BodyWidget(
            config: BodyConfig(
              loading: model.isBusy,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: SingleChildScrollView(
                  child: Form(
                    key: model.profLogin,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Gap(height: 40),
                        ImageView(
                          imageConfig: ImageConfig(
                            imageURL: AppImage.applogo,
                            imageType: ImageType.asset,
                            height: 60.97,
                            width: 140.62,
                          ),
                        ),
                        const SizedBox(height: 60),
                        const SizedBox(height: 10),
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
                            'Welcome back',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'NunitoSans',
                              color: Color(0xff244599),
                            ),
                          ),
                        ),
                        const SizedBox(height: 40),
                        TextFormField(
                          controller: email,
                          validator: FieldValidator.validateEmail(),
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
                        const SizedBox(height: 30),
                        TextFormField(
                          controller: password,
                          keyboardType: TextInputType.text,
                          validator: FieldValidator.validatePassword(password),
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
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ProfessionalForgotPassword()),
                                );
                              },
                              child: ShaderMask(
                                shaderCallback: (bounds) =>
                                    const LinearGradient(
                                  colors: [
                                    Color(0xff244599),
                                    Color(0xff0C1733)
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ).createShader(
                                  Rect.fromLTWH(
                                      0, 0, bounds.width, bounds.height),
                                ),
                                child: const Text(
                                  'Forgot password',
                                  style: TextStyle(),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 50),
                        Container(
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [Color(0xff244599), Color(0xff0C1733)],
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: ButtonWidget(
                            config: ButtonConfig(
                              text: "LOG IN",
                              loading: model.isLoading ?? false,
                              onPressed: () {
                                if (model.profLogin.currentState!.validate()) {
                                  model.loginProf(
                                    LoginModelEntity(
                                      email: email.text,
                                      password: password.text,
                                    ),
                                  );
                                }
                              },
                              buttonColor: Colors.transparent,
                              buttonOutlinedColor: Colors.transparent,
                              fontSize: 16,
                              textColor: AppColors.white,
                            ),
                          ),
                        ),
                        const SizedBox(height: 40),
                        const Text('or continue with'),
                        const SizedBox(height: 40),
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
                        const SizedBox(height: 100),
                        RichText(
                          text: TextSpan(
                            text: "Don't have an account? ",
                            style: const TextStyle(color: Colors.black),
                            children: [
                              TextSpan(
                                text: 'Sign up',
                                style: const TextStyle(
                                  color: Color(0xff26144B),
                                  fontWeight: FontWeight.bold,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    // Navigate to sign-up page
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const ProfessionalSignUpScreen(),
                                      ),
                                    );
                                  },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
