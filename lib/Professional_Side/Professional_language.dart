import 'package:flutter/material.dart';
class ProfessionalLanguage extends StatefulWidget {
  const ProfessionalLanguage({super.key});

  @override
  _ProfessionalLanguageState createState() => _ProfessionalLanguageState();
}

class _ProfessionalLanguageState extends State<ProfessionalLanguage> {
  String selectedLanguage = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child:
        Text(
            'Language',
            style: TextStyle(fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xff000000),
                fontFamily: 'NunitoSans'),
        ),
        ), // Center the title
        leading: Container(
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey.shade50,
          ),
          child: IconButton(
            icon: Icon(Icons.arrow_back, size: 10),
            onPressed: () {

            },
          ),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Divider(thickness: 1.5),
            const SizedBox(height: 5.0),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search Language',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Expanded(
              child: ListView(
                children: [
                  languageTile('English', selectedLanguage),
                  languageTile('Francais', selectedLanguage),
                  languageTile('Indonesia', selectedLanguage),
                  languageTile('Deutsch', selectedLanguage),
                ],
              ),
            ),
            const Divider(thickness: 1.5),
          ],
        ),
      ),
    );
  }

  Widget languageTile(String language, String selected) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: selected == language ? Colors.blue : Colors.grey,
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ListTile(
        leading: Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey[200],
          ),
          child: const Icon(Icons.flag, color: Colors.black),
        ),
        title: Text(language, textAlign: TextAlign.left),
        trailing: selected == language
            ? const Icon(Icons.check, color: Colors.black)
            : null,
        onTap: () {
          setState(() {
            selectedLanguage = language;
          });
        },
      ),
    );
  }
}