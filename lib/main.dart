import 'package:flutter/material.dart';
import 'package:salad_works/login_screen.dart';
// import 'package:salad_works/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Salad Works',
      theme: ThemeData(),
      home: const LoginScreen(),
    );
  }
}
