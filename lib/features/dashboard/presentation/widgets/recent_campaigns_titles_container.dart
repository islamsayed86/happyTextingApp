import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:happy_texting/core/constants/colors.dart';
import 'package:happy_texting/core/constants/images_paths.dart';
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
        padding: EdgeInsets.symmetric(horizontal: 15.sp),
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
            SvgPicture.asset(
              kContactsImage,
              color: kSpColor,
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
