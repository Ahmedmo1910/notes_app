import 'package:flutter/material.dart';
import 'package:notes/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFFFFFFF),
        fontFamily: 'Inter'),
      debugShowCheckedModeBanner: false,
      title: 'Notes',
      home: MainScreen(),
    );
  }
}
