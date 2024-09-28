import 'package:flutter/material.dart';
import 'package:herhealthconnect/Screens/Professional_Side/kyc1%20profession_selection.dart';

import 'Professional_dashboard.dart';


class ProfessionalCongratsPage extends StatefulWidget {
  const ProfessionalCongratsPage({super.key});

  @override
  _ProfessionalCongratsPageState createState() => _ProfessionalCongratsPageState();
}

class _ProfessionalCongratsPageState extends State<ProfessionalCongratsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                const SizedBox(height: 480), // Adds spacing from the top
                const Text(
                  'You are ready to go!',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                      fontFamily: 'NunitoSans'
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                const Text(
                  'Thank you for taking your time to create account with us. Now this is the fun part, let’s explore the app',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 150), // Adds space between text and button
                Container(
                  decoration:  BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xff244599),Color(0xff0C1733)],
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>   const ProfessionSelectionPage()),
                      );// Action for sign-up button
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent, // Make background transparent
                      shadowColor: Colors.transparent,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 150, vertical: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: const BorderSide(color: Color(0xFF3A6EA5), width: 2),
                      ),
                    ),
                    child: const Text(
                      'LOG IN ',
                      style: TextStyle(fontSize: 16,color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
