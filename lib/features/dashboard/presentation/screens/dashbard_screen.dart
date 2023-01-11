import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:happy_texting/core/constants/colors.dart';
import 'package:happy_texting/core/shared/shared_app_bar.dart';
import 'package:happy_texting/core/shared/shared_side_menu.dart';
import 'package:happy_texting/features/dashboard/presentation/widgets/cartesian_chart.dart';
import 'package:happy_texting/features/dashboard/presentation/widgets/text_usage_table.dart';
import '../widgets/all_colored_dash_board_conainers.dart';
import '../widgets/dashboard_containers_leading_title.dart';
import '../widgets/recent_campaigns_table.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightGrey1,
      drawer: const SideMenu(),
      appBar: const SharedAppBar(
        appBarWith2Titles: false,
        appBarWithButtonAndSubtitle: false,
        appBarWithColoredTitle2: false,
        appBarWithTitle2Subtitle: false,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 12.sp,
          vertical: 10.sp,
        ),
        child: ListView(
          children: [
            Column(
              children: [
                const AllColoredDashBoardContainers(),
                SizedBox(
                  height: 30.h,
                ),
                Container(
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
                      CartesianChart(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 19.5.h,
                ),
                const TextUsageTable(),
              ],
            ),
            SizedBox(
              height: 17.h,
            ),
            const RecentCampaignsTable()
          ],
        ),
      ),
    );
  }
}
