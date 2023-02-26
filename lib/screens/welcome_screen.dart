import 'package:flutter/material.dart';
import 'package:shuttlescore_v2_frontend/commons/background.dart';

class WelComeScreen extends StatelessWidget {
  const WelComeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: const [
          Background(),
          Center(
            child: Text(
              "hi",
            ),
          )
        ]),
      ),
    );
  }
}
