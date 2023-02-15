import 'package:flutter/material.dart';
import 'package:shuttlescore_v2_frontend/constants/gaps.dart';
import 'package:shuttlescore_v2_frontend/constants/sizes.dart';
import 'package:shuttlescore_v2_frontend/screens/commons/custom_checkbox.dart';

import '../commons/custom_input_form.dart';

class SingleModeScreen extends StatefulWidget {
  const SingleModeScreen({super.key});

  @override
  State<SingleModeScreen> createState() => _SingleModeScreenState();
}

class _SingleModeScreenState extends State<SingleModeScreen> {
  final bool _isSingleMonitor = true;
  final bool _isSingleMatch = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Gaps.v32,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomCheckBox(
                      text: "SingleMointor",
                      isChecked: _isSingleMonitor,
                    ),
                    CustomCheckBox(
                      text: "DualMonitor",
                      isChecked: !_isSingleMonitor,
                    ),
                  ],
                ),
                Gaps.v28,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomCheckBox(
                      text: "SingleMatch",
                      isChecked: _isSingleMatch,
                    ),
                    CustomCheckBox(
                      text: "DoubleMatch",
                      isChecked: !_isSingleMatch,
                    ),
                  ],
                ),
                const CustomInputForm(
                  text: "TeamA",
                  width: Sizes.size64,
                  height: Sizes.size48,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
