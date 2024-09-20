import 'package:flutter/material.dart';
import 'package:herhealthconnect/Screens/User_Dashboard/summary_booking.dart';


class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  _BookingScreenState createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  int selectedServiceIndex = -1;
  int selectedDateIndex = 0;
  int selectedTimeSlotIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 10),
          // Doctor details
          _buildDoctorDetails(),
          const SizedBox(height: 10),
          // Service Selection
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildServiceSelection(),
                  const SizedBox(height: 20),
                  _buildDateSelectionBox(),
                  if (selectedServiceIndex != -1) ...[
                    // Display Time Slots after selecting a service
                    const SizedBox(height: 20),
                    _buildTimeSlotSelection(),
                  ],
                ],
              ),
            ),
          ),
          // Book a Session Button
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: selectedServiceIndex == -1 || selectedTimeSlotIndex == -1
                  ? null
                  : () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const BookingSummaryPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 15),
                backgroundColor: Colors.lightBlue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Center(
                child: Text(
                  'BOOK A SESSION',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDoctorDetails() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Column(
        children: [
          CircleAvatar(radius: 30, backgroundColor: Colors.grey[400]),
          const SizedBox(height: 10),
          const Text(
            'Dr. Richard Kandowen',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const Text(
            'Obstetrician',
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 10),
          const Text(
            '123 Peace Avenue, Wellness Clinic, Downtown Branch',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }

  Widget _buildServiceSelection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Select Service',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 150, // Increased height for bigger box
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5, // Replace with actual service count
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedServiceIndex = index;
                    selectedTimeSlotIndex = -1; // Reset time selection
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Container(
                    width: 100, // Wider service box
                    decoration: BoxDecoration(
                      color: selectedServiceIndex == index
                          ? Colors.grey[400]
                          : Colors.grey[300],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.medical_services_outlined, size: 30),
                        SizedBox(height: 10),
                        Text(
                          'Service',
                          style: TextStyle(fontSize: 14), // Larger font size
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildDateSelectionBox() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey[300]!),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Select Date',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(30, (index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedDateIndex = index;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: selectedDateIndex == index
                            ? Colors.grey[400]
                            : Colors.grey[200],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat']
                            [index % 7], // Day of the week
                            style: const TextStyle(fontSize: 10),
                          ),
                          Text(
                            (index + 1).toString(), // Day of the month
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTimeSlotSelection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Morning Slot',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              _buildTimeSlot(context, '08:30 AM', 0),
              _buildTimeSlot(context, '09:00 AM', 1),
              _buildTimeSlot(context, '09:30 AM', 2),
            ],
          ),
          const SizedBox(height: 20),
          const Text(
            'Afternoon Slot',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              _buildTimeSlot(context, '01:30 PM', 3),
              _buildTimeSlot(context, '02:00 PM', 4),
              _buildTimeSlot(context, '02:30 PM', 5),
            ],
          ),
          const SizedBox(height: 20),
          const Text(
            'Evening Slot',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              _buildTimeSlot(context, '06:00 PM', 6),
              _buildTimeSlot(context, '06:30 PM', 7),
              _buildTimeSlot(context, '07:00 PM', 8),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTimeSlot(BuildContext context, String time, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedTimeSlotIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          decoration: BoxDecoration(
            color: selectedTimeSlotIndex == index
                ? Colors.grey[400]
                : Colors.grey[200],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            time,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: selectedTimeSlotIndex == index
                  ? Colors.black
                  : Colors.grey[600],
            ),
          ),
        ),
      ),
    );
  }
}
