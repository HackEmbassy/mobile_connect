import 'package:flutter/material.dart';

class ProfessionalWalletView extends StatelessWidget {
  const ProfessionalWalletView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Top Header with Smooth Curved Background
          Stack(
            clipBehavior: Clip.none,
            children: [
              // Blue gradient background with smooth custom curve
              Container(
                height: 250,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xff244599), Color(0xff0C1733)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
              // Curved line between the blue and white background
              // Header content with balance and wallet title
              const Positioned(
                top: 60,
                left: 0,
                right: 0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Wallet',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontFamily: 'NunitoSans',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Your Balance',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white70,
                        fontFamily: 'NunitoSans',
                      ),
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '24,321.00',
                          style: TextStyle(
                            fontSize: 32,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'NunitoSans',
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.visibility_off,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Floating Action Buttons Box placed exactly at the curve
              Positioned(
                bottom: -30,
                left: 32,
                right: 32,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildActionButton(Icons.sync_alt, 'Transfer'),
                      _buildActionButton(
                          Icons.account_balance_wallet, 'Top Up'),
                      _buildActionButton(Icons.download, 'Withdraw'),
                      _buildActionButton(Icons.more_horiz, 'More'),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 60), // Extra space for floating box

          // Transaction List
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Latest Transaction',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'See all',
                        style: TextStyle(
                          color: Color(0xFF1976D2),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Expanded(
                    child: ListView(
                      children: [
                        _buildTransactionTile(
                          icon: Icons.sync_alt,
                          title: 'Service',
                          dateTime: 'Yesterday · 19:12',
                          amount: '600.000',
                          isCredit: false,
                        ),
                        _buildTransactionTile(
                          icon: Icons.account_balance_wallet,
                          title: 'Top up',
                          dateTime: 'May 29, 2023 · 19:12',
                          amount: '260.000',
                          isCredit: true,
                        ),
                        _buildTransactionTile(
                          icon: Icons.download,
                          title: 'Withdrawal',
                          dateTime: 'May 16, 2023 · 17:34',
                          amount: '350.000',
                          isCredit: false,
                        ),
                        _buildTransactionTile(
                          icon: Icons.favorite,
                          title: 'Top up',
                          dateTime: 'April 23, 2023 · 11:28',
                          amount: '2.000.000',
                          isCredit: false,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Helper function to create action buttons
  Widget _buildActionButton(IconData icon, String label) {
    return Column(
      children: [
        CircleAvatar(
          radius: 24,
          backgroundColor: const Color(0xFF1976D2),
          child: Icon(icon, color: Colors.white),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(fontSize: 14, color: Colors.black),
        ),
      ],
    );
  }

  // Helper function to create transaction list items
  Widget _buildTransactionTile({
    required IconData icon,
    required String title,
    required String dateTime,
    required String amount,
    required bool isCredit,
  }) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.grey[200],
        child: Icon(icon, color: const Color(0xFF1976D2)),
      ),
      title: Text(
        title,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      ),
      subtitle: Text(
        dateTime,
        style: const TextStyle(color: Colors.grey),
      ),
      trailing: Text(
        amount,
        style: TextStyle(
          color: isCredit ? Colors.green : Colors.red,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

// Custom ClipPath for the curved line between blue and white backgrounds
class BottomCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    // Start at the left top corner
    path.lineTo(0, 0);

    // Draw curve from the left to the center
    path.quadraticBezierTo(
        size.width * 0.25, size.height + 30, size.width * 0.5, size.height);

    // Draw curve from the center to the right
    path.quadraticBezierTo(size.width * 0.75, size.height - 30, size.width, 0);

    path.close(); // Close the path

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
