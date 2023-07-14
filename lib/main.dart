
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:thurisa/constants/app_color.dart' as color;
import 'package:thurisa/screens/onboarding_screen.dart'; 

void main() {
  runApp(const Thurisa());
}

class Thurisa extends StatelessWidget {
  const Thurisa({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Paysequr',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const OnboardingScreen(),
      builder: EasyLoading.init(),
    );
  }
}