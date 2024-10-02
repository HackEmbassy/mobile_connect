import 'package:flutter/material.dart';
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
          icon: Icon(Icons.arrow_back, color: Colors.black),
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
              fontFamily: 'NunitoSans'
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            const Text(
              "Old Password",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff484848),
                  fontFamily: 'NunitoSans'
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 60, // Add height to TextFormField
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter Old Password',
                  contentPadding: EdgeInsets.symmetric(vertical: 20),
                  prefixIcon: Icon(Icons.lock_outline ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      color:Color(0xff93BFE4),// Default border color
                      width: 2.0,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      color:Color(0xff93BFE4), // Border color when the TextField is not focused
                      width: 2.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      color:Color(0xff93BFE4), // Border color when the TextField is focused
                      width: 2.0,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            const Text(
              "New Password",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff484848),
                  fontFamily: 'NunitoSans'
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 60, // Add height to TextFormField
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter New Password',
                  contentPadding: EdgeInsets.symmetric(vertical: 20),
                  prefixIcon: Icon(Icons.lock_outline ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      color:Color(0xff93BFE4), // Default border color
                      width: 2.0,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      color:Color(0xff93BFE4), // Border color when the TextField is not focused
                      width: 2.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      color:Color(0xff93BFE4), // Border color when the TextField is focused
                      width: 2.0,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            const Text(
              "Comfirm New Password",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff484848),
                  fontFamily: 'NunitoSans'
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 60, // Add height to TextFormField
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Comfirm New Password',
                  contentPadding: EdgeInsets.symmetric(vertical: 20),
                  prefixIcon: Icon(Icons.lock_outline ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      color:Color(0xff93BFE4), // Default border color
                      width: 2.0,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      color:Color(0xff93BFE4), // Border color when the TextField is not focused
                      width: 2.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      color:Color(0xff93BFE4), // Border color when the TextField is focused
                      width: 2.0,
                    ),
                  ),
                ),
              ),
            ),
            Spacer(),
            Container(
              decoration:  BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xff244599),Color(0xff0C1733)],
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                      const ProfileScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent, // Make background transparent
                  shadowColor: Colors.transparent,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 120, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text(
                  'CHANGE PASSWORD',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'NunitoSans',
                  ),
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