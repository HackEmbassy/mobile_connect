import 'package:flutter/material.dart';

import 'package:flutter/material.dart';




class BookingScreen extends StatelessWidget {
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
              left: 31,
              width: 22,
              top: 552,
              height: 34,
              child: Text(
                'Sun ',
                textAlign: TextAlign.center,
                style: TextStyle(decoration: TextDecoration.none, fontSize: 12, color: const Color(0xffffffff), fontFamily: 'NunitoSans-Bold', fontWeight: FontWeight.normal),
                maxLines: 9999,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Positioned(
              left: 141,
              width: 21,
              top: 546,
              height: 34,
              child: Text(
                'Tue ',
                textAlign: TextAlign.center,
                style: TextStyle(decoration: TextDecoration.none, fontSize: 12, color: const Color(0xff383838), fontFamily: 'NunitoSans-Bold', fontWeight: FontWeight.normal),
                maxLines: 9999,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Positioned(
              left: 193,
              width: 27,
              top: 546,
              height: 34,
              child: Text(
                'Wed ',
                textAlign: TextAlign.center,
                style: TextStyle(decoration: TextDecoration.none, fontSize: 12, color: const Color(0xff383838), fontFamily: 'NunitoSans-Bold', fontWeight: FontWeight.normal),
                maxLines: 9999,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Positioned(
              left: 251,
              width: 22,
              top: 546,
              height: 34,
              child: Text(
                'Thu ',
                textAlign: TextAlign.center,
                style: TextStyle(decoration: TextDecoration.none, fontSize: 12, color: const Color(0xff484848), fontFamily: 'NunitoSans-Bold', fontWeight: FontWeight.normal),
                maxLines: 9999,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Positioned(
              left: 37,
              width: 10,
              top: 572,
              height: 34,
              child: Text(
                '7',
                textAlign: TextAlign.center,
                style: TextStyle(decoration: TextDecoration.none, fontSize: 16, color: const Color(0xffffffff), fontFamily: 'NunitoSans-Bold', fontWeight: FontWeight.normal),
                maxLines: 9999,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Positioned(
              left: 146,
              width: 10,
              top: 566,
              height: 34,
              child: Text(
                '9',
                textAlign: TextAlign.center,
                style: TextStyle(decoration: TextDecoration.none, fontSize: 16, color: const Color(0xff383838), fontFamily: 'NunitoSans-Bold', fontWeight: FontWeight.normal),
                maxLines: 9999,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Positioned(
              left: 196,
              width: 20,
              top: 566,
              height: 34,
              child: Text(
                '10',
                textAlign: TextAlign.center,
                style: TextStyle(decoration: TextDecoration.none, fontSize: 16, color: const Color(0xff383838), fontFamily: 'NunitoSans-Bold', fontWeight: FontWeight.normal),
                maxLines: 9999,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Positioned(
              left: 252,
              width: 20,
              top: 566,
              height: 34,
              child: Text(
                '11',
                textAlign: TextAlign.center,
                style: TextStyle(decoration: TextDecoration.none, fontSize: 16, color: const Color(0xff484848), fontFamily: 'NunitoSans-Bold', fontWeight: FontWeight.normal),
                maxLines: 9999,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Positioned(
              left: 0,
              width: 390,
              top: 0,
              height: 844,
              child: Container(
                width: 390,
                height: 844,
                decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      width: 390,
                      top: 54,
                      height: 348,
                      child: Container(
                        width: 390,
                        height: 348,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [Color(0xff244599),Color(0xff0C1733)],
                          ),
                          //boxShadow: const [BoxShadow(color: const Color(0x3f000000), offset: Offset(0, 0), blurRadius: 54.5),],
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

                    Positioned(
                      left: 24,
                      width: 24,
                      top: 75,
                      height: 24,
                      child: Image.asset('images/image1_9943793.png', width: 24, height: 24,),
                    ),
                    Positioned(
                      left: 29.143,
                      width: 12.857,
                      top: 80.143,
                      height: 13.846,
                      child: Image.asset('images/image2_9943794.png', width: 12.857, height: 13.846,),
                    ),
                    Positioned(
                      left: 166,
                      top: 70,
                      child: Text(
                        'Detail',
                        textAlign: TextAlign.left,
                        style: TextStyle(decoration: TextDecoration.none, fontSize: 20, color: const Color(0xffffffff), fontFamily: 'NunitoSans-Bold', fontWeight: FontWeight.normal),
                        maxLines: 9999,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Positioned(
                      left: 167,
                      width: 56,
                      top: 134,
                      height: 55,
                      child: Image.asset('images/image3_9943796.png', width: 56, height: 55, fit: BoxFit.cover,),
                    ),
                    Positioned(
                      left: 117,
                      width: 157,
                      top: 187,
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
                      left: 161,
                      top: 204,
                      child: Text(
                        'Obstetrician',
                        textAlign: TextAlign.center,
                        style: TextStyle(decoration: TextDecoration.none, fontSize: 12, color: const Color(0xffffffff), fontFamily: 'NunitoSans-Bold', fontWeight: FontWeight.normal),
                        maxLines: 9999,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Positioned(
                      left: 0,
                      width: 389,
                      top: 304,
                      height: 540,
                      child: Container(
                        width: 389,
                        height: 540,
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 118,
                      width: 155,
                      top: 238,
                      height: 37,
                      child: Container(
                        width: 155,
                        height: 37,
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          borderRadius: BorderRadius.circular(6.526),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 150.184,
                      width: 117.658,
                      top: 243,
                      child: Text(
                        '123 Fitness Avenue, Wellness Clinic, Downtown Branch',
                        textAlign: TextAlign.left,
                        style: TextStyle(decoration: TextDecoration.none, fontSize: 8, color: const Color(0xff484848), fontFamily: 'NunitoSans-Bold', fontWeight: FontWeight.normal),
                        maxLines: 9999,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Positioned(
                      left: 127,
                      width: 12.147,
                      top: 248,
                      height: 16.237,
                      child: Image.asset('images/image4_9943802.png', width: 12.147, height: 16.237,),
                    ),
                    Positioned(
                      left: 162,
                      width: 64,
                      top: 322,
                      height: 1,
                      child: Container(
                        width: 64,
                        height: 1,
                        decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xff767676), width: 4),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 19,
                      width: 350,
                      top: 774,
                      height: 48,
                      child: Container(
                        width: 350,
                        height: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 81, top: 0, right: 81, bottom: 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'BOOK A SESSION',
                                textAlign: TextAlign.center,
                                style: TextStyle(decoration: TextDecoration.none, fontSize: 16, color: const Color(0xffffffff), fontFamily: 'NunitoSans-Bold', fontWeight: FontWeight.normal),
                                maxLines: 9999,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 19,
                      width: 351,
                      top: 351,
                      height: 409,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 159,
                            child: Text(
                              'Available time. October 2024',
                              textAlign: TextAlign.center,
                              style: TextStyle(decoration: TextDecoration.none, fontSize: 16, color: const Color(0xff484848), fontFamily: 'NunitoSans-Bold', fontWeight: FontWeight.normal),
                              maxLines: 9999,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 278,
                            child: Text(
                              'Morning Slot',
                              textAlign: TextAlign.center,
                              style: TextStyle(decoration: TextDecoration.none, fontSize: 16, color: const Color(0xff484848), fontFamily: 'NunitoSans-Bold', fontWeight: FontWeight.normal),
                              maxLines: 9999,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 363,
                            child: Text(
                              'Afternoon Slot',
                              textAlign: TextAlign.center,
                              style: TextStyle(decoration: TextDecoration.none, fontSize: 16, color: const Color(0xff484848), fontFamily: 'NunitoSans-Bold', fontWeight: FontWeight.normal),
                              maxLines: 9999,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Positioned(
                            left: 1,
                            width: 359,
                            top: 192,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: 44,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: const Color(0xff244599),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 11),
                                Container(
                                  width: 44,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        width: 44,
                                        top: 0,
                                        height: 60,
                                        child: Container(
                                          width: 44,
                                          height: 60,
                                          decoration: BoxDecoration(
                                            border: Border.all(color: const Color(0xffcecece), width: 1),
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 10,
                                        top: 3,
                                        child: Text(
                                          'Mon',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(decoration: TextDecoration.none, fontSize: 12, color: const Color(0xff484848), fontFamily: 'NunitoSans-Bold', fontWeight: FontWeight.normal),
                                          maxLines: 9999,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      Positioned(
                                        left: 17,
                                        top: 23,
                                        child: Text(
                                          '8',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(decoration: TextDecoration.none, fontSize: 16, color: const Color(0xff484848), fontFamily: 'NunitoSans-Bold', fontWeight: FontWeight.normal),
                                          maxLines: 9999,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 11),
                                Container(
                                  width: 44,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: const Color(0xff244599), width: 1),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                const SizedBox(width: 11),
                                Container(
                                  width: 44,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: const Color(0xff244599), width: 1),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                const SizedBox(width: 11),
                                Container(
                                  width: 44,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: const Color(0xffcecece), width: 1),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                const SizedBox(width: 11),
                                Container(
                                  width: 44,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        width: 44,
                                        top: 0,
                                        height: 60,
                                        child: Container(
                                          width: 44,
                                          height: 60,
                                          decoration: BoxDecoration(
                                            border: Border.all(color: const Color(0xff244599), width: 1),
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 15,
                                        top: 3,
                                        child: Text(
                                          'Fri ',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(decoration: TextDecoration.none, fontSize: 12, color: const Color(0xff383838), fontFamily: 'NunitoSans-Bold', fontWeight: FontWeight.normal),
                                          maxLines: 9999,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      Positioned(
                                        left: 12,
                                        top: 23,
                                        child: Text(
                                          '12',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(decoration: TextDecoration.none, fontSize: 16, color: const Color(0xff383838), fontFamily: 'NunitoSans-Bold', fontWeight: FontWeight.normal),
                                          maxLines: 9999,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 11),
                                Container(
                                  width: 44,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        width: 44,
                                        top: 0,
                                        height: 60,
                                        child: Container(
                                          width: 44,
                                          height: 60,
                                          decoration: BoxDecoration(
                                            border: Border.all(color: const Color(0xff244599), width: 1),
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 13,
                                        top: 3,
                                        child: Text(
                                          'Sat ',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(decoration: TextDecoration.none, fontSize: 12, color: const Color(0xff383838), fontFamily: 'NunitoSans-Bold', fontWeight: FontWeight.normal),
                                          maxLines: 9999,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      Positioned(
                                        left: 12,
                                        top: 23,
                                        child: Text(
                                          '13',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(decoration: TextDecoration.none, fontSize: 16, color: const Color(0xff383838), fontFamily: 'NunitoSans-Bold', fontWeight: FontWeight.normal),
                                          maxLines: 9999,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 1,
                            width: 107,
                            top: 312,
                            height: 38,
                            child: Container(
                              width: 107,
                              height: 38,
                              decoration: BoxDecoration(
                                border: Border.all(color: const Color(0xff244599), width: 1),
                                borderRadius: BorderRadius.circular(31),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 19, top: 2, right: 19, bottom: 2),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      '08:30AM',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(decoration: TextDecoration.none, fontSize: 16, color: const Color(0xff484848), fontFamily: 'NunitoSans-Bold', fontWeight: FontWeight.normal),
                                      maxLines: 9999,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 1,
                            width: 107,
                            top: 397,
                            height: 38,
                            child: Container(
                              width: 107,
                              height: 38,
                              decoration: BoxDecoration(
                                border: Border.all(color: const Color(0xff244599), width: 1),
                                borderRadius: BorderRadius.circular(31),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 19, top: 2, right: 19, bottom: 2),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      '01:30PM',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(decoration: TextDecoration.none, fontSize: 16, color: const Color(0xff767676), fontFamily: 'NunitoSans-Bold', fontWeight: FontWeight.normal),
                                      maxLines: 9999,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 127,
                            width: 107,
                            top: 312,
                            height: 38,
                            child: Container(
                              width: 107,
                              height: 38,
                              decoration: BoxDecoration(
                                color: const Color(0xff244599),
                                borderRadius: BorderRadius.circular(31),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 19, top: 2, right: 19, bottom: 2),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      '09:00AM',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(decoration: TextDecoration.none, fontSize: 16, color: const Color(0xffffffff), fontFamily: 'NunitoSans-Bold', fontWeight: FontWeight.normal),
                                      maxLines: 9999,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 127,
                            width: 107,
                            top: 397,
                            height: 38,
                            child: Container(
                              width: 107,
                              height: 38,
                              decoration: BoxDecoration(
                                color: const Color(0xff244599),
                                borderRadius: BorderRadius.circular(31),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 19, top: 2, right: 19, bottom: 2),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      '02:00PM',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(decoration: TextDecoration.none, fontSize: 16, color: const Color(0xffffffff), fontFamily: 'NunitoSans-Bold', fontWeight: FontWeight.normal),
                                      maxLines: 9999,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 253,
                            width: 107,
                            top: 311,
                            height: 38,
                            child: Container(
                              width: 107,
                              height: 38,
                              decoration: BoxDecoration(
                                border: Border.all(color: const Color(0xff244599), width: 1),
                                borderRadius: BorderRadius.circular(31),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 19, top: 2, right: 19, bottom: 2),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      '09:30AM',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(decoration: TextDecoration.none, fontSize: 16, color: const Color(0xff484848), fontFamily: 'NunitoSans-Bold', fontWeight: FontWeight.normal),
                                      maxLines: 9999,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 253,
                            width: 107,
                            top: 396,
                            height: 38,
                            child: Container(
                              width: 107,
                              height: 38,
                              decoration: BoxDecoration(
                                border: Border.all(color: const Color(0xff244599), width: 1),
                                borderRadius: BorderRadius.circular(31),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 19, top: 2, right: 19, bottom: 2),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const SizedBox(width: 10),
                                    Expanded(
                                      child: Text(
                                        '02:30PM',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(decoration: TextDecoration.none, fontSize: 16, color: const Color(0xff767676), fontFamily: 'NunitoSans-Bold', fontWeight: FontWeight.normal),
                                        maxLines: 9999,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 1,
                            top: 0,
                            child: Text(
                              'Select service',
                              textAlign: TextAlign.center,
                              style: TextStyle(decoration: TextDecoration.none, fontSize: 20, color: const Color(0xff767676), fontFamily: 'NunitoSans-Bold', fontWeight: FontWeight.normal),
                              maxLines: 9999,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Positioned(
                            left: 8,
                            top: 130,
                            child: Text(
                              'Select service',
                              textAlign: TextAlign.center,
                              style: TextStyle(decoration: TextDecoration.none, fontSize: 12, color: const Color(0xff0c1733), fontFamily: 'NunitoSans-Bold', fontWeight: FontWeight.normal),
                              maxLines: 9999,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Positioned(
                            left: 117,
                            top: 130,
                            child: Text(
                              'Select service',
                              textAlign: TextAlign.center,
                              style: TextStyle(decoration: TextDecoration.none, fontSize: 12, color: const Color(0x660c1733), fontFamily: 'NunitoSans-Bold', fontWeight: FontWeight.normal),
                              maxLines: 9999,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Positioned(
                            left: 226,
                            top: 130,
                            child: Text(
                              'Select service',
                              textAlign: TextAlign.center,
                              style: TextStyle(decoration: TextDecoration.none, fontSize: 12, color: const Color(0x660c1733), fontFamily: 'NunitoSans-Bold', fontWeight: FontWeight.normal),
                              maxLines: 9999,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Positioned(
                            left: 330,
                            top: 130,
                            child: Text(
                              'Select service',
                              textAlign: TextAlign.center,
                              style: TextStyle(decoration: TextDecoration.none, fontSize: 12, color: const Color(0x660c1733), fontFamily: 'NunitoSans-Bold', fontWeight: FontWeight.normal),
                              maxLines: 9999,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Positioned(
                            left: 1,
                            width: 349,
                            top: 39,
                            height: 96,
                            child: Image.asset('images/image_9943855.png', width: 349, height: 96,),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



// class BookingScreen extends StatefulWidget {
//   const BookingScreen({super.key});
//
//   @override
//   _BookingScreenState createState() => _BookingScreenState();
// }
//
// class _BookingScreenState extends State<BookingScreen> {
//   int selectedServiceIndex = -1;
//   int selectedDateIndex = 0;
//   int selectedTimeSlotIndex = -1;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           const SizedBox(height: 10),
//           // Doctor details
//           _buildDoctorDetails(),
//           const SizedBox(height: 10),
//           // Service Selection
//           Expanded(
//             child: SingleChildScrollView(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   _buildServiceSelection(),
//                   const SizedBox(height: 20),
//                   _buildDateSelectionBox(),
//                   if (selectedServiceIndex != -1) ...[
//                     // Display Time Slots after selecting a service
//                     const SizedBox(height: 20),
//                     _buildTimeSlotSelection(),
//                   ],
//                 ],
//               ),
//             ),
//           ),
//           // Book a Session Button
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: ElevatedButton(
//               onPressed: selectedServiceIndex == -1 || selectedTimeSlotIndex == -1
//                   ? null
//                   : () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => const BookingSummaryPage()),
//                 );
//               },
//               style: ElevatedButton.styleFrom(
//                 padding: const EdgeInsets.symmetric(vertical: 15),
//                 backgroundColor: Colors.lightBlue,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//               ),
//               child: const Center(
//                 child: Text(
//                   'BOOK A SESSION',
//                   style: TextStyle(fontWeight: FontWeight.bold),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildDoctorDetails() {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
//       child: Column(
//         children: [
//           CircleAvatar(radius: 30, backgroundColor: Colors.grey[400]),
//           const SizedBox(height: 10),
//           const Text(
//             'Dr. Richard Kandowen',
//             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
//           ),
//           const Text(
//             'Obstetrician',
//             style: TextStyle(color: Colors.grey),
//           ),
//           const SizedBox(height: 10),
//           const Text(
//             '123 Peace Avenue, Wellness Clinic, Downtown Branch',
//             textAlign: TextAlign.center,
//             style: TextStyle(color: Colors.grey),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildServiceSelection() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const Padding(
//           padding: EdgeInsets.symmetric(horizontal: 16),
//           child: Text(
//             'Select Service',
//             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
//           ),
//         ),
//         const SizedBox(height: 10),
//         SizedBox(
//           height: 150, // Increased height for bigger box
//           child: ListView.builder(
//             scrollDirection: Axis.horizontal,
//             itemCount: 5, // Replace with actual service count
//             itemBuilder: (context, index) {
//               return GestureDetector(
//                 onTap: () {
//                   setState(() {
//                     selectedServiceIndex = index;
//                     selectedTimeSlotIndex = -1; // Reset time selection
//                   });
//                 },
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 8),
//                   child: Container(
//                     width: 100, // Wider service box
//                     decoration: BoxDecoration(
//                       color: selectedServiceIndex == index
//                           ? Colors.grey[400]
//                           : Colors.grey[300],
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     child: const Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Icon(Icons.medical_services_outlined, size: 30),
//                         SizedBox(height: 10),
//                         Text(
//                           'Service',
//                           style: TextStyle(fontSize: 14), // Larger font size
//                           textAlign: TextAlign.center,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               );
//             },
//           ),
//         ),
//       ],
//     );
//   }
//
//   Widget _buildDateSelectionBox() {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16),
//       child: Container(
//         padding: const EdgeInsets.all(16),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(8),
//           border: Border.all(color: Colors.grey[300]!),
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text(
//               'Select Date',
//               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
//             ),
//             const SizedBox(height: 10),
//             SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               child: Row(
//                 children: List.generate(30, (index) {
//                   return GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         selectedDateIndex = index;
//                       });
//                     },
//                     child: Container(
//                       margin: const EdgeInsets.symmetric(horizontal: 4),
//                       padding: const EdgeInsets.all(8),
//                       decoration: BoxDecoration(
//                         color: selectedDateIndex == index
//                             ? Colors.grey[400]
//                             : Colors.grey[200],
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Text(
//                             ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat']
//                             [index % 7], // Day of the week
//                             style: const TextStyle(fontSize: 10),
//                           ),
//                           Text(
//                             (index + 1).toString(), // Day of the month
//                             style: const TextStyle(
//                                 fontSize: 16, fontWeight: FontWeight.bold),
//                           ),
//                         ],
//                       ),
//                     ),
//                   );
//                 }),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildTimeSlotSelection() {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const Text(
//             'Morning Slot',
//             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
//           ),
//           const SizedBox(height: 10),
//           Row(
//             children: [
//               _buildTimeSlot(context, '08:30 AM', 0),
//               _buildTimeSlot(context, '09:00 AM', 1),
//               _buildTimeSlot(context, '09:30 AM', 2),
//             ],
//           ),
//           const SizedBox(height: 20),
//           const Text(
//             'Afternoon Slot',
//             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
//           ),
//           const SizedBox(height: 10),
//           Row(
//             children: [
//               _buildTimeSlot(context, '01:30 PM', 3),
//               _buildTimeSlot(context, '02:00 PM', 4),
//               _buildTimeSlot(context, '02:30 PM', 5),
//             ],
//           ),
//           const SizedBox(height: 20),
//           const Text(
//             'Evening Slot',
//             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
//           ),
//           const SizedBox(height: 10),
//           Row(
//             children: [
//               _buildTimeSlot(context, '06:00 PM', 6),
//               _buildTimeSlot(context, '06:30 PM', 7),
//               _buildTimeSlot(context, '07:00 PM', 8),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildTimeSlot(BuildContext context, String time, int index) {
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           selectedTimeSlotIndex = index;
//         });
//       },
//       child: Padding(
//         padding: const EdgeInsets.only(right: 8.0),
//         child: Container(
//           padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
//           decoration: BoxDecoration(
//             color: selectedTimeSlotIndex == index
//                 ? Colors.grey[400]
//                 : Colors.grey[200],
//             borderRadius: BorderRadius.circular(8),
//           ),
//           child: Text(
//             time,
//             style: TextStyle(
//               fontWeight: FontWeight.bold,
//               color: selectedTimeSlotIndex == index
//                   ? Colors.black
//                   : Colors.grey[600],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
