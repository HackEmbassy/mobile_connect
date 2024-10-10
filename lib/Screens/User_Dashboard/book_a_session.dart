import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:herhealthconnect/Components/Body/BodyWidget.dart';
import 'package:herhealthconnect/Components/Body/Model/BodyConfig.dart';
import 'package:herhealthconnect/Core/CoreFolder/app.locator.dart';
import 'package:herhealthconnect/Core/Helpers/veiwModel/profile_viewmodel.dart';
import 'package:herhealthconnect/assets/app_colors.dart';
import 'package:stacked/stacked.dart';
import 'book_a_session_2.dart';

class BookSessionScreen extends StatelessWidget {
  const BookSessionScreen({super.key});

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
              backgroundColor: AppColors.white,
              appbarBackgroundColor: AppColors.white,
              elevation: 0,
              appBarTitle: 'Book a Session',
              appbarTitleColor: AppColors.tPrimary,
              showAppBar: true,
              automaticallyImplyLeading: false,
              centerTitle: true,
              child: Padding(
                padding: const EdgeInsets.all(16.0), // Add padding to all sides
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      _buildSearchBar(),
                      const SizedBox(height: 20),
                      ...?model.profData?.data!.map(
                        (e) => _buildDoctorProfile(
                          context,
                          e.fullName.toString(),
                          e.specialty.toString(),
                          "${e.address.toString()} ${e.city.toString()}",
                          'assets/images2/image1_9943742.png',
                          4.5,
                          '2k reviews',
                          () {
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

  Widget _buildTitle() {
    return Row(
      children: [
        Image.asset(
          'assets/images/arrow_back.png',
          width: 24,
          height: 24,
        ),
        const SizedBox(width: 85),
        const Text(
          'Book a Session',
          style: TextStyle(
            fontSize: 20,
            color: Color(0xff244599),
            fontFamily: 'NunitoSans-Bold',
          ),
        ),
      ],
    );
  }

  Widget _buildSearchBar() {
    return Container(
      width: 380,
      height: 36,
      decoration: BoxDecoration(
        color: const Color(0xfff2f6ff),
        borderRadius: BorderRadius.circular(27),
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/images2/image1_9943778.png',
            width: 24,
            height: 24,
          ),
          const SizedBox(width: 15),
          const Expanded(
            // Use Expanded to allow the text to fill the available space
            child: Text(
              'Search for professionals or specialty',
              style: TextStyle(
                fontSize: 12,
                color: Color(0xff767676),
                fontFamily: 'NunitoSans-Regular',
              ),
            ),
          ),
          const SizedBox(width: 2),
          Image.asset(
            'assets/images/stroke.png',
            width: 24,
            height: 24,
          ),
        ],
      ),
    );
  }

  Widget _buildDoctorProfile(
      BuildContext context,
      String name,
      String specialty,
      String address,
      String imageUrl,
      double rating,
      String reviews,
      Function() tap) {
    return GestureDetector(
      onTap: tap,
      child: Container(
        width: 400,
        height: 138,
        margin: EdgeInsets.only(
          bottom: 10.h,
        ),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xff244599), Color(0xff0C1733)],
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 9,
              top: 8,
              child: Image.asset(
                imageUrl,
                width: 80,
                height: 96,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: 109,
              top: 8,
              child: Text(
                name,
                style: const TextStyle(
                  fontSize: 16,
                  color: Color(0xffffffff),
                  fontFamily: 'NunitoSans-Bold',
                ),
              ),
            ),
            Positioned(
              left: 109,
              top: 35,
              child: Text(
                specialty,
                style: const TextStyle(
                  fontSize: 12,
                  color: Color(0xffffffff),
                  fontFamily: 'NunitoSans-Bold',
                ),
              ),
            ),
            Positioned(
              left: 109,
              top: 65,
              child: Text(
                address,
                style: const TextStyle(
                  fontSize: 12,
                  color: Color(0xffffffff),
                  fontFamily: 'NunitoSans-SemiBold',
                ),
              ),
            ),
            Positioned(
              left: 9,
              top: 110,
              child: Row(
                children: [
                  const Icon(Icons.star, color: Colors.white, size: 14),
                  const SizedBox(width: 4),
                  Text(
                    '$rating',
                    style: const TextStyle(
                      fontSize: 10,
                      color: Color(0xffffffff),
                      fontFamily: 'NunitoSans-SemiBold',
                    ),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    '($reviews)',
                    style: const TextStyle(
                      fontSize: 8,
                      color: Color(0xffffffff),
                      fontFamily: 'NunitoSans-SemiBold',
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 109,
              top: 104,
              child: Container(
                width: 69,
                height: 25,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xff244599), Color(0xff0C1733)],
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Center(
                  child: Text(
                    'View more',
                    style: TextStyle(
                      fontSize: 10,
                      color: Color(0xffffffff),
                      fontFamily: 'NunitoSans-SemiBold',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//
// class BookSessionScreen extends StatelessWidget {
//   const BookSessionScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.grey[200],
//         elevation: 0,
//         toolbarHeight: 60,
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back, color: Colors.black87),
//           onPressed: () => Navigator.of(context).pop(),
//         ),
//         title: const Text(
//           'Book a Session',
//           style: TextStyle(color: Colors.black87, fontSize: 20),
//         ),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             TextField(
//               decoration: InputDecoration(
//                 hintText: "Search for professionals or specialty",
//                 prefixIcon: Icon(Icons.search, color: Colors.grey[600]),
//                 suffixIcon: Icon(Icons.filter_list, color: Colors.grey[600]),
//                 fillColor: Colors.grey[200],
//                 filled: true,
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(30),
//                   borderSide: BorderSide.none,
//                 ),
//               ),
//             ),
//             const SizedBox(height: 20),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: 5, // Change this to the number of items
//                 itemBuilder: (context, index) {
//                   return Padding(
//                     padding: const EdgeInsets.only(bottom: 16.0),
//                     child: Container(
//                       decoration: BoxDecoration(
//                         color: const Color(0xFF0E47A1),
//                         borderRadius: BorderRadius.circular(15),
//                       ),
//                       padding: const EdgeInsets.all(16),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Row(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               CircleAvatar(
//                                 radius: 30,
//                                 backgroundImage: AssetImage('assets/doctor.png'), // Replace with actual image
//                               ),
//                               const SizedBox(width: 10),
//                               Expanded(
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: const [
//                                     Text(
//                                       "Dr. Richar Kandowen",
//                                       style: TextStyle(
//                                         color: Colors.white,
//                                         fontSize: 18,
//                                         fontWeight: FontWeight.bold,
//                                       ),
//                                     ),
//                                     SizedBox(height: 4),
//                                     Text(
//                                       "Obstetrician",
//                                       style: TextStyle(
//                                         color: Colors.white70,
//                                         fontSize: 14,
//                                       ),
//                                     ),
//                                     SizedBox(height: 4),
//                                     Text(
//                                       "116 Abayi, Aba, Abia State",
//                                       style: TextStyle(
//                                         color: Colors.white70,
//                                         fontSize: 14,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               const Icon(
//                                 Icons.more_vert,
//                                 color: Colors.white,
//                               ),
//                             ],
//                           ),
//                           const SizedBox(height: 16),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Row(
//                                 children: const [
//                                   Icon(Icons.star, color: Colors.amber, size: 20),
//                                   SizedBox(width: 5),
//                                   Text(
//                                     "4.5",
//                                     style: TextStyle(
//                                       color: Colors.white,
//                                       fontSize: 14,
//                                     ),
//                                   ),
//                                   SizedBox(width: 5),
//                                   Text(
//                                     "(2k reviews)",
//                                     style: TextStyle(
//                                       color: Colors.white70,
//                                       fontSize: 14,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                               ElevatedButton(
//                                 onPressed: () {
//                                   Navigator.push(
//                                     context,
//                                     MaterialPageRoute(builder: (context) => BookingScreen()),
//                                   );// Handle view more action
//                                 },
//                                 style: ElevatedButton.styleFrom(
//                                   backgroundColor: Colors.white,
//                                   shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(30),
//                                   ),
//                                   padding: const EdgeInsets.symmetric(
//                                       horizontal: 20, vertical: 10),
//                                 ),
//                                 child: const Text(
//                                   'View more',
//                                   style: TextStyle(
//                                     color: Color(0xFF0E47A1),
//                                     fontSize: 16,
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
