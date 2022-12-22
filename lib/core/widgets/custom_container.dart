import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:happy_texting/core/constants/colors.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, this.hight, this.child});
  final double? hight;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 371.w,
      height: hight,
      decoration: BoxDecoration(
        color: kWhite,
        border: Border.all(
          style: BorderStyle.solid,
          color: kLightGrey,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(4.sp),
      ),
      child: child,
    );
  }
}
