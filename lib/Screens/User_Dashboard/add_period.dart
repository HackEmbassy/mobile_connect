import 'package:flutter/material.dart';



class AddPeriodScreen extends StatefulWidget {
  @override
  _AddPeriodScreenState createState() =>
      _AddPeriodScreenState();
}

class _AddPeriodScreenState extends State<AddPeriodScreen> {
  List<String> symptoms = [
    'Cramps (Dysmenorrhea)',
    'Bloating',
    'Fatigue',
    'Food Cravings',
    'Acne/Breakouts',
    'Insomnia or Sleep Disturbances',
    'Joint or Muscle Pain',
    'Anxiety or Depression',
    'Mood Swings',
    'Headaches',
    'Breast Tenderness',
    'Lower Back Pain',
    'Nausea',
    'Increased Appetite',
    'Diarrhea or Constipation',
    'Water Retention'
  ];

  String? selectedSymptom;


  List<int> durations = [28, 25, 35, 33, 34, 30, 32, 24, 22, 23, 26, 21, 27, 31];


  int selectionValue = 28;
  DateTime selectedDate = DateTime.now();
  int cycleDuration = 28;
  int periodDuration = 5;
  String flowDescription = 'Light';
  String cycleType = 'Regular';
  String condition = 'None';
  String birthControl = 'None';
  bool usingBirthControl = false;
  bool trackingForFertility = false;
  bool includeOvulation = false;


  String? otherCondition;

  String? _selectedRadio;
  String? _selectedMethod;

  String? Ovulation;

  String? ovulationPredicton;

  List<String> option = [
    'Yes',
    'No'
  ];

  String? _selectingOption;

  List<String> optioned = [
    'Yes',
    'No'
  ];

  String? _setOption;
  List<String> opt = [
    'Yes',
    'No'
  ];


  String? _selectOption;
  String? _selectMethod;

  List<String> ovulationPrediction = [
    '1 day before',
    '2 days before',
    '3 days before',
    'On the day of your period',
    'Custom reminder',
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Date Picker Section
            Container(
              padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blue[900],
                borderRadius: BorderRadius.all(Radius.circular(80)),
              ),
              width: MediaQuery.of(context).size.width,
              child: Text(
                'When was the first day of your last period?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

            //calender date picking section
            CalendarDatePicker(
              initialDate: selectedDate,
              firstDate: DateTime(2020),
              lastDate: DateTime(2030),
              onDateChanged: (newDate) {
                setState(() {
                  selectedDate = newDate;
                });
              },
            ),
            SizedBox(height: 20),

            // Menstrual cycle duration
            Container(
              padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blue[900],
                borderRadius: BorderRadius.all(Radius.circular(80)),
              ),
              width: MediaQuery.of(context).size.width,
              child: Text(
                'How long does your menstrual cycle typically last?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Wrap(
              spacing: 10.0,
              children: durations.map((duration) {
                return Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Radio<int>(
                      value: duration,
                      groupValue: selectionValue,
                      onChanged: (int? value) {
                        setState(() {
                          selectionValue = value!;
                        });
                      },
                    ),
                    Text('$duration'),
                  ],
                );
              }).toList(),
            ),
            SizedBox(height: 20),

