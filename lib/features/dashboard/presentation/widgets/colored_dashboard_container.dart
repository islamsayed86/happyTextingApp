import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:happy_texting/core/constants/strings.dart';

class ColoredDashboardContainer extends StatelessWidget {
  const ColoredDashboardContainer(
      {super.key,
      required this.number,
      required this.subtitle,
      required this.background});

  final String number;
  final String subtitle;
  final Color background;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2.sp), color: background),
      width: 180.w,
      height: 134.h,
      child: Padding(
        padding: EdgeInsets.fromLTRB(19.sp, 42.sp, 19.sp, 35.sp),
        child: Column(
          children: [
            Text(
              number,
              style: TextStyle(
                fontSize: 36.sp,
                fontFamily: appFontExtraBold,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12.sp,
                fontFamily: 'metro',
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
