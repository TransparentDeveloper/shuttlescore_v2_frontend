import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../commons/background.dart';
import '../../components/custom_button.dart';

class DetailMonitorSettingsScreen extends StatelessWidget {
  const DetailMonitorSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const Background(),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(
                    onTab: () => {},
                    title: "Monitor",
                    detail: "이걸로 점수를 보여드릴게요!",
                    svgIcon: SvgPicture.asset(
                      'assets/icons/router.svg',
                      width: 60,
                      height: 60,
                    ),
                  ),
                  CustomButton(
                    onTab: () => {},
                    title: "Counter",
                    detail: "여기서 점수를 세겠습니다!",
                    svgIcon: SvgPicture.asset(
                      'assets/icons/router.svg',
                      width: 60,
                      height: 60,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
