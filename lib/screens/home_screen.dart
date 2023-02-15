import 'package:flutter/material.dart';
import 'package:shuttlescore_v2_frontend/constants/gaps.dart';
import 'package:shuttlescore_v2_frontend/screens/settings/single_mode_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  void onSingleSettingTab(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const SingleModeScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Center(
            child: Column(
              children: [
                Text(
                  "ShuttleScore",
                  style: Theme.of(context).textTheme.headline1,
                ),
                Gaps.v40,
                GestureDetector(
                  onTap: () => onSingleSettingTab(context),
                  child: Text(
                    "- Single Monitor",
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
                Gaps.v14,
                Text(
                  "- Dual Monitor",
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