            // Period duration
            Container(
              padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blue[900],
                borderRadius: BorderRadius.all(Radius.circular(80)),
              ),
              width: MediaQuery.of(context).size.width,
              child: Text(
                'How many days does your period typically last?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            buildPeriodDurationSelector(),
            SizedBox(height: 20),

            // Symptoms section
            Container(
              padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blue[900],
                borderRadius: BorderRadius.all(Radius.circular(80)),
              ),
              width: MediaQuery.of(context).size.width,
              child: Text(
                'Which symptoms do you typically experience before or during your period?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            ..._buildSymptomTiles(), // Correctly building the symptom tiles
            SizedBox(height: 20),

            //Flow description
            Container(
              padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blue[900],
                borderRadius: BorderRadius.all(Radius.circular(80)),
              ),
              width: MediaQuery.of(context).size.width,
              child: Text(
                'How would you describe your flow during your period?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            buildFlowDescriptionSelector(),
            SizedBox(height: 20),


            // Cycle regularity
            Container(
              padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blue[900],
                borderRadius: BorderRadius.all(Radius.circular(80)),
              ),
              width: MediaQuery.of(context).size.width,
              child: Text(
                'Is your cycle regular or irregular?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            buildCycleRegularitySelector(),
            SizedBox(height: 20),

            // Diagnosed conditions
            Container(
              padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blue[900],
                borderRadius: BorderRadius.all(Radius.circular(80)),
              ),
              width: MediaQuery.of(context).size.width,
              child: Text(
                'Have you been diagnosed with any conditions affecting your menstrual cycle?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            buildDiagnosedConditionsSelector(),
            SizedBox(height: 20),

            // Birth control section
            Container(
              padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blue[900],
                borderRadius: BorderRadius.all(Radius.circular(80)),
              ),
              width: MediaQuery.of(context).size.width,
              child: Text(
                'Are you currently using any form of birth control that affects your cycle?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            buildBirthControlSelector(),
            SizedBox(height: 20),

            // Tracking for fertility purposes
            Container(
              padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blue[900],
                borderRadius: BorderRadius.all(Radius.circular(80)),
              ),
              width: MediaQuery.of(context).size.width,
              child: Text(
                'What are your goals for tracking your cycle?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            buildFertilityTrackingToggle(),
            SizedBox(height: 20),

            // Ovulation prediction
            Container(
              padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blue[900],
                borderRadius: BorderRadius.all(Radius.circular(80)),
              ),
              width: MediaQuery.of(context).size.width,
              child: Text(
                'Are you currently using any form of birth control that affects your cycle?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            buildOvulationPredictionToggle(),

            //Ovulation tracking
            Container(
              padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blue[900],
                borderRadius: BorderRadius.all(Radius.circular(80)),
              ),
              width: MediaQuery.of(context).size.width,
              child: Text(
                'Are you tracking your cycle for fertility purpose?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            buildOvulationTrackingToggle(),

            //Fertility purpose
            Container(
              padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blue[900],
                borderRadius: BorderRadius.all(Radius.circular(80)),
              ),
              width: MediaQuery.of(context).size.width,
              child: Text(
                'Would you like ovulation prediction to be included in your tracking?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            buildFertilityPurposeToggle(),
          ],
        ),
      ),
    );
  }

  Widget buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.blue[900],
        ),
      ),
    );
  }

  Widget buildPeriodDurationSelector() {
    return Wrap(
      spacing: 10,
      children: List.generate(7, (index) {
        int duration = 3 + index;
        return ChoiceChip(
          label: Text('$duration days'),
          selected: periodDuration == duration,
          onSelected: (bool selected) {
            setState(() {
              periodDuration = duration;
            });
          },
        );
      }),
    );
  }

  List<Widget> _buildSymptomTiles() {
    List<Widget> symptomWidgets = [];
    for (int i = 0; i < symptoms.length; i += 2) {
      symptomWidgets.add(
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: _buildRadioTile(symptoms[i]),
            ),
            if (i + 1 < symptoms.length)
              Expanded(
                child: _buildRadioTile(symptoms[i + 1]),
              )
            else
              Expanded(
                child: Container(
                ),
              ), // Add empty container for alignment
          ],
        ),
      );
    }
    return symptomWidgets;
  }

  Widget _buildRadioTile(String symptom) {
    return RadioListTile<String>(
      title: Text(symptom),
      value: symptom,
      groupValue: selectedSymptom,
      onChanged: (String? value) {
        setState(() {
          selectedSymptom = value!;
        });
      },
      activeColor: Colors.blue[900],
    );
  }

  Widget buildFlowDescriptionSelector() {
    return Column(
      children: ['Light', 'Medium', 'Heavy'].map((flow) {
        return RadioListTile<String>(
          title: Text(flow),
          value: flow,
          groupValue: flowDescription,
          onChanged: (value) {
            setState(() {
              flowDescription = value!;
            });
          },
          activeColor: Colors.blue[900],
        );

      }).toList(),
    );
  }

  Widget buildCycleRegularitySelector() {
    return Column(
      children: ['Regular (consistent circle length)', 'Irregular (varies from month to month)'].map((type) {
        return RadioListTile<String>(
          title: Text(type),
          value: type,
          groupValue: cycleType,
          onChanged: (value) {
            setState(() {
              cycleType = value!;
            });
          },
          activeColor: Colors.blue[900],
        );
      }).toList(),
    );
  }

  Widget buildDiagnosedConditionsSelector() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Radio buttons for conditions
        Column(
          children: ['Polycystic Ovary Syndrome (PCOS)', 'Endometriosis', 'None', 'Other']
              .map((condition) {
            return RadioListTile<String>(
              title: Text(condition),
              value: condition,
              groupValue: this.condition,
              onChanged: (value) {
                setState(() {
                  this.condition = value!;
                });
              },
              activeColor: Colors.blue[900],
            );
          }).toList(),
        ),

        // Conditionally show the TextField if 'Other' is selected
        if (this.condition == 'Other')
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Identify here',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  otherCondition = value;
                });
              },

            ),
          ),
      ],
    );
  }

  Widget buildFertilityTrackingToggle() {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: ['Predicting periods', 'Tracking symptoms', 'Fertility tracking', 'Improving well-being'].map((flow){
            return RadioListTile<String>(
              title: Text(flow),
              value: flow,
              groupValue: Ovulation,
              onChanged: (value) {
                setState(() {
                  Ovulation = value!;
                });
              },
              activeColor: Colors.blue[900],
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget buildBirthControlSelector() {

    List<String> birthControlMethod = [
      'Pill (Oral Contraceptive)',
      'Hormonal IUD',
      'Copper IUD (Non-hormonal)',
      'Birth Control Patch',
      'Birth Control Implant',
      'Birth Control Shot (Depo-Provera)',
    ];

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RadioListTile<String>(
            title: Text('Yes'),
            value: 'Yes',
            groupValue: _selectedRadio,
            onChanged: (value) {
              setState(() {
                _selectedRadio = value!;
                _selectedMethod = null;
              });
            },
            activeColor: Colors.blue[900],
          ),
          // Conditionally show DropdownButtonFormField when "Yes" is selected
          if (_selectedRadio == 'Yes')
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.blue,
                    width: 2.0,
                  ),
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              ),
              hint: Text('Select'),
              value: _selectedMethod,
              items: birthControlMethod.map((method) {
                return DropdownMenuItem<String>(
                  value: method,
                  child: Text(
                    method,
                    style: TextStyle(
                      fontSize: 13.3,
                    ),
                  ),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _selectedMethod = value!;
                });
              },
              isExpanded: true,
            ),
          // Radio button for "No"
          RadioListTile<String>(
            title: Text('No'),
            value: 'No',
            groupValue: _selectedRadio,
            onChanged: (value) {
              setState(() {
                _selectedRadio = value!;
                _selectedMethod = null;
              });
            },
            activeColor: Colors.blue[900],
          ),
        ],
      ),
    );
  }

  Widget buildOvulationPredictionToggle() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RadioListTile<String>(
            title: Text('Yes'),
            value: 'Yes',
            groupValue: _selectOption,
            onChanged: (value) {
              setState(() {
                _selectOption = value!;
                _selectMethod = null;
              });
            },
            activeColor: Colors.blue[900],
          ),
          // Conditionally show DropdownButtonFormField when "Yes" is selected
          if (_selectOption == 'Yes')
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.blue,
                    width: 2.0,
                  ),
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              ),
              hint: Text('Select'),
              value: _selectMethod,
              items: ovulationPrediction.map((method) {
                return DropdownMenuItem<String>(
                  value: method,
                  child: Text(
                    method,
                    style: TextStyle(
                      fontSize: 13.3,
                    ),
                  ),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _selectMethod = value!;
                });
              },
              isExpanded: true,
            ),
          // Radio button for "No"
          RadioListTile<String>(
            title: Text('No'),
            value: 'No',
            groupValue: _selectOption,
            onChanged: (value) {
              setState(() {
                _selectOption = value!;
                _selectMethod = null;
              });
            },
            activeColor: Colors.blue[900],
          ),
        ],
      ),
    );
  }

  Widget buildOvulationTrackingToggle(){

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: opt.map((option){
        return RadioListTile<String>(
          title: Text(option),
          value: option,
          groupValue: _setOption,
          onChanged: (String? value) {
            setState((){
              _setOption = value!;
            });
          },
          activeColor: Colors.blue[900],
        );
      }).toList(),
    );
  }

  Widget buildFertilityPurposeToggle(){

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: optioned.map((option){
        return RadioListTile<String>(
          title: Text(option),
          value: option,
          groupValue: _selectingOption,
          onChanged: (String? value) {
            setState((){
              _selectingOption = value!;
            });
          },
          activeColor: Colors.blue[900],
        );
      }).toList(),
    );
  }
}

