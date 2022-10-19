import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_ui/Pages/onboarding_page.dart';

void main() {
  runApp(const TravelUi());
}

class TravelUi extends StatelessWidget {
  const TravelUi({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TravelUi',
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        primarySwatch: Colors.blue,
      ),
      home: const OnBoardingPage(),
    );
  }
}
