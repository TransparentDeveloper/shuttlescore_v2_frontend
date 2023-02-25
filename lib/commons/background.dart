import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    color: Theme.of(context).primaryColorLight,
                    width: 70,
                  ),
                ),
                Container(
                  color: Theme.of(context).primaryColor,
                  width: 25,
                ),
                Expanded(
                  child: Container(
                    color: Theme.of(context).primaryColorDark,
                    width: 70,
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  shape: BoxShape.circle,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
