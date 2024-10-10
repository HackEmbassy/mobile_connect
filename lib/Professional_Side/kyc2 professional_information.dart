import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:herhealthconnect/Components/Body/BodyWidget.dart';
import 'package:herhealthconnect/Components/Body/Model/BodyConfig.dart';
import 'package:herhealthconnect/Components/Button/ButtonWidget.dart';
import 'package:herhealthconnect/Components/Button/Model/ButtonConfig.dart';
import 'package:herhealthconnect/Core/AppUtils/Form_Validator.dart';
import 'package:herhealthconnect/Core/CoreFolder/app.locator.dart';
import 'package:herhealthconnect/Core/Helpers/Model/create_profession_model_entity/create_profession_model_entity.dart';
import 'package:herhealthconnect/Core/Helpers/veiwModel/auth_viewmodel.dart';
import 'package:herhealthconnect/assets/app_colors.dart';
import 'package:stacked/stacked.dart';

import '../../Components/Image/ImageView.dart';
import '../../Components/Image/Model/ImageConfig.dart';
import '../../assets/app_image.dart';
// import 'kyc3 professional services.dart';

class ProfessionalInfoScreen extends StatelessWidget {
  ProfessionalInfoScreen(
      {super.key,
      required this.fname,
      required this.email,
      required this.state,
      required this.city,
      required this.address,
      required this.phone,
      required this.lat,
      required this.long,
      required this.password});
  final String fname, email, state, city, address, phone, lat, long, password;

  final profession = TextEditingController();
  final bio = TextEditingController();
  final specialty = TextEditingController();
  final years = TextEditingController();
  final clinicName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AuthViewmodel>.reactive(
      viewModelBuilder: () => locator<AuthViewmodel>(),
      disposeViewModel: false,
      onViewModelReady: (model) {},
      builder: (_, model, __) {
        return BodyWidget(
          config: BodyConfig(
            loading: model.isBusy,
            child: SingleChildScrollView(
              // Wrapping everything inside a scroll view
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15.w,
                  vertical: 10.h,
                ),
                child: Form(
                  key: model.activeKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ImageView(
                            imageConfig: ImageConfig(
                              imageURL: AppImage.applogo,
                              imageType: ImageType.asset,
                              width: 140.62, // Set the desired width
                              height: 40.97,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      // const Row(
                      //   mainAxisAlignment: MainAxisAlignment.end,
                      //   children: [
                      //     Text('2 of 5 '),
                      //   ],
                      // ),
                      const SizedBox(
                          height: 2), // Adding spacing to separate sections
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
                        'Profession',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        validator: FieldValidator.validateString(),
                        controller: profession,
                        decoration: const InputDecoration(
                          hintText: 'Eg. Doctor, Coach, Dietitian',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Clinic Name',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        validator: FieldValidator.validateString(),
                        controller: clinicName,
                        decoration: const InputDecoration(
                          hintText: 'Name of Your Hospital or Clinic',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Specialty',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        validator: FieldValidator.validateString(),
                        controller: specialty,
                        decoration: const InputDecoration(
                          hintText: 'Your Specialty',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Years of experience',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        validator: FieldValidator.validateString(),
                        controller: years,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Professional Summary',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        validator: FieldValidator.validateString(),
                        controller: bio,
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
                        child: ButtonWidget(
                          config: ButtonConfig(
                            text: "CONTINUE",
                            onPressed: () {
                              if (model.activeKey.currentState!.validate()) {
                                model.signUpProf(CreateProfessionModelEntity(
                                  address: address,
                                  bio: bio.text,
                                  city: city,
                                  clinicOrGym: clinicName.text,
                                  email: email,
                                  experienceYears: int.parse(years.text),
                                  fullName: fname,
                                  latitude: double.parse(lat),
                                  longitude: double.parse(long),
                                  password: password,
                                  phone: "+234${phone}",
                                  profession: profession.text,
                                  specialty: specialty.text,
                                  state: state,
                                ));
                              }
                            },
                            loading: model.isLoading ?? false,
                            buttonColor: Colors.transparent,
                            fontSize: 16,
                            textColor: AppColors.white,
                            fontWeight: FontWeight.w600,
                            buttonOutlinedColor: Colors.transparent,
                          ),
                        ),
                        // ElevatedButton(
                        //   onPressed: () {
                        //     Navigator.push(
                        //       context,
                        //       MaterialPageRoute(
                        //           builder: (context) =>
                        //               ProfessionalServicesAndOpenHoursScreen()),
                        //     ); // Action for sign-up button
                        //   },
                        //   style: ElevatedButton.styleFrom(
                        //     backgroundColor:
                        //         Colors.transparent, // Make background transparent
                        //     shadowColor: Colors.transparent,
                        //     padding: const EdgeInsets.symmetric(
                        //         horizontal: 120, vertical: 15),
                        //     shape: RoundedRectangleBorder(
                        //       borderRadius: BorderRadius.circular(20),
                        //       side: const BorderSide(
                        //           color: Color(0xFF3A6EA5), width: 2),
                        //     ),
                        //   ),
                        //   child: const Text(
                        //     'CONTINUE',
                        //     style: TextStyle(fontSize: 16, color: Colors.white),
                        //   ),
                        // ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
