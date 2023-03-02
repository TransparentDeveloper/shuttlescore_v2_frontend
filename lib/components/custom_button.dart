import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.onTab,
      required this.title,
      required this.detail,
      required this.svgIcon});

  final Function()? onTab;
  final String title;
  final String detail;
  final SvgPicture svgIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 300,
        height: 70,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Flexible(
              flex: 1,
              child: svgIcon,
            ),
            const SizedBox(
              width: 10,
            ),
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w900),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    detail,
                    style: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            const Flexible(
              flex: 1,
              child: Icon(
                Icons.play_circle_fill,
                color: Colors.black,
                size: 30,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
  }
}
