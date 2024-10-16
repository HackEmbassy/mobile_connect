import 'package:flutter/material.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Calendar Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const SizedBox(height: 60),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            IconButton(
                              icon: const Icon(Icons.arrow_back,
                                  color: Colors.black),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                            const SizedBox(width: 67),
                            const Text(
                              'Wed, 11 sept 2024',
                              style: TextStyle(
                                  color: Color(0xff244599), fontSize: 14),
                            ),
                          ],
                        ),
                        const SizedBox(height: 40),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.calendar_today_outlined,
                                color: Colors.black),
                            Text(
                              "Sep 2024",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.black),
                            ),
                            SizedBox(
                                width: 24), // placeholder to align center text
                          ],
                        ),
                        const SizedBox(height: 16),
                        Table(
                          children: [
                            TableRow(
                              children: List.generate(
                                7,
                                (index) => Center(
                                  child: Text(
                                    ['S', 'M', 'T', 'W', 'T', 'F', 'S'][index],
                                    style: const TextStyle(color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                            TableRow(
                              children: List.generate(
                                7,
                                (index) => Center(
                                  child: Text(
                                    [
                                      '25',
                                      '26',
                                      '27',
                                      '28',
                                      '29',
                                      '30',
                                      '1'
                                    ][index],
                                    style: TextStyle(
                                        color: index >= 2 && index <= 4
                                            ? Colors.white
                                            : Colors.grey),
                                  ),
                                ),
                              ),
                            ),
                            TableRow(
                              children: List.generate(
                                7,
                                (index) => Center(
                                  child: CircleAvatar(
                                    backgroundColor: index >= 0 && index <= 2
                                        ? Colors.pinkAccent
                                        : Colors.transparent,
                                    radius: 18,
                                    child: Text(
                                      (index + 2).toString(),
                                      style: TextStyle(
                                          color: index >= 0 && index <= 2
                                              ? Colors.white
                                              : Colors.black),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            TableRow(
                              children: List.generate(
                                7,
                                (index) => Center(
                                  child: CircleAvatar(
                                    backgroundColor: index >= 1 && index <= 5
                                        ? Colors.purple.shade100
                                        : Colors.transparent,
                                    radius: 18,
                                    child: Text(
                                      (index + 9).toString(),
                                      style: TextStyle(
                                          color: index >= 1 && index <= 5
                                              ? Colors.black
                                              : Colors.grey),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            TableRow(
                              children: List.generate(
                                7,
                                (index) => Center(
                                  child: CircleAvatar(
                                    backgroundColor: index == 6
                                        ? Colors.purpleAccent.shade100
                                        : Colors.transparent,
                                    radius: 18,
                                    child: Text(
                                      (index + 16).toString(),
                                      style: TextStyle(
                                          color: index == 6
                                              ? Colors.blueAccent
                                              : Colors.black),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            TableRow(
                              children: List.generate(
                                7,
                                (index) => Center(
                                  child: CircleAvatar(
                                    backgroundColor: Colors.transparent,
                                    radius: 18,
                                    child: Text(
                                      (index + 23).toString(),
                                      style:
                                          const TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _buildLegendItem('Period', Colors.pink),
                            _buildLegendItem(
                                'Predicted Period', Colors.pinkAccent.shade100,
                                isDotted: true),
                            _buildLegendItem(
                                'Fertile Window', Colors.purpleAccent.shade100),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // Mood, Symptoms, Note Section
            Container(
              color: Colors.blue.shade900,
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "ADD MOOD, SYMPTOMS & NOTE",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  const Divider(color: Colors.white54),
                  const SizedBox(height: 8),
                  const Text("Note", style: TextStyle(color: Colors.white)),
                  const SizedBox(height: 8),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration.collapsed(
                            hintText: "Enter note here"),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text("MOOD", style: TextStyle(color: Colors.white)),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildMoodIcon(Icons.sentiment_dissatisfied_rounded,
                          Colors.yellow.shade700),
                      _buildMoodIcon(
                          Icons.sentiment_neutral_rounded, Colors.grey),
                      _buildMoodIcon(Icons.sentiment_very_dissatisfied_rounded,
                          Colors.blue),
                      _buildMoodIcon(Icons.sentiment_very_satisfied_rounded,
                          Colors.yellowAccent),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: 2,
      //   type: BottomNavigationBarType.fixed,
      //   items: const [
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      //     BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Book a session'),
      //     BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: 'Menstrual Tracking'),
      //     BottomNavigationBarItem(icon: Icon(Icons.article), label: 'Newsfeed'),
      //     BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      //   ],
      //   selectedItemColor: Colors.blue.shade900,
      //   unselectedItemColor: Colors.black54,
      // ),
    );
  }

  Widget _buildLegendItem(String text, Color color, {bool isDotted = false}) {
    return Row(
      children: [
        isDotted
            ? CustomPaint(
                size: const Size(20, 2),
                painter: DashedLinePainter(color: color),
              )
            : CircleAvatar(radius: 5, backgroundColor: color),
        const SizedBox(width: 8),
        Text(text, style: const TextStyle(color: Colors.grey)),
      ],
    );
  }

  Widget _buildMoodIcon(IconData iconData, Color color) {
    return CircleAvatar(
      radius: 20,
      backgroundColor: Colors.white,
      child: Icon(iconData, color: color, size: 30),
    );
  }
}

class DashedLinePainter extends CustomPainter {
  final Color color;
  DashedLinePainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = color
      ..strokeWidth = 2;
    var max = size.width;
    var dashWidth = 5;
    var dashSpace = 3;
    double startX = 0;
    while (startX < max) {
      canvas.drawLine(Offset(startX, 0), Offset(startX + dashWidth, 0), paint);
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(DashedLinePainter oldDelegate) => false;
}
