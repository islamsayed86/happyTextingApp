import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:happy_texting/core/constants/colors.dart';
import 'package:happy_texting/features/dashboard/presentation/widgets/cartesian_chart.dart';

import 'package:happy_texting/features/dashboard/presentation/widgets/dashboard_containers_leading_title.dart';

class SubscribeGrothChart extends StatelessWidget {
  const SubscribeGrothChart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: kLightGrayColor, width: 1.w),
          borderRadius: BorderRadius.circular(5)),
      child: Column(
        children: [
          const DashboardContainersleadingTitle(
            leftTitle: 'SUBSCRIBE GRWOTH OVER TIME',
            rightTitle: '',
          ),
          SizedBox(
            height: 58.h,
          ),
          const CartesianChart(),
        ],
      ),
    );
  }
}
