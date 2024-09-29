import 'package:flutter/material.dart';

import 'Professional_home_page.dart';

class ProfessionalServicesAndOpenHours extends StatefulWidget {
  const ProfessionalServicesAndOpenHours({super.key});

  @override
  _ProfessionalServicesAndOpenHoursState createState() =>
      _ProfessionalServicesAndOpenHoursState();
}

class _ProfessionalServicesAndOpenHoursState
    extends State<ProfessionalServicesAndOpenHours>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool showPickers = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  // Time picker
  Future<void> _selectTime(BuildContext context) async {
    TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (pickedTime != null) {
      print('Selected Time: ${pickedTime.format(context)}');
    }
  }

  // Date picker
  Future<void> _selectDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (pickedDate != null) {
      print('Selected Date: ${pickedDate.toLocal()}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Services and Open hours."),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'Services'),
            Tab(text: 'Available Hours'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // Services tab content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Services Placeholder'),
                SizedBox(height: 450),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfessionalHomePage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 100, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: const BorderSide(color: Colors.black, width: 2),
                    ),
                  ),
                  child: const Text(
                    'Continue',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          // Available Hours tab content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Select Availability'),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      showPickers = !showPickers;
                    });
                  },
                  child: Text('Add Availability'),
                ),
                if (showPickers) ...[
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      _selectDate(context);
                    },
                    child: Text('Select Date'),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      _selectTime(context);
                    },
                    child: Text('Select Time'),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
