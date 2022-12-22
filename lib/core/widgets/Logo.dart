// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:happy_texting/core/constants/colors.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
    this.size,
  }) : super(key: key);
  final double? size;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Happy ',
          style: TextStyle(
              color: const Color(0xff81CFD2),
              fontSize: size,
              fontWeight: FontWeight.bold),
        ),
        Text(
          'Texting',
          style: TextStyle(
              color: kDarkBlue, fontSize: size, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
