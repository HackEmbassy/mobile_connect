import 'package:flutter/material.dart';

import 'call_answered.dart';

class ProfessionalCallConnectingScreen extends StatelessWidget {
  const ProfessionalCallConnectingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/picture.png', // Replace with actual background image path
              fit: BoxFit.cover,
            ),
          ),
          const Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 50.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  // Profile picture and name container
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // Profile Picture
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage(
                            'assets/images/avatar.png'), // Replace with actual image path
                      ),
                      SizedBox(width: 10),
                      // Name and status text
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Dr. John Smith",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              shadows: [
                                Shadow(
                                  blurRadius: 10.0,
                                  color: Colors.black,
                                  offset: Offset(0, 0),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "connecting...",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 16,
                          shadows: [
                            Shadow(
                              blurRadius: 10.0,
                              color: Colors.black,
                              offset: Offset(0, 0),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // Bottom control panel
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.only(bottom: 30.0, top: 20.0),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.9),
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 33.62,
                    height: 4.2,
                    margin: const EdgeInsets.only(bottom: 20),
                    decoration: BoxDecoration(
                      color: Colors.grey[600],
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  // Control buttons
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ControlButton(
                          icon: Icons.volume_up_rounded, label: 'effects'),
                      ControlButton(icon: Icons.mic_off, label: 'mute'),
                      ControlButton(icon: Icons.cameraswitch, label: 'flip'),
                      ControlButton(
                        icon: Icons.call_end,
                        label: 'end',
                        iconColor: Colors.red,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  // Camera and Speaker buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const ActionButton(label: 'Camera Off'),
                      ActionButton(
                        label: 'Speaker',
                        onTap: () {
                          // Navigate to SpeakerScreen when tapped
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const ProfessionalCallAnswered()),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Widget for round control buttons (top row)
class ControlButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color iconColor;

  const ControlButton({
    super.key,
    required this.icon,
    required this.label,
    this.iconColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.grey[700],
          child: Icon(
            icon,
            color: iconColor,
            size: 28,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}

// Widget for rectangular action buttons (bottom row)
class ActionButton extends StatelessWidget {
  final String label;
  final VoidCallback? onTap;

  const ActionButton({super.key, required this.label, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        decoration: BoxDecoration(
          color: Colors.grey[700],
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
