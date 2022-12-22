import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.ontap, required this.text});
  final String text;
  final VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xff031D4A),
          borderRadius: BorderRadius.circular(4.sp),
        ),
        width: 340.w,
        height: 48.h,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: const Color(0xffFFFFFF),
                fontSize: 16.sp,
                fontFamily: 'metropolis'),
          ),
        ),
      ),
    );
  }
}
