import 'package:flutter/material.dart';
import 'package:herhealthconnect/Components/TextView/Models/TextViewConfig.dart';
import 'package:herhealthconnect/Components/TextView/TextView.dart';
import 'package:herhealthconnect/assets/app_colors.dart';

class AnalysisScreen extends StatelessWidget {
  const AnalysisScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: TextView(
            config: TextViewConfig(
          text: "Analysis",
          fontSize: 20,
          fontWeight: FontWeight.w800,
          color: const Color(0xff244599),
        )),
        centerTitle: true,
        backgroundColor: AppColors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(height: 30),
              // Profile section
              const Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                          'assets/images/profile_image.png'), // Replace with the actual image URL
                    ),
                    SizedBox(height: 10),
                    Text(
                      "KAKA",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "My Goal: Tracking my cycle",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Cycle Data section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildCycleDataCard(
                    title: "Cycle Length",
                    value: "28",
                    unit: "Days",
                    change: "40% Last Month",
                    changeDirection: "up",
                    cardColor: Colors.white,
                  ),
                  _buildCycleDataCard(
                    title: "Cycle Length",
                    value: "04",
                    unit: "Days",
                    change: "40% Last Month",
                    changeDirection: "down",
                    cardColor: Colors.white,
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Height and Weight section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildInfoCard(
                    title: "Height",
                    value: "175.4CM",
                    color: Colors.blue[900],
                    icon: Icons.height,
                  ),
                  _buildInfoCard(
                    title: "Weight",
                    value: "51.2 KG",
                    color: Colors.blue,
                    icon: Icons.fitness_center,
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Graph Section
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    const Text(
                      "July-August 2024",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    // Graph bars (simulated here with containers)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildGraphBar("JAN", "27"),
                        _buildGraphBar("FEB", "26"),
                        _buildGraphBar("MAR", "25"),
                        _buildGraphBar("APR", "23"),
                        _buildGraphBar("MAY", "25"),
                        _buildGraphBar("JUN", "23"),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper function to build Cycle Data cards
  Widget _buildCycleDataCard({
    required String title,
    required String value,
    required String unit,
    required String change,
    required String changeDirection,
    required Color cardColor,
  }) {
    return Container(
      width: 150,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 6.0,
            spreadRadius: 1.0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: "$value ",
                  style: const TextStyle(
                      fontSize: 28, fontWeight: FontWeight.bold),
                ),
                TextSpan(text: unit),
              ],
            ),
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              Icon(
                changeDirection == "up"
                    ? Icons.arrow_upward
                    : Icons.arrow_downward,
                color: changeDirection == "up" ? Colors.green : Colors.red,
                size: 16,
              ),
              const SizedBox(width: 5),
              Text(
                change,
                style: TextStyle(
                  fontSize: 12,
                  color: changeDirection == "up" ? Colors.green : Colors.red,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Helper function to build info cards (height and weight)
  Widget _buildInfoCard({
    required String title,
    required String value,
    required Color? color,
    required IconData icon,
  }) {
    return Container(
      width: 150,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 6.0,
            spreadRadius: 1.0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: Colors.white, size: 24),
          const SizedBox(height: 10),
          Text(
            value,
            style: const TextStyle(fontSize: 28, color: Colors.white),
          ),
        ],
      ),
    );
  }

  // Helper function to build graph bars
  Widget _buildGraphBar(String month, String day) {
    return Column(
      children: [
        Container(
          width: 10,
          height: 60,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.red, Colors.blue, Colors.grey],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.3, 0.7, 1],
            ),
          ),
        ),
        const SizedBox(height: 5),
        Text(month),
        Text(day),
      ],
    );
  }
}
