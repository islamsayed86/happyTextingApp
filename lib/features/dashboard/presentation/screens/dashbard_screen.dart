import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:happy_texting/core/constants/colors.dart';
import 'package:happy_texting/core/shared/shared_app_bar.dart';
import 'package:happy_texting/core/shared/shared_side_menu.dart';
import 'package:happy_texting/features/dashboard/presentation/widgets/text_usage_table.dart';
import '../widgets/all_colored_dash_board_conainers.dart';
import '../widgets/recent_campaigns_table.dart';
import '../widgets/subscribe_grow_chart.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightGrey1,
      drawer: const SideMenu(),
      appBar: const SharedAppBar(
        isDoubleAppBar: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            Column(
              children: [
                const AllColoredDashBoardContainers(),
                SizedBox(
                  height: 30.h,
                ),
                const SubscribeGrothChart(),
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
