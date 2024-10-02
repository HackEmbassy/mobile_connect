import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:herhealthconnect/Components/Button/ButtonWidget.dart';
import 'package:herhealthconnect/Components/Button/Model/ButtonConfig.dart';
import 'package:herhealthconnect/Components/Gap.dart';
import 'package:herhealthconnect/Components/TextView/Models/TextViewConfig.dart';
import 'package:herhealthconnect/Components/TextView/TextView.dart';
import 'package:herhealthconnect/Core/AppUtils/app_ui_components.dart';
import 'package:herhealthconnect/Core/CoreFolder/app.locator.dart';
import 'package:herhealthconnect/Core/Helpers/Model/user_model_entity/user_model_entity.dart';
import 'package:herhealthconnect/Core/Helpers/veiwModel/auth_viewmodel.dart';
import 'package:herhealthconnect/assets/app_colors.dart';
import 'package:stacked/stacked.dart';

import '../../Components/Image/ImageView.dart';
import '../../Components/Image/Model/ImageConfig.dart';
import '../../assets/app_image.dart';
import 'kyc.dart';

class CustomizeInterestsScreen extends StatefulWidget {
  const CustomizeInterestsScreen(
      {super.key,
      required this.fname,
      required this.email,
      required this.password,
      required this.age,
      required this.state,
      required this.city,
      required this.phone,
      required this.gender,
      required this.long,
      required this.latitude});
  final String fname,
      email,
      password,
      age,
      state,
      city,
      phone,
      gender,
      long,
      latitude;

  @override
  // ignore: library_private_types_in_public_api
  _CustomizeInterestsScreenState createState() =>
      _CustomizeInterestsScreenState();
}

class _CustomizeInterestsScreenState extends State<CustomizeInterestsScreen> {
  bool scheduleHealthAppointments = false;
  bool trackMenstrualCycle = false;
  bool improvePhysicalFitness = false;
  bool maintainHealthyDiet = false;
  List<String> selectedValues = [];
  String? selectedValue;

