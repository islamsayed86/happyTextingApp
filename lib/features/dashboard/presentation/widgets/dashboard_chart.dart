import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:happy_texting/core/constants/colors.dart';
import 'package:happy_texting/core/constants/strings.dart';
import 'package:happy_texting/core/constants/styles.dart';

class DashboardProgressBar extends StatelessWidget {
  const DashboardProgressBar({
    super.key,
    required this.textUsage,
    required this.upgradePlan,
    required this.dataUsageStratingPoint,
    required this.percentageValue,
    required this.leftPaing,
    required this.rightPadding,
  });

  final String textUsage;
  final double percentageValue;
  final double leftPaing;
  final double rightPadding;

  final String upgradePlan;
  final double dataUsageStratingPoint;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.5.sp),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ChartTitle(textUsage: textUsage),
              ChartTitle(textUsage: textUsage),
            ],
          ),
          SizedBox(
            height: 8.h,
          ),
          Container(
            height: 32.h,
            width: 340.w,
            decoration: BoxDecoration(
              borderRadius: kDefaultRadius,
              gradient: LinearGradient(
                begin: Alignment.centerLeft, //Starting point
                end: Alignment.centerRight, //Ending point
                stops: [
                  dataUsageStratingPoint,
                  0
                ], //First Part is the amount of space the first color has
                //occupy and the second parameter is the space that is to be occupied by
                //mixture of both colors.
                colors: const [
                  kLightBlueColor2,
                  kGreyWhiteColor
                ], // List of colors
              ),
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(leftPaing, 7, rightPadding, 5),
              child: Text(
                '$percentageValue%',
                style: kText14WhiteRgular,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ChartTitle extends StatelessWidget {
  const ChartTitle({
    Key? key,
    required this.textUsage,
  }) : super(key: key);

  final String textUsage;

  @override
  Widget build(BuildContext context) {
    return Text(
      textUsage,
      style: TextStyle(
          fontSize: 13.sp,
          fontFamily: appFontSemiBold,
          fontWeight: FontWeight.w600,
          color: kDarkerGrey),
    );
  }
}
