import 'package:flutter/material.dart';

class CustomTextStyle extends StatelessWidget {
  const CustomTextStyle({Key? key, this.yourText, this.size, this.color})
      : super(key: key);
  final String? yourText;
  final double? size;
  final dynamic color;
  @override
  Widget build(BuildContext context) {
    return Text(
      '$yourText',
      style: TextStyle(
        fontFamily: 'metropolis',
        fontSize: size,
        fontWeight: FontWeight.normal,
        color: color,
      ),
    );
  }
}
