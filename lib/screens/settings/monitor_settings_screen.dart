import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../commons/background.dart';
import '../../components/custom_button.dart';

class MonitorSettingsScreen extends StatelessWidget {
  const MonitorSettingsScreen({super.key});

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
                    title: "단일 다바이스",
                    detail: "모바일 장치가 하나입니다!",
                    svgIcon: SvgPicture.asset(
                      'assets/icons/router.svg',
                      width: 60,
                      height: 60,
                    ),
                  ),
                  CustomButton(
                    onTab: () => {},
                    title: "원격 디바이스",
                    detail: "모바일 장치가\n두 개 이상입니다!",
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
