import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:happy_texting/core/widgets/custom_container.dart';
import 'package:happy_texting/features/dashboard/presentation/widgets/dashboard_containers_leading_title.dart';
import 'package:happy_texting/features/dashboard/presentation/widgets/recent_campaigns_titles_container.dart';
import 'package:happy_texting/features/dashboard/presentation/widgets/recent_camaigns_item.dart';

class RecentCampaignsTable extends StatelessWidget {
  const RecentCampaignsTable({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      hight: 383.h,
      child: Column(
        children: [
          const DashboardContainersleadingTitle(
            leftTitle: 'RECENT CAMPAIGNS',
            rightTitle: 'View All',
          ),
          const RecentCampaignsTitlesContainer(),
          SizedBox(
            height: 19.68.h,
          ),
          const RecentCampaignsItem(
            textWords: 'hamdenhamden',
            date: 'July 6, 2021 @10:15 am',
            number: '653',
            status: 'inProgressss',
          ),
          SizedBox(
            height: 18.h,
          ),
          const RecentCampaignsItem(
            textWords: 'hamden',
            date: 'July 6, 2021 @10:15 am',
            number: '653',
            status: 'Sent',
          ),
          SizedBox(
            height: 18.h,
          ),
          const RecentCampaignsItem(
            textWords: 'hamden',
            date: 'July 6, 2021 @10:15 am',
            number: '653',
            status: 'Sent',
          ),
          SizedBox(
            height: 18.h,
          ),
          const RecentCampaignsItem(
            textWords: 'hamden',
            date: 'July 6, 2021 @10:15 am',
            number: '653',
            status: 'Sent',
          ),
          SizedBox(
            height: 18.h,
          ),
          const RecentCampaignsItem(
            textWords: 'hamden',
            date: 'July 6, 2021 @10:15 am',
            number: '653',
            status: 'Sent',
          ),
        ],
      ),
    );
  }
}
