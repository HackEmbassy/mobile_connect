import 'package:flutter/material.dart';

import 'package:table_calendar/table_calendar.dart';

import '../../Components/Image/ImageView.dart';
import '../../Components/Image/Model/ImageConfig.dart';
import '../../assets/app_image.dart';
import 'Professional_congrats_page.dart';

class ProfessionalServicesAndOpenHoursScreen extends StatefulWidget {
  const ProfessionalServicesAndOpenHoursScreen({super.key});

  @override
  _ProfessionalServicesAndOpenHoursScreenState createState() =>
      _ProfessionalServicesAndOpenHoursScreenState();
}

class _ProfessionalServicesAndOpenHoursScreenState
    extends State<ProfessionalServicesAndOpenHoursScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List<String> services = [];

  // Calendar related variables
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  void _addService(String service) {
    setState(() {
      services.add(service);
    });
  }

  void _showTimePicker(DateTime selectedDate) async {
    TimeOfDay? selectedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (selectedTime != null) {
      final formattedDate = "${selectedDate.day}/${selectedDate.month}/${selectedDate.year}";
      final formattedTime = "${selectedTime.hour}:${selectedTime.minute}";

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Selected: $formattedDate $formattedTime'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Header with Logo/Image
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 80.97,
                    width: 100.62,
                    child: ImageView(
                      imageConfig: ImageConfig(
                        imageURL: AppImage.applogo,
                        imageType: ImageType.asset,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ShaderMask(
                        shaderCallback: (bounds) => const LinearGradient(
                          colors: [Color(0xff244599),Color(0xff0C1733)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ).createShader(
                          Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                        ),
                        child: const Text(
                          'Services and Open \nhours.',
                          style: TextStyle(
                            fontSize: 24,
                            color: Color(0xff244599),
                            fontFamily: 'NunitoSans',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // TabBar for "Services" and "Availability"
            TabBar(
              controller: _tabController,
              tabs: const [
                Tab(text: 'Services'),
                Tab(text: 'Availability'),
              ],
              labelColor: const Color(0xff244599),
              unselectedLabelColor: Colors.blueGrey,
              indicatorColor: const Color(0xff244599),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  // Services Tab
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 8),
                        TextField(
                          decoration: const InputDecoration(
                            labelText: 'Mention a service you offer',
                            border: OutlineInputBorder(),
                          ),
                          onSubmitted: _addService,
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: const Text("Add Services"),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Expanded(
                          child: ListView.builder(
                            itemCount: services.length,
                            itemBuilder: (context, index) {
                              return ListTile(
                                title: Text(services[index]),
                                trailing: IconButton(
                                  icon: const Icon(Icons.remove_circle_outline),
                                  onPressed: () {
                                    setState(() {
                                      services.removeAt(index);
                                    });
                                  },
                                ),
                              );
                            },
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
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
                                MaterialPageRoute(builder: (context) =>   const ProfessionalCongratsPage()),
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
                              'CONTINUE',
                              style: TextStyle(fontSize: 16,color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Availability Tab with Calendar
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: TableCalendar(
                            firstDay: DateTime.utc(2020, 1, 1),
                            lastDay: DateTime.utc(2030, 12, 31),
                            focusedDay: _focusedDay,
                            selectedDayPredicate: (day) {
                              return isSameDay(_selectedDay, day);
                            },
                            onDaySelected: (selectedDay, focusedDay) {
                              setState(() {
                                _selectedDay = selectedDay;
                                _focusedDay = focusedDay;
                              });
                              _showTimePicker(selectedDay); // Show time picker when a day is selected
                            },
                            calendarFormat: CalendarFormat.month,
                            headerStyle: const HeaderStyle(
                              formatButtonVisible: false,
                              titleCentered: true,
                            ),
                            calendarStyle: const CalendarStyle(
                              todayDecoration: BoxDecoration(
                                color: Colors.blueAccent,
                                shape: BoxShape.circle,
                              ),
                              selectedDecoration: BoxDecoration(
                                color: Colors.purple,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
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
                                MaterialPageRoute(builder: (context) =>   const ProfessionalCongratsPage()),
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
                              'CONTINUE',
                              style: TextStyle(fontSize: 16,color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}