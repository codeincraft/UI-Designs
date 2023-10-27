import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'blacklayer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // textTheme: GoogleFonts()
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Positioned(
          bottom: height / 3,
          child: Image.network(
            'https://images.unsplash.com/photo-1664435916463-e6fe083d5922?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
            height: height,
            width: width,
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            height: 2.4,
            width: width,
            color: Color.fromARGB(255, 15, 14, 19),
          ),
        ),
        BlackLayer(),
      ],
    );
  }
}
