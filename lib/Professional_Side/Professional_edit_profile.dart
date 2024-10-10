import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:herhealthconnect/Components/Button/ButtonWidget.dart';
import 'package:herhealthconnect/Components/Button/Model/ButtonConfig.dart';
import 'package:herhealthconnect/assets/app_colors.dart';

class ProfessionalEditProfileScreen extends StatelessWidget {
  const ProfessionalEditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 24.sp,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          'Edit Profile',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Color(0xff244599),
              fontFamily: 'NunitoSans'),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            // Profile Picture with Edit Icon
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.grey[300],
                child: Icon(
                  Icons.person,
                  size: 50,
                  color: Colors.grey[800],
                ),
              ),
            ),
            const SizedBox(height: 50),
            // Full Name Text Field
            const Text(
              "Full Name",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff484848),
                  fontFamily: 'NunitoSans'),
            ),
            const SizedBox(height: 10), // Add space between label and field
            SizedBox(
              height: 60, // Add height to TextFormField
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Name',
                  contentPadding: const EdgeInsets.symmetric(vertical: 20),
                  prefixIcon: const Icon(Icons.person_2_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      color: Colors
                          .blue, // Change this to the desired border color
                      width: 2.0, // Border thickness
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      color: Colors
                          .blue, // Border color when the TextField is not focused
                      width: 2.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      color: Colors
                          .blue, // Border color when the TextField is focused
                      width: 2.0,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Date of Birth Text Field
            const Text(
              "Date of Birth",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff484848),
                  fontFamily: 'NunitoSans'),
            ),
            const SizedBox(height: 10), // Add space between label and field
            SizedBox(
              height: 60, // Add height to TextFormField
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: '00/00/0000',
                  contentPadding: const EdgeInsets.symmetric(vertical: 20),
                  prefixIcon: const Icon(Icons.calendar_today_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      color: Color(0xff93BFE4), // Default border color
                      width: 2.0,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      color: Color(
                          0xff93BFE4), // Border color when the TextField is not focused
                      width: 2.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      color: Colors
                          .blue, // Border color when the TextField is focused
                      width: 2.0,
                    ),
                  ),
                ),
              ),
            ),
            const Spacer(),
            // Save Changes Button
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xff244599), Color(0xff0C1733)],
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              child: ButtonWidget(
                config: ButtonConfig(
                  text: "SAVE CHANGES",
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  buttonColor: Colors.transparent,
                  buttonOutlinedColor: Colors.transparent,
                  fontSize: 14,
                  textColor: AppColors.white,
                  fontWeight: FontWeight.w700,
                  height: 48,
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
