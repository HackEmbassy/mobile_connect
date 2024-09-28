import 'package:flutter/material.dart';

import 'book_a_session_2.dart';

class BookSessionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Container(
        width: 390,
        height: 844,
        decoration: BoxDecoration(
          color: const Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 32,
              width: 326,
              top: 214,
              height: 507,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    width: 326,
                    top: 0,
                    height: 138,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          width: 326,
                          top: 0,
                          height: 138,
                          child: Container(
                            width: 326,
                            height: 138,
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [Color(0xff244599),Color(0xff0C1733)],
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 9,
                          width: 80,
                          top: 8,
                          height: 96,
                          child: Image.asset('images2/image1_9943712.png', width: 80, height: 96, fit: BoxFit.cover,),
                        ),
                        Positioned(
                          left: 109,
                          width: 157,
                          top: 8,
                          height: 24,
                          child: Text(
                            'Dr. Richar Kandowen',
                            textAlign: TextAlign.center,
                            style: TextStyle(decoration: TextDecoration.none, fontSize: 16, color: const Color(0xffffffff), fontFamily: 'NunitoSans-Bold', fontWeight: FontWeight.normal),
                            maxLines: 9999,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Positioned(
                          left: 109,
                          top: 27,
                          child: Text(
                            'Obstetrician',
                            textAlign: TextAlign.center,
                            style: TextStyle(decoration: TextDecoration.none, fontSize: 12, color: const Color(0xffffffff), fontFamily: 'NunitoSans-Bold', fontWeight: FontWeight.normal),
                            maxLines: 9999,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Positioned(
                          left: 120,
                          top: 44,
                          child: Text(
                            '116 Abayi, Aba, Abia State',
                            textAlign: TextAlign.center,
                            style: TextStyle(decoration: TextDecoration.none, fontSize: 12, color: const Color(0xffffffff), fontFamily: 'NunitoSans-SemiBold', fontWeight: FontWeight.normal),
                            maxLines: 9999,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Positioned(
                          left: 9,
                          width: 62,
                          top: 98,
                          height: 30,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 15,
                                width: 18,
                                top: 0,
                                height: 21,
                                child: Text(
                                  '4.5',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(decoration: TextDecoration.none, fontSize: 10, color: const Color(0xffffffff), fontFamily: 'NunitoSans-SemiBold', fontWeight: FontWeight.normal),
                                  maxLines: 9999,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Positioned(
                                left: 13,
                                width: 49,
                                top: 10,
                                height: 20,
                                child: Text(
                                  '(2k reviews)',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(decoration: TextDecoration.none, fontSize: 8, color: const Color(0xffffffff), fontFamily: 'NunitoSans-SemiBold', fontWeight: FontWeight.normal),
                                  maxLines: 9999,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Positioned(
                                left: 0,
                                width: 13.071,
                                top: 14,
                                height: 12.621,
                                child: Image.asset('images2/image_9943719.png', width: 13.071, height: 12.621,),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 109,
                          width: 7,
                          top: 56,
                          height: 9.357,
                          child: Image.asset('images2/image2_9943720.png', width: 7, height: 9.357,),
                        ),
                        Positioned(
                          left: 109,
                          width: 69,
                          top: 104,
                          height: 25,
                          child: GestureDetector(
                            onTap:() { Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => BookingScreen()),
                            );
                            },
                            child: Container(
                              width: 69,
                              height: 25,
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [Color(0xff244599),Color(0xff0C1733)],
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 81, top: 0, right: 81, bottom: 0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                      onTap:() { Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => BookingScreen()),
                                      );
                                      },
                                      child: Text(
                                        'View more',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(decoration: TextDecoration.none, fontSize: 10, color: const Color(0xffffffff), fontFamily: 'NunitoSans-SemiBold', fontWeight: FontWeight.normal),
                                        maxLines: 9999,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 0,
                    width: 326,
                    top: 153,
                    height: 138,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          width: 326,
                          top: 0,
                          height: 138,
                          child: Container(
                            width: 326,
                            height: 138,
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [Color(0xff244599),Color(0xff0C1733)],
                              ),
                              borderRadius: BorderRadius.circular(8),
                              //boxShadow: const [BoxShadow(color: const Color(0x3f000000), offset: Offset(0, 0), blurRadius: 54.5),],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 9,
                          width: 80,
                          top: 8,
                          height: 96,
                          child: Image.asset('images2/image1_9943727.png', width: 80, height: 96, fit: BoxFit.cover,),
                        ),
                        Positioned(
                          left: 109,
                          width: 157,
                          top: 8,
                          height: 24,
                          child: Text(
                            'Dr. Richar Kandowen',
                            textAlign: TextAlign.center,
                            style: TextStyle(decoration: TextDecoration.none, fontSize: 16, color: const Color(0xffffffff), fontFamily: 'NunitoSans-Bold', fontWeight: FontWeight.normal),
                            maxLines: 9999,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Positioned(
                          left: 109,
                          top: 27,
                          child: Text(
                            'Obstetrician',
                            textAlign: TextAlign.center,
                            style: TextStyle(decoration: TextDecoration.none, fontSize: 12, color: const Color(0xffffffff), fontFamily: 'NunitoSans-Bold', fontWeight: FontWeight.normal),
                            maxLines: 9999,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Positioned(
                          left: 120,
                          top: 44,
                          child: Text(
                            '116 Abayi, Aba, Abia State',
                            textAlign: TextAlign.center,
                            style: TextStyle(decoration: TextDecoration.none, fontSize: 12, color: const Color(0xffffffff), fontFamily: 'NunitoSans-SemiBold', fontWeight: FontWeight.normal),
                            maxLines: 9999,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Positioned(
                          left: 9,
                          width: 62,
                          top: 98,
                          height: 30,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 15,
                                width: 18,
                                top: 0,
                                height: 21,
                                child: Text(
                                  '4.5',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(decoration: TextDecoration.none, fontSize: 10, color: const Color(0xffffffff), fontFamily: 'NunitoSans-SemiBold', fontWeight: FontWeight.normal),
                                  maxLines: 9999,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Positioned(
                                left: 13,
                                width: 49,
                                top: 10,
                                height: 20,
                                child: Text(
                                  '(2k reviews)',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(decoration: TextDecoration.none, fontSize: 8, color: const Color(0xffffffff), fontFamily: 'NunitoSans-SemiBold', fontWeight: FontWeight.normal),
                                  maxLines: 9999,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Positioned(
                                left: 0,
                                width: 13.071,
                                top: 14,
                                height: 12.621,
                                child: Image.asset('images2/image_9943734.png', width: 13.071, height: 12.621,),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 109,
                          width: 7,
                          top: 56,
                          height: 9.357,
                          child: Image.asset('images2/image2_9943735.png', width: 7, height: 9.357,),
                        ),
                        Positioned(
                          left: 109,
                          width: 69,
                          top: 104,
                          height: 25,
                          child: GestureDetector(
                            onTap:() { Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => BookingScreen()),
                            );
                            },
                            child: Container(
                              width: 69,
                              height: 25,
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [Color(0xff244599),Color(0xff0C1733)],
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 81, top: 0, right: 81, bottom: 0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                      onTap:() { Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => BookingScreen()),
                                      );
                                      },
                                      child:
                                      Text(
                                        'View more',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(decoration: TextDecoration.none, fontSize: 10, color: const Color(0xffffffff), fontFamily: 'NunitoSans-SemiBold', fontWeight: FontWeight.normal),
                                        maxLines: 9999,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 0,
                    width: 326,
                    top: 306,
                    height: 138,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          width: 326,
                          top: 0,
                          height: 138,
                          child: Container(
                            width: 326,
                            height: 138,
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [Color(0xff244599),Color(0xff0C1733)],
                              ),
                              borderRadius: BorderRadius.circular(8),
                              //boxShadow: const [BoxShadow(color: const Color(0x3f000000), offset: Offset(0, 0), blurRadius: 54.5),],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 9,
                          width: 80,
                          top: 8,
                          height: 96,
                          child: Image.asset('images2/image1_9943742.png', width: 80, height: 96, fit: BoxFit.cover,),
                        ),
                        Positioned(
                          left: 109,
                          width: 157,
                          top: 8,
                          height: 24,
                          child: Text(
                            'Dr. Richar Kandowen',
                            textAlign: TextAlign.center,
                            style: TextStyle(decoration: TextDecoration.none, fontSize: 16, color: const Color(0xffffffff), fontFamily: 'NunitoSans-Bold', fontWeight: FontWeight.normal),
                            maxLines: 9999,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Positioned(
                          left: 109,
                          top: 27,
                          child: Text(
                            'Obstetrician',
                            textAlign: TextAlign.center,
                            style: TextStyle(decoration: TextDecoration.none, fontSize: 12, color: const Color(0xffffffff), fontFamily: 'NunitoSans-Bold', fontWeight: FontWeight.normal),
                            maxLines: 9999,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Positioned(
                          left: 120,
                          top: 44,
                          child: Text(
                            '116 Abayi, Aba, Abia State',
                            textAlign: TextAlign.center,
                            style: TextStyle(decoration: TextDecoration.none, fontSize: 12, color: const Color(0xffffffff), fontFamily: 'NunitoSans-SemiBold', fontWeight: FontWeight.normal),
                            maxLines: 9999,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Positioned(
                          left: 9,
                          width: 62,
                          top: 98,
                          height: 30,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 15,
                                width: 18,
                                top: 0,
                                height: 21,
                                child: Text(
                                  '4.5',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(decoration: TextDecoration.none, fontSize: 10, color: const Color(0xffffffff), fontFamily: 'NunitoSans-SemiBold', fontWeight: FontWeight.normal),
                                  maxLines: 9999,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Positioned(
                                left: 13,
                                width: 49,
                                top: 10,
                                height: 20,
                                child: Text(
                                  '(2k reviews)',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(decoration: TextDecoration.none, fontSize: 8, color: const Color(0xffffffff), fontFamily: 'NunitoSans-SemiBold', fontWeight: FontWeight.normal),
                                  maxLines: 9999,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Positioned(
                                left: 0,
                                width: 13.071,
                                top: 14,
                                height: 12.621,
                                child: Image.asset('images2/image_9943749.png', width: 13.071, height: 12.621,),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 109,
                          width: 7,
                          top: 56,
                          height: 9.357,
                          child: Image.asset('images2/image2_9943750.png', width: 7, height: 9.357,),
                        ),
                        Positioned(
                          left: 109,
                          width: 69,
                          top: 104,
                          height: 25,
                          child: GestureDetector(
                            onTap:() { Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => BookingScreen()),
                            );
                            },
                            child: Container(
                              width: 69,
                              height: 25,
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [Color(0xff244599),Color(0xff0C1733)],
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 81, top: 0, right: 81, bottom: 0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                      onTap:() { Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => BookingScreen()),
                                      );
                                      },
                                      child: Text(
                                        'View more',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(decoration: TextDecoration.none, fontSize: 10, color: const Color(0xffffffff), fontFamily: 'NunitoSans-SemiBold', fontWeight: FontWeight.normal),
                                        maxLines: 9999,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 0,
                    width: 326,
                    top: 459,
                    height: 138,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          width: 326,
                          top: 0,
                          height: 138,
                          child: Container(
                            width: 326,
                            height: 138,
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [Color(0xff244599),Color(0xff0C1733)],
                              ),
                              borderRadius: BorderRadius.circular(8),
                              //boxShadow: const [BoxShadow(color: const Color(0x3f000000), offset: Offset(0, 0), blurRadius: 54.5),],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 9,
                          width: 80,
                          top: 8,
                          height: 96,
                          child: Image.asset('images/image1_9943757.png', width: 80, height: 96, fit: BoxFit.cover,),
                        ),
                        Positioned(
                          left: 109,
                          width: 157,
                          top: 8,
                          height: 24,
                          child: Text(
                            'Dr. Richar Kandowen',
                            textAlign: TextAlign.center,
                            style: TextStyle(decoration: TextDecoration.none, fontSize: 16, color: const Color(0xffffffff), fontFamily: 'NunitoSans-Bold', fontWeight: FontWeight.normal),
                            maxLines: 9999,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Positioned(
                          left: 109,
                          top: 27,
                          child: Text(
                            'Obstetrician',
                            textAlign: TextAlign.center,
                            style: TextStyle(decoration: TextDecoration.none, fontSize: 12, color: const Color(0xffffffff), fontFamily: 'NunitoSans-Bold', fontWeight: FontWeight.normal),
                            maxLines: 9999,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Positioned(
                          left: 120,
                          top: 44,
                          child: Text(
                            '116 Abayi, Aba, Abia State',
                            textAlign: TextAlign.center,
                            style: TextStyle(decoration: TextDecoration.none, fontSize: 12, color: const Color(0xffffffff), fontFamily: 'NunitoSans-SemiBold', fontWeight: FontWeight.normal),
                            maxLines: 9999,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Positioned(
                          left: 9,
                          width: 62,
                          top: 98,
                          height: 30,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 15,
                                width: 18,
                                top: 0,
                                height: 21,
                                child: Text(
                                  '4.5',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(decoration: TextDecoration.none, fontSize: 10, color: const Color(0xff767676), fontFamily: 'NunitoSans-SemiBold', fontWeight: FontWeight.normal),
                                  maxLines: 9999,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Positioned(
                                left: 13,
                                width: 49,
                                top: 10,
                                height: 20,
                                child: Text(
                                  '(2k reviews)',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(decoration: TextDecoration.none, fontSize: 8, color: const Color(0xff767676), fontFamily: 'NunitoSans-SemiBold', fontWeight: FontWeight.normal),
                                  maxLines: 9999,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Positioned(
                                left: 0,
                                width: 13.071,
                                top: 14,
                                height: 12.621,
                                child: Image.asset('images/image_9943764.png', width: 13.071, height: 12.621,),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 109,
                          width: 7,
                          top: 56,
                          height: 9.357,
                          child: Image.asset('images/image2_9943765.png', width: 7, height: 9.357,),
                        ),
                        Positioned(
                          left: 109,
                          width: 69,
                          top: 104,
                          height: 25,
                          child: Container(
                            width: 69,
                            height: 25,
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [Color(0xff244599),Color(0xff0C1733)],
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 81, top: 0, right: 81, bottom: 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'View more',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(decoration: TextDecoration.none, fontSize: 10, color: const Color(0xffffffff), fontFamily: 'NunitoSans-SemiBold', fontWeight: FontWeight.normal),
                                    maxLines: 9999,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              width: 390,
              top: 747,
              height: 97,
              child: Container(
                width: 390,
                height: 97,
                decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                  boxShadow: const [BoxShadow(color: const Color(0x3f000000), offset: Offset(-6, 0), blurRadius: 12),],
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
                  gradient: const LinearGradient(
                    colors: [Color(0xff244599),Color(0xff0C1733)],
                  ),
                  border: Border.all( width: 4),
                ),
              ),
            ),
            Positioned(
              left: 124,
              top: 70,
              child: Text(
                'Book a Session',
                textAlign: TextAlign.left,
                style: TextStyle(decoration: TextDecoration.none, color: Colors.blue, fontSize: 20, fontFamily: 'NunitoSans-Bold', fontWeight: FontWeight.normal),
                maxLines: 9999,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Positioned(
              left: 30,
              width: 329,
              top: 158,
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
            Positioned(
              left: 70,
              top: 158,
              child: Text(
                'Search for professionals or specialty',
                textAlign: TextAlign.center,
                style: TextStyle(decoration: TextDecoration.none, fontSize: 12, color: const Color(0xff767676), fontFamily: 'NunitoSans-Regular', fontWeight: FontWeight.normal),
                maxLines: 9999,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Positioned(
              left: 46,
              width: 19.108,
              top: 165,
              height: 21.814,
              child: Image.asset('images2/image1_9943778.png', width: 19.108, height: 21.814,),
            ),
            Positioned(
              left: 320,
              width: 16,
              top: 167,
              height: 18,
              child: Image.asset('images2/image2_9943781.png', width: 16, height: 18,),
            ),
            Positioned(
              left: 32,
              width: 24,
              top: 75,
              height: 24,
              child: Image.asset('images2/image3_9943786.png', width: 24, height: 24,),
            ),
            Positioned(
              left: 37.143,
              width: 12.857,
              top: 80.143,
              height: 13.846,
              child: Image.asset('images2/image4_9943787.png', width: 12.857, height: 13.846,),
            ),
          ],
        ),
      ),
    );
  }
}




//
// class BookSessionScreen extends StatelessWidget {
//   const BookSessionScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.grey[200],
//         elevation: 0,
//         toolbarHeight: 60,
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back, color: Colors.black87),
//           onPressed: () => Navigator.of(context).pop(),
//         ),
//         title: const Text(
//           'Book a Session',
//           style: TextStyle(color: Colors.black87, fontSize: 20),
//         ),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             TextField(
//               decoration: InputDecoration(
//                 hintText: "Search for professionals or specialty",
//                 prefixIcon: Icon(Icons.search, color: Colors.grey[600]),
//                 suffixIcon: Icon(Icons.filter_list, color: Colors.grey[600]),
//                 fillColor: Colors.grey[200],
//                 filled: true,
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(30),
//                   borderSide: BorderSide.none,
//                 ),
//               ),
//             ),
//             const SizedBox(height: 20),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: 5, // Change this to the number of items
//                 itemBuilder: (context, index) {
//                   return Padding(
//                     padding: const EdgeInsets.only(bottom: 16.0),
//                     child: Container(
//                       decoration: BoxDecoration(
//                         color: const Color(0xFF0E47A1),
//                         borderRadius: BorderRadius.circular(15),
//                       ),
//                       padding: const EdgeInsets.all(16),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Row(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               CircleAvatar(
//                                 radius: 30,
//                                 backgroundImage: AssetImage('assets/doctor.png'), // Replace with actual image
//                               ),
//                               const SizedBox(width: 10),
//                               Expanded(
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: const [
//                                     Text(
//                                       "Dr. Richar Kandowen",
//                                       style: TextStyle(
//                                         color: Colors.white,
//                                         fontSize: 18,
//                                         fontWeight: FontWeight.bold,
//                                       ),
//                                     ),
//                                     SizedBox(height: 4),
//                                     Text(
//                                       "Obstetrician",
//                                       style: TextStyle(
//                                         color: Colors.white70,
//                                         fontSize: 14,
//                                       ),
//                                     ),
//                                     SizedBox(height: 4),
//                                     Text(
//                                       "116 Abayi, Aba, Abia State",
//                                       style: TextStyle(
//                                         color: Colors.white70,
//                                         fontSize: 14,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               const Icon(
//                                 Icons.more_vert,
//                                 color: Colors.white,
//                               ),
//                             ],
//                           ),
//                           const SizedBox(height: 16),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Row(
//                                 children: const [
//                                   Icon(Icons.star, color: Colors.amber, size: 20),
//                                   SizedBox(width: 5),
//                                   Text(
//                                     "4.5",
//                                     style: TextStyle(
//                                       color: Colors.white,
//                                       fontSize: 14,
//                                     ),
//                                   ),
//                                   SizedBox(width: 5),
//                                   Text(
//                                     "(2k reviews)",
//                                     style: TextStyle(
//                                       color: Colors.white70,
//                                       fontSize: 14,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                               ElevatedButton(
//                                 onPressed: () {
//                                   Navigator.push(
//                                     context,
//                                     MaterialPageRoute(builder: (context) => BookingScreen()),
//                                   );// Handle view more action
//                                 },
//                                 style: ElevatedButton.styleFrom(
//                                   backgroundColor: Colors.white,
//                                   shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(30),
//                                   ),
//                                   padding: const EdgeInsets.symmetric(
//                                       horizontal: 20, vertical: 10),
//                                 ),
//                                 child: const Text(
//                                   'View more',
//                                   style: TextStyle(
//                                     color: Color(0xFF0E47A1),
//                                     fontSize: 16,
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