  Widget _buildCircularCheckbox(bool value) {
    return Container(
      width: 24.0,
      height: 24.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Color(0xff244599)),
      ),
      child: value
          ? const Center(
              child: Icon(
                Icons.check,
                color: Color(0xff244599),
                size: 16.0,
              ),
            )
          : const SizedBox.shrink(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => locator<AuthViewmodel>(),
        disposeViewModel: false,
        builder: (_, model, __) {
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
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
                      const SizedBox(width: 8),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [],
                      ),
                    ],
                  ),
                  const Text(
                    'What will you love to use HerHealth for today?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff244599),
                      fontFamily: 'NunitoSans-Bold',
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Customize your interests',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      fontFamily: 'NunitoSans-Regular',

                    ),
                  ),
                  const SizedBox(height: 16),
                  _buildInterestItem(
                    'Schedule Health Appointments',
                    'Quickly and easily book a session with a gynecologist, obstetrician, fitness coach, or dietitian',
                    scheduleHealthAppointments,
                    (value) {
                      setState(() {
                        scheduleHealthAppointments = value!;
                        selectedValue = 'appointment';
                        if (!selectedValues.contains(selectedValue)) {
                          selectedValues.add(selectedValue.toString());
                        } else {
                          selectedValues.remove(selectedValue);
                        }
                      });
                    },
                  ),
                  const SizedBox(height: 16),
                  _buildInterestItem(
                    'Track Menstrual Cycle',
                    'Track and manage your menstrual cycle with ease',
                    trackMenstrualCycle,
                    (value) {
                      setState(() {
                        trackMenstrualCycle = value!;
                        selectedValue = 'menstral';
                        if (!selectedValues.contains(selectedValue)) {
                          selectedValues.add(selectedValue.toString());
                        } else {
                          selectedValues.remove(selectedValue);
                        }
                      });
                    },
                  ),
                  const SizedBox(height: 16),
                  _buildInterestItem(
                    'Improve Physical Fitness',
                    'Follow personalized workout plans and access workout tutorials and fitness tips recommended by your fitness coach.',
                    improvePhysicalFitness,
                    (value) {
                      setState(() {
                        improvePhysicalFitness = value!;
                        selectedValue = 'physical';
                        if (!selectedValues.contains(selectedValue)) {
                          selectedValues.add(selectedValue.toString());
                        } else {
                          selectedValues.remove(selectedValue);
                        }
                      });
                    },
                  ),
                  const SizedBox(height: 16),
                  _buildInterestItem(
                    'Maintain a Healthy Diet',
                    'Get personalized meal plans and access nutritional advice to maintain a balanced and healthy diet.',
                    maintainHealthyDiet,
                    (value) {
                      setState(() {
                        maintainHealthyDiet = value!;
                        selectedValue = 'diet';
                        if (!selectedValues.contains(selectedValue)) {
                          selectedValues.add(selectedValue.toString());
                        } else {
                          selectedValues.remove(selectedValue);
                        }
                      });
                    },
                  ),
                  const Spacer(),
                  ButtonWidget(
                    config: ButtonConfig(
                        onPressed: () async {
                          if (selectedValues.isNotEmpty) {
                            await model.signUpUser(UserModelEntity(
                              fullName: widget.fname,
                              age: int.parse(widget.age),
                              city: widget.city,
                              gender: "female",
                              state: widget.state,
                              email: widget.email,
                              password: widget.password,
                              phone: "+234${widget.phone}",
                              longitude: double.parse(widget.long),
                              latitude: double.parse(widget.latitude),
                              interests: selectedValues,
                            ));
                          } else {
                            AppUiComponents.triggerNotification(
                                "Please select Interest to Proceed",
                                error: true);
                          }
                        },
                        loading: model.isLoading ?? false,
                        text: "CONTINUE",
                        height: 50.h,
                        fontSize: 18.sp,
                        textColor: AppColors.white,
                        buttonColor:Color(0xff244599),
                        buttonOutlinedColor: Color(0xff0C1733)),
                  ),
//                   Center(
//                     child: ElevatedButton(
//                       onPressed: () {
//                         if (selectedValues.isNotEmpty) {
//                           model.signUpUser(UserModelEntity(
//                             fullName: widget.fname,
//                             age: int.parse(widget.age),
//                             city: widget.city,
//                             gender: "female",
//                             state: widget.state,
//                             email: widget.email,
//                             password: widget.password,
//                             phone: "+234${widget.phone}",
//                             longitude: double.parse(widget.long),
//                             latitude: double.parse(widget.latitude),
//                             interests: selectedValues,
//                           ));
//                         } else {
//                           AppUiComponents.triggerNotification(
//                               "Please select Interest to Proceed",
//                               error: true);
//                         }
//                         // Navigator.push(
//                         //   context,
//                         //   MaterialPageRoute(
//                         //       builder: (context) =>
//                         //           const PersonalInformation()),
//                         // );
// // Handle continue button press
//                       },
//                       style: ElevatedButton.styleFrom(
//                         padding: const EdgeInsets.symmetric(
//                             horizontal: 80, vertical: 16),
//                         textStyle: const TextStyle(
//                           fontSize: 18,
//                         ),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                       ),
//                       child: const Text('CONTINUE'),
//                     ),
//                   ),
                ],
              ),
            ),
          );
        });
  }

  Widget _buildInterestItem(
      String title, String subtitle, bool value, Function(bool?) onChanged) {
    return GestureDetector(
      onTap: () {
        onChanged(!value);
      },
      child: Row(
        children: [
          _buildCircularCheckbox(value),
          const SizedBox(width: 16),
          SizedBox(
            width: 50, // Set the desired width
            height: 50,
            child: ImageView(
              imageConfig: ImageConfig(
                imageURL: AppImage.kyclogo, // Your image path
                imageType: ImageType
                    .asset, // Specify if it's an asset or a network image
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  subtitle,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
