import 'package:flutter/material.dart';

class CustomInputForm extends StatefulWidget {
  final String text;
  final double width;
  final double height;

  const CustomInputForm({
    super.key,
    required this.text,
    required this.width,
    required this.height,
  });

  @override
  State<CustomInputForm> createState() => _CustomInputFormState();
}

class _CustomInputFormState extends State<CustomInputForm> {
  String _name = "";

  @override
  void initState() {
    super.initState();
    _name = widget.text;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
