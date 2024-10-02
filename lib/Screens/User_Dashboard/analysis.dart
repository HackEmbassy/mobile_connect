import 'package:flutter/material.dart';

class AnalysisScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(height: 60),
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.black),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const SizedBox(width: 110),
                  Text(
                    'Analysis',
                    style: TextStyle(color: Color(0xff244599), fontSize: 14),
                  ),
                ],
              ),
              // Profile section
              Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                          'https://example.com/profile.jpg'), // Replace with the actual image URL
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
              SizedBox(height: 20),

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
              SizedBox(height: 20),

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
              SizedBox(height: 20),

              // Graph Section
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    Text(
                      "July-August 2024",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
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
      padding: EdgeInsets.all(16),
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
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: "$value ",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                TextSpan(text: unit),
              ],
            ),
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Icon(
                changeDirection == "up"
                    ? Icons.arrow_upward
                    : Icons.arrow_downward,
                color: changeDirection == "up" ? Colors.green : Colors.red,
                size: 16,
              ),
              SizedBox(width: 5),
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
      padding: EdgeInsets.all(16),
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
          SizedBox(height: 10),
          Text(
            value,
            style: TextStyle(fontSize: 28, color: Colors.white),
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
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.red, Colors.blue, Colors.grey],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.3, 0.7, 1],
            ),
          ),
        ),
        SizedBox(height: 5),
        Text(month),
        Text(day),
      ],
    );
  }
}
