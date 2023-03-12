import 'package:flutter/material.dart';
import 'package:shuttlescore_v2_frontend/commons/background.dart';

class CoverBackGround extends StatelessWidget {
  const CoverBackGround({super.key, this.children});

  final List<Widget>? children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const Background(),
            Stack(
              children: children!,
            )
          ],
        ),
      ),
    );
  }
}
