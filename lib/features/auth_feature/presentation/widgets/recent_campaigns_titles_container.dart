import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:happy_texting/core/constants/colors.dart';
import 'package:happy_texting/core/constants/styles.dart';

class RecentCampaignsTitlesContainer extends StatelessWidget {
  const RecentCampaignsTitlesContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kLightgrey2,
      height: 44.h,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.5.sp),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Textwords',
              style: kText12,
            ),
            const Text(
              'Date',
              style: kText12,
            ),
            Icon(
              Icons.book_outlined,
              color: Colors.grey[500],
            ),
            const Center(
              child: Text(
                'Status',
                style: kText12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
