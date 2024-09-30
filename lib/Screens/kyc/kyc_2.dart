import 'package:flutter/material.dart';
import 'package:herhealthconnect/Screens/kyc/congrats_page.dart';
import '../../Components/Image/ImageView.dart';
import '../../Components/Image/Model/ImageConfig.dart';
import '../../assets/app_image.dart';

class PersonalInformation extends StatefulWidget {
  const PersonalInformation({super.key});

  @override
  _PersonalInformationState createState() => _PersonalInformationState();
}

class _PersonalInformationState extends State<PersonalInformation> {
  String _gender = 'Female';
  DateTime? _selectedDate;
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _healthHistoryController =
      TextEditingController();

  @override
  void dispose() {
    _dobController.dispose();
    _healthHistoryController.dispose();
    super.dispose();
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (pickedDate != null && pickedDate != _selectedDate) {
      setState(() {
        _selectedDate = pickedDate;
        _dobController.text =
            "${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          // Makes the content scrollable
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 40),
                SizedBox(
                  height: 40.97,
                  width: 140.62,
                  child: ImageView(
                    imageConfig: ImageConfig(
                      imageURL: AppImage.logo,
                      imageType: ImageType.asset,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back_ios_new_outlined),
                      onPressed: () {
                        // Handle back button press
                      },
                    ),
                  ],
                ),
                const Text(
                  'Personal Information',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Please provide the following information to help the professionals give you the best recommendations.',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 16),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Your Gender', style: TextStyle(fontSize: 16)),
                  ],
                ),
                const SizedBox(height: 8),
                ToggleButtons(
                  borderRadius: BorderRadius.circular(20),
                  borderColor: Colors.grey,
                  selectedBorderColor: Colors.grey,
                  selectedColor: Colors.white,
                  fillColor: Colors.grey[300],
                  color: Colors.grey,
                  isSelected: [_gender == 'Male', _gender == 'Female'],
                  onPressed: (int index) {
                    setState(() {
                      _gender = index == 0 ? 'Male' : 'Female';
                    });
                  },
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Icon(Icons.male),
                          SizedBox(width: 8),
                          Text('Male'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Icon(Icons.female),
                          SizedBox(width: 8),
                          Text('Female'),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Date of Birth', style: TextStyle(fontSize: 16)),
                  ],
                ),
                const SizedBox(height: 2),
                GestureDetector(
                  onTap: () => _selectDate(context),
                  child: AbsorbPointer(
                    child: TextField(
                      controller: _dobController,
                      decoration: InputDecoration(
                        hintText: 'DD/MM/YYYY',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Health History (Optional)',
                        style: TextStyle(fontSize: 16)),
                  ],
                ),
                const SizedBox(height: 2),
                TextField(
                  controller: _healthHistoryController,
                  maxLines: 4,
                  decoration: InputDecoration(
                    hintText: '',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                const SizedBox(height: 8),
                const Center(
                  child: Text(
                    'By selecting Agree and Continue, I have reviewed and agreed to the Terms of Service and acknowledged the Privacy Notice.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12, color: Colors.black54),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CongratsPage()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side:
                                const BorderSide(color: Colors.black, width: 2),
                          ),
                        ),
                        child: const Text(
                          'AGREE AND CONTINUE',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
