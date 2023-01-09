import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:happy_texting/core/constants/colors.dart';
import 'package:happy_texting/core/constants/styles.dart';

class RecentCampaignsItem extends StatelessWidget {
  const RecentCampaignsItem({
    Key? key,
    required this.textWords,
    required this.date,
    required this.status,
    required this.number,
  }) : super(key: key);
  final String textWords;
  final String date;
  final String number;
  final String status;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.5.sp),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Text(
              textWords,
              style: kText14MediumGrey,
            ),
          ),
          Expanded(
            child: Text(
              date,
              style: kText14MediumGrey,
            ),
          ),
          Text(
            number,
            style: kText14MediumGrey,
          ),
          Container(
            width: 60.w,
            height: 20.h,
            decoration: BoxDecoration(
              color: kLightBlueColor2,
              borderRadius: BorderRadius.circular(14.5.sp),
            ),
            child: Center(
              child: Text(
                status,
                style: kText13SemiBold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
