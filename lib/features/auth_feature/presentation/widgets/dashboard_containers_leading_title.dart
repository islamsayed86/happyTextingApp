import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:happy_texting/core/constants/colors.dart';
import 'package:happy_texting/core/constants/styles.dart';

class DashboardContainersleadingTitle extends StatelessWidget {
  const DashboardContainersleadingTitle({
    Key? key,
    required this.leftTitle,
    required this.rightTitle,
  }) : super(key: key);
  final String leftTitle;
  final String rightTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: kLightGrayColor,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(5),
          topLeft: Radius.circular(5),
        ),
      ),
      height: 40.h,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leftTitle,
            style: kText16SemiBoldGrey,
          ),
          Text(
            rightTitle,
            style: kText16SemiBoldGrey2,
          ),
        ],
      ),
    );
  }
}
