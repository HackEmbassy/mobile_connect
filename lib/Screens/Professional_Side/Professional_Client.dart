import 'package:flutter/material.dart';

class ProfessionalClientScreen extends StatelessWidget {
  const ProfessionalClientScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Navigate back
          },
        ),
        title: const Text(
          'Clients',
          style: TextStyle(
            color: Color(0xFF2D4379),
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xFFF1F4FB),
                hintText: 'Search for Client',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10, // Adjust the number of clients as needed
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFF1F4FB),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                      leading: const CircleAvatar(
                        backgroundColor: Color(0xFF2D4379),
                        child: Icon(Icons.person, color: Colors.white),
                      ),
                      title: const Text(
                        'Mrs. Nkechinyere Alfred',
                        style: TextStyle(
                          color: Color(0xFF2D4379),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      onTap: () {
                        // Handle client item tap
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
