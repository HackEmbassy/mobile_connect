import 'package:flutter/material.dart';

class AddPeriodScreen extends StatefulWidget {
  const AddPeriodScreen({Key? key}) : super(key: key);

  @override
  _AddPeriodScreenState createState() => _AddPeriodScreenState();
}

class _AddPeriodScreenState extends State<AddPeriodScreen> {
  String purpose = "Track cycles and health";
  int averageCycle = 28;
  String flow = "Medium Flow";
  String cvConsistency = "Sticky / Creamy";
  String obgynVisit = "0 - 6 Months";
  bool papSmear = true;
  bool onBirthControl = false;
  String birthControlType = "External Condom";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Period"),
        backgroundColor: Colors.blue[900],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const Text(
              "Tell us why you want to use this app?",
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
            ),
            RadioListTile(
              title: const Text("Track cycles and health"),
              value: "Track cycles and health",
              groupValue: purpose,
              onChanged: (value) {
                setState(() {
                  purpose = value!;
                });
              },
            ),
            RadioListTile(
              title: const Text("Avoid Pregnancy"),
              value: "Avoid Pregnancy",
              groupValue: purpose,
              onChanged: (value) {
                setState(() {
                  purpose = value!;
                });
              },
            ),
            RadioListTile(
              title: const Text("Try to conceive"),
              value: "Try to conceive",
              groupValue: purpose,
              onChanged: (value) {
                setState(() {
                  purpose = value!;
                });
              },
            ),
            const SizedBox(height: 20),
            const Text(
              "How long is your average cycle?",
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
            ),
            const Text("Tip 💡 - An average cycle lasts 24 - 38 days."),
            Wrap(
              children: List.generate(20, (index) {
                final day = 20 + index;
                return ChoiceChip(
                  label: Text("$day"),
                  selected: averageCycle == day,
                  onSelected: (selected) {
                    setState(() {
                      averageCycle = day;
                    });
                  },
                );
              }),
            ),
            const SizedBox(height: 20),
            const Text(
              "What's your normal flow?",
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
            ),
            RadioListTile(
              title: const Text("Heavy Flow"),
              value: "Heavy Flow",
              groupValue: flow,
              onChanged: (value) {
                setState(() {
                  flow = value!;
                });
              },
            ),
            RadioListTile(
              title: const Text("Medium Flow"),
              value: "Medium Flow",
              groupValue: flow,
              onChanged: (value) {
                setState(() {
                  flow = value!;
                });
              },
            ),
            RadioListTile(
              title: const Text("Light Flow"),
              value: "Light Flow",
              groupValue: flow,
              onChanged: (value) {
                setState(() {
                  flow = value!;
                });
              },
            ),
            const SizedBox(height: 20),
            const Text(
              "What's your normal CV consistency?",
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
            ),
            RadioListTile(
              title: const Text("Dry"),
              value: "Dry",
              groupValue: cvConsistency,
              onChanged: (value) {
                setState(() {
                  cvConsistency = value!;
                });
              },
            ),
            RadioListTile(
              title: const Text("Sticky / Creamy"),
              value: "Sticky / Creamy",
              groupValue: cvConsistency,
              onChanged: (value) {
                setState(() {
                  cvConsistency = value!;
                });
              },
            ),
            RadioListTile(
              title: const Text("Stretchy (egg whites)"),
              value: "Stretchy (egg whites)",
              groupValue: cvConsistency,
              onChanged: (value) {
                setState(() {
                  cvConsistency = value!;
                });
              },
            ),
            const SizedBox(height: 20),
            const Text(
              "When was the last time you saw the OBGYN?",
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
            ),
            RadioListTile(
              title: const Text("0 - 6 Months"),
              value: "0 - 6 Months",
              groupValue: obgynVisit,
              onChanged: (value) {
                setState(() {
                  obgynVisit = value!;
                });
              },
            ),
            RadioListTile(
              title: const Text("6 Months - 1 Year"),
              value: "6 Months - 1 Year",
              groupValue: obgynVisit,
              onChanged: (value) {
                setState(() {
                  obgynVisit = value!;
                });
              },
            ),
            RadioListTile(
              title: const Text("1 - 2 Years"),
              value: "1 - 2 Years",
              groupValue: obgynVisit,
              onChanged: (value) {
                setState(() {
                  obgynVisit = value!;
                });
              },
            ),
            RadioListTile(
              title: const Text("More than 2 Years"),
              value: "More than 2 Years",
              groupValue: obgynVisit,
              onChanged: (value) {
                setState(() {
                  obgynVisit = value!;
                });
              },
            ),
            const SizedBox(height: 20),
            const Text(
              "Did you have a PAP smear?",
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
            ),
            SwitchListTile(
              title: const Text("Yes"),
              value: papSmear,
              onChanged: (value) {
                setState(() {
                  papSmear = value;
                });
              },
            ),
            const SizedBox(height: 20),
            const Text(
              "Are you on birth control?",
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
            ),
            SwitchListTile(
              title: const Text("Yes"),
              value: onBirthControl,
              onChanged: (value) {
                setState(() {
                  onBirthControl = value;
                });
              },
            ),
            if (onBirthControl) const SizedBox(height: 20),
            if (onBirthControl)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "What type",
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                  ),
                  RadioListTile(
                    title: const Text("External Condom (Used by Men)"),
                    value: "External Condom",
                    groupValue: birthControlType,
                    onChanged: (value) {
                      setState(() {
                        birthControlType = value!;
                      });
                    },
                  ),
                  RadioListTile(
                    title: const Text("Internal Condom (Used by Females)"),
                    value: "Internal Condom",
                    groupValue: birthControlType,
                    onChanged: (value) {
                      setState(() {
                        birthControlType = value!;
                      });
                    },
                  ),
                  RadioListTile(
                    title: const Text("Diaphragm"),
                    value: "Diaphragm",
                    groupValue: birthControlType,
                    onChanged: (value) {
                      setState(() {
                        birthControlType = value!;
                      });
                    },
                  ),
                  RadioListTile(
                    title: const Text("Birth Control Sponge"),
                    value: "Birth Control Sponge",
                    groupValue: birthControlType,
                    onChanged: (value) {
                      setState(() {
                        birthControlType = value!;
                      });
                    },
                  ),
                  RadioListTile(
                    title: const Text("Spermicide & Gel"),
                    value: "Spermicide & Gel",
                    groupValue: birthControlType,
                    onChanged: (value) {
                      setState(() {
                        birthControlType = value!;
                      });
                    },
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}