// import 'package:flutter/material.dart';
//
// class AddPeriodScreen extends StatefulWidget {
//   const AddPeriodScreen({Key? key}) : super(key: key);
//
//   @override
//   _AddPeriodScreenState createState() => _AddPeriodScreenState();
// }
//
// class _AddPeriodScreenState extends State<AddPeriodScreen> {
//   String purpose = "Track cycles and health";
//   int averageCycle = 28;
//   String flow = "Medium Flow";
//   String cvConsistency = "Sticky / Creamy";
//   String obgynVisit = "0 - 6 Months";
//   bool papSmear = true;
//   bool onBirthControl = false;
//   String birthControlType = "External Condom";
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Add Period"),
//         backgroundColor: Colors.blue[900],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: ListView(
//           children: [
//             const Text(
//               "Tell us why you want to use this app?",
//               style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
//             ),
//             RadioListTile(
//               title: const Text("Track cycles and health"),
//               value: "Track cycles and health",
//               groupValue: purpose,
//               onChanged: (value) {
//                 setState(() {
//                   purpose = value!;
//                 });
//               },
//             ),
//             RadioListTile(
//               title: const Text("Avoid Pregnancy"),
//               value: "Avoid Pregnancy",
//               groupValue: purpose,
//               onChanged: (value) {
//                 setState(() {
//                   purpose = value!;
//                 });
//               },
//             ),
//             RadioListTile(
//               title: const Text("Try to conceive"),
//               value: "Try to conceive",
//               groupValue: purpose,
//               onChanged: (value) {
//                 setState(() {
//                   purpose = value!;
//                 });
//               },
//             ),
//             const SizedBox(height: 20),
//             const Text(
//               "How long is your average cycle?",
//               style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
//             ),
//             const Text("Tip 💡 - An average cycle lasts 24 - 38 days."),
//             Wrap(
//               children: List.generate(20, (index) {
//                 final day = 20 + index;
//                 return ChoiceChip(
//                   label: Text("$day"),
//                   selected: averageCycle == day,
//                   onSelected: (selected) {
//                     setState(() {
//                       averageCycle = day;
//                     });
//                   },
//                 );
//               }),
//             ),
//             const SizedBox(height: 20),
//             const Text(
//               "What's your normal flow?",
//               style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
//             ),
//             RadioListTile(
//               title: const Text("Heavy Flow"),
//               value: "Heavy Flow",
//               groupValue: flow,
//               onChanged: (value) {
//                 setState(() {
//                   flow = value!;
//                 });
//               },
//             ),
//             RadioListTile(
//               title: const Text("Medium Flow"),
//               value: "Medium Flow",
//               groupValue: flow,
//               onChanged: (value) {
//                 setState(() {
//                   flow = value!;
//                 });
//               },
//             ),
//             RadioListTile(
//               title: const Text("Light Flow"),
//               value: "Light Flow",
//               groupValue: flow,
//               onChanged: (value) {
//                 setState(() {
//                   flow = value!;
//                 });
//               },
//             ),
//             const SizedBox(height: 20),
//             const Text(
//               "What's your normal CV consistency?",
//               style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
//             ),
//             RadioListTile(
//               title: const Text("Dry"),
//               value: "Dry",
//               groupValue: cvConsistency,
//               onChanged: (value) {
//                 setState(() {
//                   cvConsistency = value!;
//                 });
//               },
//             ),
//             RadioListTile(
//               title: const Text("Sticky / Creamy"),
//               value: "Sticky / Creamy",
//               groupValue: cvConsistency,
//               onChanged: (value) {
//                 setState(() {
//                   cvConsistency = value!;
//                 });
//               },
//             ),
//             RadioListTile(
//               title: const Text("Stretchy (egg whites)"),
//               value: "Stretchy (egg whites)",
//               groupValue: cvConsistency,
//               onChanged: (value) {
//                 setState(() {
//                   cvConsistency = value!;
//                 });
//               },
//             ),
//             const SizedBox(height: 20),
//             const Text(
//               "When was the last time you saw the OBGYN?",
//               style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
//             ),
//             RadioListTile(
//               title: const Text("0 - 6 Months"),
//               value: "0 - 6 Months",
//               groupValue: obgynVisit,
//               onChanged: (value) {
//                 setState(() {
//                   obgynVisit = value!;
//                 });
//               },
//             ),
//             RadioListTile(
//               title: const Text("6 Months - 1 Year"),
//               value: "6 Months - 1 Year",
//               groupValue: obgynVisit,
//               onChanged: (value) {
//                 setState(() {
//                   obgynVisit = value!;
//                 });
//               },
//             ),
//             RadioListTile(
//               title: const Text("1 - 2 Years"),
//               value: "1 - 2 Years",
//               groupValue: obgynVisit,
//               onChanged: (value) {
//                 setState(() {
//                   obgynVisit = value!;
//                 });
//               },
//             ),
//             RadioListTile(
//               title: const Text("More than 2 Years"),
//               value: "More than 2 Years",
//               groupValue: obgynVisit,
//               onChanged: (value) {
//                 setState(() {
//                   obgynVisit = value!;
//                 });
//               },
//             ),
//             const SizedBox(height: 20),
//             const Text(
//               "Did you have a PAP smear?",
//               style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
//             ),
//             SwitchListTile(
//               title: const Text("Yes"),
//               value: papSmear,
//               onChanged: (value) {
//                 setState(() {
//                   papSmear = value;
//                 });
//               },
//             ),
//             const SizedBox(height: 20),
//             const Text(
//               "Are you on birth control?",
//               style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
//             ),
//             SwitchListTile(
//               title: const Text("Yes"),
//               value: onBirthControl,
//               onChanged: (value) {
//                 setState(() {
//                   onBirthControl = value;
//                 });
//               },
//             ),
//             if (onBirthControl) const SizedBox(height: 20),
//             if (onBirthControl)
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const Text(
//                     "What type",
//                     style: TextStyle(
//                         fontWeight: FontWeight.bold, color: Colors.red),
//                   ),
//                   RadioListTile(
//                     title: const Text("External Condom (Used by Men)"),
//                     value: "External Condom",
//                     groupValue: birthControlType,
//                     onChanged: (value) {
//                       setState(() {
//                         birthControlType = value!;
//                       });
//                     },
//                   ),
//                   RadioListTile(
//                     title: const Text("Internal Condom (Used by Females)"),
//                     value: "Internal Condom",
//                     groupValue: birthControlType,
//                     onChanged: (value) {
//                       setState(() {
//                         birthControlType = value!;
//                       });
//                     },
//                   ),
//                   RadioListTile(
//                     title: const Text("Diaphragm"),
//                     value: "Diaphragm",
//                     groupValue: birthControlType,
//                     onChanged: (value) {
//                       setState(() {
//                         birthControlType = value!;
//                       });
//                     },
//                   ),
//                   RadioListTile(
//                     title: const Text("Birth Control Sponge"),
//                     value: "Birth Control Sponge",
//                     groupValue: birthControlType,
//                     onChanged: (value) {
//                       setState(() {
//                         birthControlType = value!;
//                       });
//                     },
//                   ),
//                   RadioListTile(
//                     title: const Text("Spermicide & Gel"),
//                     value: "Spermicide & Gel",
//                     groupValue: birthControlType,
//                     onChanged: (value) {
//                       setState(() {
//                         birthControlType = value!;
//                       });
//                     },
//                   ),
//                 ],
//               ),
//           ],
//         ),
//       ),
//     );
//   }
// }
