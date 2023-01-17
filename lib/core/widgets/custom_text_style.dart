import 'package:flutter/material.dart';

class CustomTextStyle extends StatelessWidget {
  const CustomTextStyle({Key? key, this.text, this.size, this.color})
      : super(key: key);
  final String? text;
  final double? size;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Text(
      '$text',
      style: TextStyle(
        fontFamily: 'metropolis',
        fontSize: size,
        fontWeight: FontWeight.normal,
        color: color,
      ),
    );
  }
}
