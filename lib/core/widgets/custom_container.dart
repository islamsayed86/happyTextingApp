import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:happy_texting/core/constants/colors.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer(
      {super.key, required this.hight, required this.child, this.width});
  final double? hight;
  final double? width;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Container(
        width: width,
        height: hight,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(
            style: BorderStyle.solid,
            color: kLightGrayColor,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(4.sp),
        ),
        child: child,
      ),
    );
  }
}
