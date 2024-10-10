import 'package:flutter/material.dart';
import 'package:herhealthconnect/Components/Button/ButtonWidget.dart';
import 'package:herhealthconnect/Components/Button/Model/ButtonConfig.dart';
import 'package:herhealthconnect/Screens/User_Dashboard/profile.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          'Change Password',
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
            const SizedBox(height: 40),
            const Text(
              "Old Password",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff484848),
                  fontFamily: 'NunitoSans'),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 60, // Add height to TextFormField
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter Old Password',
                  contentPadding: const EdgeInsets.symmetric(vertical: 20),
                  prefixIcon: const Icon(Icons.lock_outline),
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
                      color: Color(
                          0xff93BFE4), // Border color when the TextField is focused
                      width: 2.0,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "New Password",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff484848),
                  fontFamily: 'NunitoSans'),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 60, // Add height to TextFormField
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter New Password',
                  contentPadding: const EdgeInsets.symmetric(vertical: 20),
                  prefixIcon: const Icon(Icons.lock_outline),
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
                      color: Color(
                          0xff93BFE4), // Border color when the TextField is focused
                      width: 2.0,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Comfirm New Password",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff484848),
                  fontFamily: 'NunitoSans'),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 60, // Add height to TextFormField
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Comfirm New Password',
                  contentPadding: const EdgeInsets.symmetric(vertical: 20),
                  prefixIcon: const Icon(Icons.lock_outline),
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
                      color: Color(
                          0xff93BFE4), // Border color when the TextField is focused
                      width: 2.0,
                    ),
                  ),
                ),
              ),
            ),
            const Spacer(),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xff244599), Color(0xff0C1733)],
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: ButtonWidget(
                config: ButtonConfig(
                  text: "CHANGE PASSWORD",
                  height: 48,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProfileScreen(),
                      ),
                    );
                  },
                  buttonColor: Colors.transparent,
                  buttonOutlinedColor: Colors.transparent,
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
