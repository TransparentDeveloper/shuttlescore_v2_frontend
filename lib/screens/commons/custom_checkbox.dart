import 'package:flutter/material.dart';

class CustomCheckBox extends StatelessWidget {
  final bool isChecked;
  final String text;

  const CustomCheckBox(
      {super.key, required this.isChecked, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 50,
      decoration: BoxDecoration(
        color: isChecked
            ? Theme.of(context).primaryColorLight
            : Theme.of(context).primaryColorDark,
        border: Border.all(
          color: Theme.of(context).primaryColorLight,
          width: 3,
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: isChecked
              ? Theme.of(context).textTheme.bodyText1
              : Theme.of(context).textTheme.bodyText2,
        ),
      ),
    );
  }
}
