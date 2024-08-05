import 'dart:async';

import 'package:flutter/material.dart';
import 'package:herhealthconnect/Components/Image/ImageView.dart';
import 'package:herhealthconnect/Components/Image/Model/ImageConfig.dart';
import 'package:herhealthconnect/Screens/Onboarding/onboarding.dart';
import 'package:herhealthconnect/assets/app_colors.dart';
import 'package:herhealthconnect/assets/app_image.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    timer();
  }

  route() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const Onboarding()));
  }

  timer() {
    var duration = const Duration(seconds: 6);
    return Timer(duration, route);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(color: AppColors.primary50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Make sure to affix the right logo image below
          ImageView(
            imageConfig: ImageConfig(
              imageURL: AppImage.logowhite,
              imageType: ImageType.asset,
            ),
          )
        ],
      ),
    );
  }
}
