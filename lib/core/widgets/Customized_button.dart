// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:happy_texting/core/constants/colors.dart';
import 'package:happy_texting/core/widgets/custom_text_style.dart';

class CustomizedButton extends StatelessWidget {
  const CustomizedButton({
    Key? key,
    this.ontap,
    required this.text,
    required this.width,
    required this.color,
  }) : super(key: key);
  final void Function()? ontap;
  final String text;
  final double width;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Ink(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(4.sp),
        ),
        width: width,
        height: 48.h,
        child: Center(
          child: CustomTextStyle(
            text: text,
            size: 16.sp,
            color: kWhite,
          ),
        ),
      ),
    );
  }
}
