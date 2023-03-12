import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shuttlescore_v2_frontend/components/custom_button.dart';

import '../../commons/cover_background.dart';

class MatchSettingsScreen extends StatelessWidget {
  const MatchSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CoverBackGround(
      children: [
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                onTab: () => {},
                title: "단식모드",
                detail: "1:1 경기합니다~!",
                svgIcon: SvgPicture.asset(
                  'assets/icons/router.svg',
                  width: 60,
                  height: 60,
                ),
              ),
              CustomButton(
                onTab: () => {},
                title: "복식모드",
                detail: "2:2 경기합니다~!",
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
    );
  }
}
