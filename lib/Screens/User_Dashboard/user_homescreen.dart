import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Container(
        // width: 390,
        // height: 844,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Stack(
          children: [
            Positioned(
              left: -9,
              width: 399,
              top: 346,
              height: 222,
              child: Container(
                width: 399,
                height: 222,
                decoration: const BoxDecoration(
                  color: Color(0xfff2f6ff),
                ),
              ),
            ),
            Positioned(
              left: 0,
              width: 390,
              top: 747,
              height: 97,
              child: Container(
                // width: 390,
                height: 97,
                decoration: const BoxDecoration(
                  color: Color(0xffffffff),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0x3f000000),
                        offset: Offset(-6, 0),
                        blurRadius: 12),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 138,
              width: 114,
              top: 820,
              height: 1,
              child: Container(
                width: 114,
                height: 1,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xff484747), width: 4),
                ),
              ),
            ),
            const Positioned(
              left: 78,
              top: 79,
              child: Text(
                'Welcome Kaka!',
                textAlign: TextAlign.left,
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 20,
                    fontFamily: 'NunitoSans-Bold',
                    fontWeight: FontWeight.normal),
                maxLines: 9999,
                overflow: TextOverflow.ellipsis,
              ),
            ),
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
            Positioned(
              left: 26,
              width: 329,
              top: 160,
              height: 36,
              child: Container(
                width: 329,
                height: 36,
                decoration: BoxDecoration(
                  color: const Color(0xfff2f6ff),
                  borderRadius: BorderRadius.circular(27),
                ),
              ),
            ),
            const Positioned(
              left: 81,
              top: 96,
              child: Text(
                'How are you feeling today.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 12,
                    color: Color(0xff0c1733),
                    fontFamily: 'NunitoSans-Regular',
                    fontWeight: FontWeight.normal),
                maxLines: 9999,
                overflow: TextOverflow.ellipsis,
              ),
            ),
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
                    fontWeight: FontWeight.normal),
                maxLines: 9999,
                overflow: TextOverflow.ellipsis,
              ),
            ),
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
                    fontWeight: FontWeight.normal),
                maxLines: 9999,
                overflow: TextOverflow.ellipsis,
              ),
            ),
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
                    fontWeight: FontWeight.normal),
                maxLines: 9999,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const Positioned(
              left: 69,
              top: 161,
              child: Text(
                'Search something',
                textAlign: TextAlign.center,
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 12,
                    color: Color(0xff767676),
                    fontFamily: 'NunitoSans-Regular',
                    fontWeight: FontWeight.normal),
                maxLines: 9999,
                overflow: TextOverflow.ellipsis,
              ),
            ),
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
            Positioned(
              left: 42,
              width: 19.108,
              top: 167,
              height: 21.814,
              child: Image.asset(
                'assets/images2/image2_9943685.png',
                width: 19.108,
                height: 21.814,
              ),
            ),
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
            Positioned(
              left: 38,
              width: 14,
              top: 303,
              height: 14,
              child: Image.asset(
                'assets/images2/image4_9943689.png',
                width: 14,
                height: 14,
              ),
            ),
            Positioned(
              left: 39,
              width: 12,
              top: 269,
              height: 13.2,
              child: Image.asset(
                'assets/images2/image5_9943692.png',
                width: 12,
                height: 13.2,
              ),
            ),
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
                        color: const Color(0x3f000000),
                        offset: Offset(0, -3),
                        blurRadius: 39.4),
                  ],
                ),
              ),
            ),
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
            const Positioned(
              left: 103,
              width: 118,
              top: 346,
              height: 47,
              child: Stack(
                children: [
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
                          fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
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
                          fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
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
            const Positioned(
              left: 26,
              top: 412,
              child: Text(
                'Our Experts',
                textAlign: TextAlign.left,
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 20,
                    color: Color(0xff484747),
                    fontFamily: 'NunitoSans-Bold',
                    fontWeight: FontWeight.normal),
                maxLines: 9999,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Positioned(
              left: 38,
              width: 90,
              top: 456,
              height: 90,
              child: Image.asset(
                'assets/images2/image10_9943704.png',
                width: 90,
                height: 90,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: 147,
              width: 90,
              top: 456,
              height: 90,
              child: Image.asset(
                'assets/images2/image11_9943705.png',
                width: 90,
                height: 90,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: 256,
              width: 90,
              top: 457,
              height: 90,
              child: Image.asset(
                'assets/images2/image12_9943706.png',
                width: 90,
                height: 90,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: 365,
              width: 90,
              top: 458,
              height: 90,
              child: Image.asset(
                'assets/images2/image13_9943707.png',
                width: 90,
                height: 90,
                fit: BoxFit.cover,
              ),
            ),
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
        ),
      ),
    );
  }
}
