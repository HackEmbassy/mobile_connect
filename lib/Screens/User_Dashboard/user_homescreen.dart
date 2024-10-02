import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          const BackgroundSection(),
          const WelcomeSection(),
          const SearchBar(),
          const AppointmentCard(),
          const ExpertsSection(),
          const WelcomeIcons(),
        ],
      ),
    );
  }
}

// Background Section
class BackgroundSection extends StatelessWidget {
  const BackgroundSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 346,
      left: -9,
      right: 0,
      height: 222,
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xfff2f6ff),
        ),
      ),
    );
  }
}

class WelcomeIcons extends StatelessWidget {
  const WelcomeIcons ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 330,
          width: 22.678,
          top: 94.945,
          height: 23.056,
          child: Image.asset(
            'assets/images2/image14_10133985.png',
            width: 22.678,
            height: 23.056,
          ),
        ),
        Positioned(
          left: 29,
          width: 36,
          top: 86,
          height: 35,
          child: Image.asset(
            'assets/images2/image8_9943698.png',
            width: 36,
            height: 35,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          left: 335.263,
          width: 10.6,
          top: 91,
          height: 10.54,
          child: Image.asset(
            'assets/images2/image15_10133986.png',
            width: 10.6,
            height: 10.54,
          ),
        ),
      ],
    );
  }
}



// Welcome Section
class WelcomeSection extends StatelessWidget {
  const WelcomeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Positioned(
      top: 79,
      left: 78,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Welcome Kaka!',
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'NunitoSans-Bold',
              decoration: TextDecoration.none,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'How are you feeling today.',
            style: TextStyle(
              fontSize: 12,
              color: Color(0xff0c1733),
              fontFamily: 'NunitoSans-Regular',
              decoration: TextDecoration.none,
            ),
          ),
        ],
      ),
    );
  }
}

// Search Bar
class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 160,
      left: 26,
      right: 26,
      height: 36,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: const Color(0xfff2f6ff),
          borderRadius: BorderRadius.circular(27),
        ),
        child: Row(
          children: const [
            Icon(Icons.search, color: Color(0xff767676)),
            SizedBox(width: 8),
            Text(
              'Search something',
              style: TextStyle(
                fontSize: 12,
                color: Color(0xff767676),
                fontFamily: 'NunitoSans-Regular',
                decoration: TextDecoration.none,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Appointment Card
class AppointmentCard extends StatelessWidget {
  const AppointmentCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Appointment Card Background
        Positioned(
          left: 26,
          width: 329,
          top: 220,
          height: 156,
          child: Container(
            width: 329,
            height: 156,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Color(0xff244599), Color(0xff0C1733)],
              ),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),

        // Upcoming Appointment Text
        const Positioned(
          left: 51,
          top: 225,
          child: Text(
            'Upcoming Appointment',
            textAlign: TextAlign.center,
            style: TextStyle(
              decoration: TextDecoration.none,
              fontSize: 10,
              color: Color(0xffffffff),
              fontFamily: 'NunitoSans-Bold',
              fontWeight: FontWeight.normal,
            ),
            maxLines: 9999,
            overflow: TextOverflow.ellipsis,
          ),
        ),

        // Appointment Date
        const Positioned(
          left: 59,
          top: 259,
          child: Text(
            '22 October, 2024',
            textAlign: TextAlign.center,
            style: TextStyle(
              decoration: TextDecoration.none,
              fontSize: 12,
              color: Color(0xffffffff),
              fontFamily: 'NunitoSans-Bold',
              fontWeight: FontWeight.normal,
            ),
            maxLines: 9999,
            overflow: TextOverflow.ellipsis,
          ),
        ),

        // Appointment Time
        const Positioned(
          left: 59,
          top: 293,
          child: Text(
            '08:00AM - 10:30AM',
            textAlign: TextAlign.center,
            style: TextStyle(
              decoration: TextDecoration.none,
              fontSize: 12,
              color: Color(0xffffffff),
              fontFamily: 'NunitoSans-Bold',
              fontWeight: FontWeight.normal,
            ),
            maxLines: 9999,
            overflow: TextOverflow.ellipsis,
          ),
        ),

        // Edit Icon
        Positioned(
          left: 311,
          width: 27,
          top: 292,
          height: 27,
          child: Image.asset(
            'assets/images2/image1_9943684.png',
            width: 27,
            height: 27,
          ),
        ),

        // Extra Icon 1
        Positioned(
          left: 334,
          width: 4.4,
          top: 238,
          height: 8,
          child: Image.asset(
            'assets/images2/image3_9943688.png',
            width: 4.4,
            height: 8,
          ),
        ),

        // Extra Icon 2
        Positioned(
          left: 38,
          width: 14,
          top: 293,
          height: 14,
          child: Image.asset(
            'assets/images2/image4_9943689.png',
            width: 14,
            height: 14,
          ),
        ),

        // Extra Icon 3
        Positioned(
          left: 39,
          width: 12,
          top: 260,
          height: 13.2,
          child: Image.asset(
            'assets/images2/image5_9943692.png',
            width: 12,
            height: 13.2,
          ),
        ),

        // Extra Icon 4
        Positioned(
          left: 316.651,
          width: 16.092,
          top: 297.651,
          height: 15.998,
          child: Image.asset(
            'assets/images2/image6_9943693.png',
            width: 16.092,
            height: 15.998,
          ),
        ),

        // Doctor Info Card Background
        Positioned(
          left: 44,
          width: 294,
          top: 338,
          height: 59,
          child: Container(
            width: 294,
            height: 59,
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x3f000000),
                  offset: Offset(0, -3),
                  blurRadius: 39.4,
                ),
              ],
            ),
          ),
        ),

        // Doctor Image
        Positioned(
          left: 61,
          width: 36,
          top: 352,
          height: 35,
          child: Image.asset(
            'assets/images2/image7_9943697.png',
            width: 36,
            height: 35,
            fit: BoxFit.cover,
          ),
        ),

        // Doctor Details
        const Positioned(
          left: 103,
          width: 118,
          top: 346,
          height: 47,
          child: Stack(
            children: [
              // Doctor Name
              Positioned(
                left: 0,
                top: 0,
                child: Text(
                  'Dr. Richar Kandowen',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 12,
                    color: Color(0xff484848),
                    fontFamily: 'NunitoSans-Bold',
                    fontWeight: FontWeight.normal,
                  ),
                  maxLines: 9999,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              // Doctor Specialization
              Positioned(
                left: 0,
                top: 13,
                child: Text(
                  'Obstetrician',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 10,
                    color: Color(0xff484848),
                    fontFamily: 'NunitoSans-Bold',
                    fontWeight: FontWeight.normal,
                  ),
                  maxLines: 9999,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),

        // Chat Icon
        Positioned(
          left: 304,
          width: 18,
          top: 359,
          height: 17,
          child: Image.asset(
            'assets/images2/image9_9943702.png',
            width: 18,
            height: 17,
          ),
        ),
      ],
    );
  }
}


// Experts Section
class ExpertsSection extends StatelessWidget {
  const ExpertsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 412,
      left: 26,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Our Experts',
            style: TextStyle(
              fontSize: 20,
              color: Color(0xff484747),
              fontFamily: 'NunitoSans-Bold',
              decoration: TextDecoration.none,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
              4,
                  (index) => CircleAvatar(
                radius: 45,
                backgroundImage: AssetImage('assets/images2/image10_9943704.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


