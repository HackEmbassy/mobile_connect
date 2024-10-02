import 'package:flutter/material.dart';
import 'package:herhealthconnect/Screens/User_Dashboard/summary_booking.dart';
class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  _BookingScreenState createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  int _selectedService = 0;
  int _selectedDateIndex = 2; // Default selected date (Wednesday)
  int _selectedTimeSlot = -1;

  final List<String> _days = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"];
  final List<int> _dates = [7, 8, 9, 10, 11, 12, 13]; // Example dates

  final List<String> _morningSlots = ["08:30 AM", "09:00 AM", "09:30 AM"];
  final List<String> _afternoonSlots = ["01:30 PM", "02:00 PM", "02:30 PM"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF001F60), // Dark blue
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {},
        ),
        title: const Text("Detail",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.white,
                fontFamily: 'NunitoSans'
            )),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Doctor Info Section
          _buildDoctorInfoSection(),

          // Add a space between the blue section and the white section
          const SizedBox(height: 20), // Adjust this value to your preference

          // White rounded container at the bottom
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  _buildServiceSelection(),
                  const SizedBox(height: 30),
                  _buildDateSelector(),
                  const SizedBox(height: 20),
                  _buildTimeSlots(),
                  const Spacer(),
                  _buildBookButton(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Doctor Info Section at the Top
  Widget _buildDoctorInfoSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          const CircleAvatar(
            radius: 40,
            // backgroundImage: AssetImage('assets/doctor_image.png'), // Placeholder image
          ),
          const SizedBox(height: 10),
          const Text(
            "Dr. Richar Kandowen",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Colors.white,
                fontFamily: 'NunitoSans'
            ),
          ),
          const Text(
            "Obstetrician",
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: Colors.white,
                fontFamily: 'NunitoSans'
            ),
          ),
          const SizedBox(height: 5),
          SizedBox(
            height: 70, // Adjust height to fit both texts
            width: 220,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 7),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6.53),
              ),
              child: const Row(
                children: [
                  Icon(Icons.location_on, color: Colors.redAccent, size: 16), // Icon applies to both texts
                  SizedBox(width: 5), // Spacing between icon and text
                  Expanded( // Expanded to ensure texts fit in the available space
                    child: Column( // Stack the two lines of text vertically
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10,),
                        Text(
                          "123 Fitness Avenue, Wellness \nClinic, Downtown Branch",
                          style: TextStyle(
                            color: Color(0xff484848),
                            fontSize: 12,
                          ),
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

  // Service Selection Widget (with selectable icons)
  Widget _buildServiceSelection() {
    List<String> serviceImages = [
      'assets/images/services.png',  // Example images (make sure they're in the right path)
      'assets/images/services.png',
      'assets/images/services.png',
      'assets/images/services.png',
      'assets/images/services.png',
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Select service",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        // Scrollable row of services with images
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(serviceImages.length, (index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedService = index;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    children: [
                      // Use Image.asset for local images or Image.network for network images
                      Image.asset(
                        serviceImages[index],
                        height: 50,  // Adjust the size as needed
                        width: 50,   // Adjust the size as needed
                        fit: BoxFit.cover, // Ensures the image fills the space
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "Select service",
                        style: TextStyle(
                          color: _selectedService == index ?  const Color(0xff244599) : const Color(0xff244599),
                          fontWeight: _selectedService == index
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }

  // Horizontal Date Selector Widget
  Widget _buildDateSelector() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Available time, October 2024",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 60,
          width: 359,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _dates.length,
            itemBuilder: (context, index) {
              bool isSelected = _selectedDateIndex == index;
              return GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedDateIndex = index;
                  });
                },
                child: Container(
                  width: 60,
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    color: isSelected ? Colors.blue : Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        color: isSelected ? const Color(0xff244599) : const Color(0xff244599)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        _days[index % 7], // Repeat days of the week
                        style: TextStyle(
                          color: isSelected ? Colors.white : Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        _dates[index].toString(),
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: isSelected ? Colors.white : Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  // Time Slot Selection (Morning & Afternoon)
  Widget _buildTimeSlots() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Morning Slot", style: TextStyle(fontSize: 16)),
        const SizedBox(height: 10),
        _buildTimeSlotRow(_morningSlots),
        const SizedBox(height: 20),
        const Text("Afternoon Slot", style: TextStyle(fontSize: 16)),
        const SizedBox(height: 10),
        _buildTimeSlotRow(_afternoonSlots),
      ],
    );
  }

  // Helper function to build the time slot row
  Widget _buildTimeSlotRow(List<String> slots) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(slots.length, (index) {
        bool isSelected = _selectedTimeSlot == index;
        return GestureDetector(
          onTap: () {
            setState(() {
              _selectedTimeSlot = index;
            });
          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            decoration: BoxDecoration(
              color: isSelected ? Colors.blue : Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              slots[index],
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.black,
              ),
            ),
          ),
        );
      }),
    );
  }

  // Book a Session Button
  Widget _buildBookButton() {
    return Container(
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
            MaterialPageRoute(builder: (context) =>   const BookingSummaryPage()),
          );// Action for sign-up button
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent, // Make background transparent
          shadowColor: Colors.transparent,
          padding: const EdgeInsets.symmetric(
              horizontal: 100, vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: const BorderSide(color: Color(0xFF3A6EA5), width: 2),
          ),
        ),
        child: const Text(
          'BOOK A SESSION',
          style: TextStyle(fontSize: 16,color: Colors.white),
        ),
      ),
    );
  }
}