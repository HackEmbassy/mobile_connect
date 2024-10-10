import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:herhealthconnect/Components/Body/BodyWidget.dart';
import 'package:herhealthconnect/Components/Body/Model/BodyConfig.dart';
import 'package:herhealthconnect/Components/EditField/EditFieldView.dart';
import 'package:herhealthconnect/Components/EditField/Model/EditFieldConfig.dart';
import 'package:herhealthconnect/Components/Gap.dart';
import 'package:herhealthconnect/Components/Image/ImageView.dart';
import 'package:herhealthconnect/Components/Image/Model/ImageConfig.dart';
import 'package:herhealthconnect/Components/TextView/Models/TextViewConfig.dart';
import 'package:herhealthconnect/Components/TextView/TextView.dart';
import 'package:herhealthconnect/Core/AppUtils/app_ui_components.dart';
import 'package:herhealthconnect/Core/CoreFolder/app.locator.dart';
import 'package:herhealthconnect/Core/Helpers/veiwModel/profile_viewmodel.dart';
import 'package:herhealthconnect/Screens/User_Dashboard/book_a_session_2.dart';
import 'package:herhealthconnect/assets/app_colors.dart';
import 'package:herhealthconnect/assets/app_image.dart';
import 'package:stacked/stacked.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfileViewmodel>.reactive(
        viewModelBuilder: () => locator<ProfileViewmodel>(),
        disposeViewModel: false,
        onViewModelReady: (model) {
          model.professional();
        },
        builder: (_, model, __) {
          return BodyWidget(
            config: BodyConfig(
              loading: model.isBusy,
              childPadding: EdgeInsets.zero,
              backgroundColor: AppColors.white,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    const Gap(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20.w,
                      ),
                      child: Row(
                        children: [
                          ImageView(
                            imageConfig: ImageConfig(
                              imageURL: 'assets/images2/image7_9943697.png',
                              imageType: ImageType.asset,
                            ),
                          ),
                          const Gap(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextView(
                                  config: TextViewConfig(
                                    text: "Welcome Kaka!",
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.tPrimary,
                                  ),
                                ),
                                TextView(
                                  config: TextViewConfig(
                                    text: "How are you feeling today",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: AppColors.boldBlue,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ImageView(
                            imageConfig: ImageConfig(
                              imageURL: 'assets/images/notify.png',
                              imageType: ImageType.asset,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Header Section Above
                    const Gap(
                      height: 20,
                    ),
                    // Search Bar Below
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20.w,
                      ),
                      child: EditFormField(
                        config: EditFieldConfig(
                          radius: 27.r,
                          filledColor: const Color(0xfff2f6ff),
                          label: 'Search Something',
                          prefixIconWidget: Icon(
                            Icons.search,
                            color: const Color(0xff767676),
                            size: 24.sp,
                          ),
                        ),
                      ),
                    ),
                    const Gap(
                      height: 20,
                    ),
                    Container(
                      transform: Matrix4.translationValues(0, 155, 0),
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(
                        horizontal: 15.w,
                        vertical: 10.h,
                      ),
                      decoration: const BoxDecoration(
                        color: AppColors.tund,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Gap(height: 70),
                          TextView(
                            config: TextViewConfig(
                              text: 'Our Experts',
                              fontSize: 19,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const Gap(height: 15),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ...?model.profData?.data!.map(
                                  (e) => GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => BookingScreen(
                                            name: e.fullName.toString(),
                                            specialty: e.specialty.toString(),
                                            address:
                                                "${e.address.toString()} ${e.city.toString()}",
                                          ),
                                        ),
                                      );
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        right: 10.w,
                                      ),
                                      child: Column(
                                        children: [
                                          ImageView(
                                            imageConfig: ImageConfig(
                                              imageURL: AppImage.expert,
                                              imageType: ImageType.asset,
                                              height: 90,
                                              width: 90,
                                            ),
                                          ),
                                          TextView(
                                            config: TextViewConfig(
                                              text: e.fullName.toString(),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          const Gap(
                                            height: 5,
                                          ),
                                          TextView(
                                            config: TextViewConfig(
                                              text:
                                                  "Location: ${e.city.toString()}",
                                              fontSize: 16,
                                              fontWeight: FontWeight.w800,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    Transform(
                      transform: Matrix4.translationValues(0, -320, 0),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.w,
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 190,
                              padding: EdgeInsets.symmetric(
                                horizontal: 15.w,
                                vertical: 10.h,
                              ),
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xff244599),
                                    Color(0xff0C1733)
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      TextView(
                                        config: TextViewConfig(
                                          text: "Upcoming Appointment",
                                          fontSize: 12.sp,
                                          color: AppColors.white,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Icon(
                                        CupertinoIcons.chevron_right,
                                        color: AppColors.white,
                                        size: 20.sp,
                                      ),
                                    ],
                                  ),
                                  const Gap(
                                    height: 10,
                                  ),
                                  Wrap(
                                    children: [
                                      ImageView(
                                        imageConfig: ImageConfig(
                                          imageURL: AppImage.lender,
                                          imageType: ImageType.asset,
                                        ),
                                      ),
                                      const Gap(width: 10),
                                      TextView(
                                        config: TextViewConfig(
                                          text: "22 October, 2024",
                                          fontSize: 12,
                                          color: AppColors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Gap(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      ImageView(
                                        imageConfig: ImageConfig(
                                          imageURL: AppImage.clock,
                                          imageType: ImageType.asset,
                                        ),
                                      ),
                                      const Gap(width: 10),
                                      Expanded(
                                        child: TextView(
                                          config: TextViewConfig(
                                            text: "08:00AM - 10:30AM",
                                            fontSize: 12,
                                            color: AppColors.white,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 10.w,
                                          vertical: 5.h,
                                        ),
                                        decoration: BoxDecoration(
                                          color: AppColors.white,
                                          borderRadius:
                                              BorderRadius.circular(50.r),
                                        ),
                                        child: ImageView(
                                          imageConfig: ImageConfig(
                                            imageURL: AppImage.edit,
                                            imageType: ImageType.asset,
                                            height: 20.h,
                                            width: 20.w,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.w),
                              child: Container(
                                width: double.infinity,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 17.w, vertical: 14.h),
                                transform:
                                    Matrix4.translationValues(0.0, -40, 0),
                                decoration: BoxDecoration(
                                  color: AppColors.white,
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                                child: Row(
                                  children: [
                                    ImageView(
                                      imageConfig: ImageConfig(
                                        imageURL: AppImage.kaka,
                                        imageType: ImageType.asset,
                                      ),
                                    ),
                                    const Gap(
                                      width: 6,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          TextView(
                                            config: TextViewConfig(
                                              text: "Dr. Richard Kandowen",
                                              fontSize: 12,
                                              color: const Color(0xff484848),
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          TextView(
                                            config: TextViewConfig(
                                              text: "Obstetrician",
                                              fontSize: 10,
                                              color: const Color(0xff484848),
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    ImageView(
                                      imageConfig: ImageConfig(
                                        imageURL: AppImage.vid,
                                        imageType: ImageType.asset,
                                        height: 30.h,
                                        width: 30.w,
                                        onTap: () {
                                          AppUiComponents.triggerNotification(
                                              'Video Call Scheduled for Next Week',
                                              error: false);
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}

// Background Section
// class BackgroundSection extends StatelessWidget {
//   const BackgroundSection({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Positioned(
//       top: 346,
//       left: -9,
//       right: 0,
//       height: 222,
//       child: Container(
//         decoration: const BoxDecoration(
//           color: Color(0xfff2f6ff),
//         ),
//       ),
//     );
//   }
// }

// class WelcomeIcons extends StatelessWidget {
//   const WelcomeIcons({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Positioned(
//           left: 330,
//           width: 22.678,
//           top: 94.945,
//           height: 23.056,
//           child: Image.asset(
//             'assets/images2/image14_10133985.png',
//             width: 22.678,
//             height: 23.056,
//           ),
//         ),
//         Positioned(
//           left: 29,
//           width: 36,
//           top: 86,
//           height: 35,
//           child: Image.asset(
//             'assets/images2/image8_9943698.png',
//             width: 36,
//             height: 35,
//             fit: BoxFit.cover,
//           ),
//         ),
//         Positioned(
//           left: 335.263,
//           width: 10.6,
//           top: 91,
//           height: 10.54,
//           child: Image.asset(
//             'assets/images2/image15_10133986.png',
//             width: 10.6,
//             height: 10.54,
//           ),
//         ),
//       ],
//     );
//   }
// }

// // Welcome Section
// class WelcomeSection extends StatelessWidget {
//   const WelcomeSection({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Positioned(
//       top: 79,
//       left: 78,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             'Welcome Kaka!',
//             style: TextStyle(
//               fontSize: 20,
//               fontFamily: 'NunitoSans-Bold',
//               decoration: TextDecoration.none,
//             ),
//           ),
//           SizedBox(height: 8),
//           Text(
//             'How are you feeling today.',
//             style: TextStyle(
//               fontSize: 12,
//               color: Color(0xff0c1733),
//               fontFamily: 'NunitoSans-Regular',
//               decoration: TextDecoration.none,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// // Search Bar
// class SearchBar extends StatelessWidget {
//   const SearchBar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 16),
//       decoration: BoxDecoration(
//         color: const Color(0xfff2f6ff),
//         borderRadius: BorderRadius.circular(27),
//       ),
//       child: Row(
//         children: const [
//           Icon(Icons.search, color: Color(0xff767676)),
//           SizedBox(width: 8),
//           Text(
//             'Search something',
//             style: TextStyle(
//               fontSize: 12,
//               color: Color(0xff767676),
//               fontFamily: 'NunitoSans-Regular',
//               decoration: TextDecoration.none,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// // Appointment Card
// class AppointmentCard extends StatelessWidget {
//   const AppointmentCard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         // Appointment Card Background
//         Positioned(
//           left: 26,
//           width: 329,
//           top: 220,
//           height: 156,
//           child: Container(
//             width: 329,
//             height: 156,
//             decoration: BoxDecoration(
//               gradient: const LinearGradient(
//                 colors: [Color(0xff244599), Color(0xff0C1733)],
//               ),
//               borderRadius: BorderRadius.circular(8),
//             ),
//           ),
//         ),

//         // Upcoming Appointment Text
//         const Positioned(
//           left: 51,
//           top: 225,
//           child: Text(
//             'Upcoming Appointment',
//             textAlign: TextAlign.center,
//             style: TextStyle(
//               decoration: TextDecoration.none,
//               fontSize: 10,
//               color: Color(0xffffffff),
//               fontFamily: 'NunitoSans-Bold',
//               fontWeight: FontWeight.normal,
//             ),
//             maxLines: 9999,
//             overflow: TextOverflow.ellipsis,
//           ),
//         ),

//         // Appointment Date
//         const Positioned(
//           left: 59,
//           top: 259,
//           child: Text(
//             '22 October, 2024',
//             textAlign: TextAlign.center,
//             style: TextStyle(
//               decoration: TextDecoration.none,
//               fontSize: 12,
//               color: Color(0xffffffff),
//               fontFamily: 'NunitoSans-Bold',
//               fontWeight: FontWeight.normal,
//             ),
//             maxLines: 9999,
//             overflow: TextOverflow.ellipsis,
//           ),
//         ),

//         // Appointment Time
//         const Positioned(
//           left: 59,
//           top: 293,
//           child: Text(
//             '08:00AM - 10:30AM',
//             textAlign: TextAlign.center,
//             style: TextStyle(
//               decoration: TextDecoration.none,
//               fontSize: 12,
//               color: Color(0xffffffff),
//               fontFamily: 'NunitoSans-Bold',
//               fontWeight: FontWeight.normal,
//             ),
//             maxLines: 9999,
//             overflow: TextOverflow.ellipsis,
//           ),
//         ),

//         // Edit Icon
//         Positioned(
//           left: 311,
//           width: 27,
//           top: 292,
//           height: 27,
//           child: Image.asset(
//             'assets/images2/image1_9943684.png',
//             width: 27,
//             height: 27,
//           ),
//         ),

//         // Extra Icon 1
//         Positioned(
//           left: 334,
//           width: 4.4,
//           top: 238,
//           height: 8,
//           child: Image.asset(
//             'assets/images2/image3_9943688.png',
//             width: 4.4,
//             height: 8,
//           ),
//         ),

//         // Extra Icon 2
//         Positioned(
//           left: 38,
//           width: 14,
//           top: 293,
//           height: 14,
//           child: Image.asset(
//             'assets/images2/image4_9943689.png',
//             width: 14,
//             height: 14,
//           ),
//         ),

//         // Extra Icon 3
//         Positioned(
//           left: 39,
//           width: 12,
//           top: 260,
//           height: 13.2,
//           child: Image.asset(
//             'assets/images2/image5_9943692.png',
//             width: 12,
//             height: 13.2,
//           ),
//         ),

//         // Extra Icon 4
//         Positioned(
//           left: 316.651,
//           width: 16.092,
//           top: 297.651,
//           height: 15.998,
//           child: Image.asset(
//             'assets/images2/image6_9943693.png',
//             width: 16.092,
//             height: 15.998,
//           ),
//         ),

//         // Doctor Info Card Background
//         Positioned(
//           left: 44,
//           width: 294,
//           top: 338,
//           height: 59,
//           child: Container(
//             width: 294,
//             height: 59,
//             decoration: BoxDecoration(
//               color: const Color(0xffffffff),
//               borderRadius: BorderRadius.circular(10),
//               boxShadow: const [
//                 BoxShadow(
//                   color: Color(0x3f000000),
//                   offset: Offset(0, -3),
//                   blurRadius: 39.4,
//                 ),
//               ],
//             ),
//           ),
//         ),

//         // Doctor Image
//         Positioned(
//           left: 61,
//           width: 36,
//           top: 352,
//           height: 35,
//           child: Image.asset(
//             'assets/images2/image7_9943697.png',
//             width: 36,
//             height: 35,
//             fit: BoxFit.cover,
//           ),
//         ),

//         // Doctor Details
//         const Positioned(
//           left: 103,
//           width: 118,
//           top: 346,
//           height: 47,
//           child: Stack(
//             children: [
//               // Doctor Name
//               Positioned(
//                 left: 0,
//                 top: 0,
//                 child: Text(
//                   'Dr. Richar Kandowen',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     decoration: TextDecoration.none,
//                     fontSize: 12,
//                     color: Color(0xff484848),
//                     fontFamily: 'NunitoSans-Bold',
//                     fontWeight: FontWeight.normal,
//                   ),
//                   maxLines: 9999,
//                   overflow: TextOverflow.ellipsis,
//                 ),
//               ),
//               // Doctor Specialization
//               Positioned(
//                 left: 0,
//                 top: 13,
//                 child: Text(
//                   'Obstetrician',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     decoration: TextDecoration.none,
//                     fontSize: 10,
//                     color: Color(0xff484848),
//                     fontFamily: 'NunitoSans-Bold',
//                     fontWeight: FontWeight.normal,
//                   ),
//                   maxLines: 9999,
//                   overflow: TextOverflow.ellipsis,
//                 ),
//               ),
//             ],
//           ),
//         ),

//         // Chat Icon
//         Positioned(
//           left: 304,
//           width: 18,
//           top: 359,
//           height: 17,
//           child: Image.asset(
//             'assets/images2/image9_9943702.png',
//             width: 18,
//             height: 17,
//           ),
//         ),
//       ],
//     );
//   }
// }

// // Experts Section
// class ExpertsSection extends StatelessWidget {
//   const ExpertsSection({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Positioned(
//       top: 412,
//       left: 26,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const Text(
//             'Our Experts',
//             style: TextStyle(
//               fontSize: 20,
//               color: Color(0xff484747),
//               fontFamily: 'NunitoSans-Bold',
//               decoration: TextDecoration.none,
//             ),
//           ),
//           const SizedBox(height: 16),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: List.generate(
//               4,
//               (index) => CircleAvatar(
//                 radius: 45,
//                 backgroundImage:
//                     AssetImage('assets/images2/image10_9943704.png'),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
