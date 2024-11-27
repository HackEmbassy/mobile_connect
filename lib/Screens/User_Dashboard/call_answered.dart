import 'package:flutter/material.dart';
import 'package:herhealthconnect/Core/CoreFolder/app.router.dart';
import 'package:herhealthconnect/Core/router/page_router.dart';

class ProfessionalCallAnswered extends StatelessWidget {
  const ProfessionalCallAnswered({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // Main video feed (background image or video)
          Positioned.fill(
            child: Image.asset(
              'assets/images/doctors_picture.png', // Replace with your background video feed
              fit: BoxFit.cover,
            ),
          ),
          // Self-view video overlay (top right)
          Positioned(
            top: 50,
            right: 20,
            child: Container(
              width: 120,
              height: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images/picture.png', // Replace with your overlay video feed
                  fit: BoxFit.cover,
                ),
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
                   Row(
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
                        tap:(){
                          PageRouter.pushReplacement(Routes.professionalDashboard);
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
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
  final Function()? tap;

  const ControlButton({
    super.key,
    this.tap,
    required this.icon,
    required this.label,
    this.iconColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:tap,
      child: Column(
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
      ),
    );
  }
}
