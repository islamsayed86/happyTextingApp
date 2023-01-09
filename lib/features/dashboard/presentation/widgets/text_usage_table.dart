import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:happy_texting/core/constants/colors.dart';
import 'package:happy_texting/core/constants/styles.dart';
import 'package:happy_texting/core/widgets/custom_container.dart';
import 'package:happy_texting/features/dashboard/presentation/widgets/dashboard_containers_leading_title.dart';
import 'package:happy_texting/features/dashboard/presentation/widgets/dashboard_chart.dart';

class TextUsageTable extends StatelessWidget {
  const TextUsageTable({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      hight: 372.h,
      child: Column(
        children: [
          const DashboardContainersleadingTitle(
            leftTitle: 'TEXT USAGE',
            rightTitle: 'Upgrade plan',
          ),
          SizedBox(
            height: 43.h,
          ),
          DashboardProgressBar(
            textUsage: 'Standard Texts',
            upgradePlan: 'Used 9,461 of 50,000',
            dataUsageStratingPoint: .25,
            percentageValue: 18.9,
            leftPaing: 24.5.sp,
            rightPadding: 12.5.sp,
          ),
          SizedBox(
            height: 29.h,
          ),
          DashboardProgressBar(
            textUsage: 'Rollover Texts',
            upgradePlan: 'Used 0 of 73,040',
            dataUsageStratingPoint: 0,
            percentageValue: 0,
            leftPaing: 13.5.sp,
            rightPadding: 0,
          ),
          SizedBox(
            height: 25.sp,
          ),
          RichText(
            text: const TextSpan(
              text: 'Your text usage will reset back to zero on:',
              style: kText16MediumGrey2,
              children: <TextSpan>[
                TextSpan(
                  text: '\nAugust 20th.',
                  style: TextStyle(color: kLightBlueColor2),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 17.h,
          ),
          const Text(
            'Send textwords to 833-884-9669 to sign up\nfor your text list(s).',
            style: kText16MediumGrey2,
          )
        ],
      ),
    );
  }
}
