import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neon/screens/homepage.dart';
import 'package:neon/screens/landing_page.dart';
import 'package:neon/screens/movie_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.openSans().fontFamily,
      ),
      home: //LandingPage()
      const MovieDetailPage()
      
      // HomePage()
      
      // LandingPage(),
    );
  }
}
