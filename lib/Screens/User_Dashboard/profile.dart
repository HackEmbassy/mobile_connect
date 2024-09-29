import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        elevation: 0,
        leading: Icon(Icons.arrow_back, color: Colors.white),
        title: Text(
          'RECORD',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.edit, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            color: Colors.blue.shade900,
            child: Column(
              children: [
                SizedBox(height: 16),
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(
                      'assets/profile_image.jpg'), // Replace with your profile image
                ),
                SizedBox(height: 12),
                Text(
                  'KAKA',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'claireiwuanyawawu@gmail.com',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(width: 4),
                    Icon(
                      Icons.verified,
                      color: Colors.green,
                      size: 18,
                    ),
                  ],
                ),
                SizedBox(height: 16),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  ProfileOption(icon: Icons.account_circle, label: 'Account'),
                  ProfileOption(
                      icon: Icons.notifications, label: 'Notification'),
                  ProfileOption(
                      icon: Icons.person, label: 'Personal Information'),
                  ProfileOption(icon: Icons.location_on, label: 'My Address'),
                  ProfileOption(icon: Icons.language, label: 'Language'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileOption extends StatelessWidget {
  final IconData icon;
  final String label;

  ProfileOption({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: InkWell(
        onTap: () {
          // Add navigation or action here
        },
        child: Row(
          children: [
            Icon(icon, size: 30, color: Colors.grey.shade700),
            SizedBox(width: 16),
            Expanded(
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey.shade700,
                ),
              ),
            ),
            Icon(Icons.arrow_forward_ios,
                size: 18, color: Colors.grey.shade700),
          ],
        ),
      ),
    );
  }
}
