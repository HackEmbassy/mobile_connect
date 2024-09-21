import 'package:flutter/material.dart';

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
                const SizedBox(height: 50), // Adds space between text and button
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {
                      // Add your navigation logic here
                    },
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      side: const BorderSide(color: Colors.black87, width: 1.5),
                    ),
                    child: const Text(
                      'GET STARTED!',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 50), // Adds spacing at the bottom
              ],
            ),
          ),
        ),
      ),
    );
  }
}
