import 'package:flutter/material.dart';
import 'package:shuttlescore_v2_frontend/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ShuttleScore',
      theme: ThemeData(
        primaryColorDark: const Color.fromARGB(255, 26, 26, 26),
        primaryColorLight: const Color.fromARGB(255, 255, 255, 255),
        scaffoldBackgroundColor: const Color.fromARGB(255, 26, 26, 26),
        textTheme: const TextTheme(
          headline1: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 42,
            fontWeight: FontWeight.bold,
          ),
          bodyText1: TextStyle(
            color: Color.fromARGB(255, 26, 26, 26),
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
          bodyText2: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
