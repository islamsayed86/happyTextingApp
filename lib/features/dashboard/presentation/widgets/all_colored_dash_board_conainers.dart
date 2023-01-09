import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:happy_texting/core/constants/colors.dart';
import 'package:happy_texting/features/dashboard/presentation/widgets/colored_dashboard_container.dart';

class AllColoredDashBoardContainers extends StatelessWidget {
  const AllColoredDashBoardContainers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0.sp,
        mainAxisSpacing: 10.0.sp,
      ),
      children: const [
        ColoredDashboardContainer(
          background: kLightBlueColor2,
          number: '6,979',
          subtitle: 'Active Subscribers',
        ),
        ColoredDashboardContainer(
          background: kDarkBlue,
          number: '2,163',
          subtitle: 'New Subscribers this period',
        ),
        ColoredDashboardContainer(
          background: kRedColor,
          number: '43',
          subtitle: 'Active Textwords',
        ),
        ColoredDashboardContainer(
          background: kYellowColor,
          number: '2,163',
          subtitle: 'Campaigns Sent This Period',
        ),
      ],
    );
  }
}
