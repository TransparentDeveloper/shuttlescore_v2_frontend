import 'package:flutter/material.dart';
import 'package:shuttlescore_v2_frontend/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColorLight: const Color(0xffEE1A29),
        primaryColorDark: const Color(0xff1560A4),
        primaryColor: Colors.white,
      ),
      home: const WelComeScreen(),
    );
  }
}
