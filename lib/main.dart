import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:herhealthconnect/Screens/Onboarding/Splash.dart';
import 'package:overlay_support/overlay_support.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return OverlaySupport.global(
      child: ScreenUtilInit(
        designSize: const Size(414,781),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_,__)=> MaterialApp(
          title: 'HerHealthConnect',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
           colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const SplashScreen(),
        ),
      ),
    );
  }
}
