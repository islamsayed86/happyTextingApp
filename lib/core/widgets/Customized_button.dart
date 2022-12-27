// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:happy_texting/core/constants/colors.dart';
import 'package:happy_texting/core/widgets/custom_text_style.dart';

class CustomizedButton extends StatelessWidget {
  const CustomizedButton({
    Key? key,
    this.onTap,
    required this.yourText,
    required this.width,
    this.color,
  }) : super(key: key);
  final void Function()? onTap;
  final String yourText;
  final double width;
  final dynamic color;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Ink(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(4.sp),
        ),
        width: width,
        height: 48.h,
        child: Center(
          child: CustomTextStyle(
            yourText: yourText,
            size: 16.sp,
            color: kWhite,
          ),
        ),
      ),
    );
  }
}
