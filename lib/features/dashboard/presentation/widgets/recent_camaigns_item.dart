// ignore_for_file: sized_box_for_whitespace

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
      child:
          //  Table(
          //   columnWidths: {
          //     0: FractionColumnWidth(.25.w),
          //     1: FractionColumnWidth(.25.w),
          //     2: FractionColumnWidth(.25.w),
          //   },
          //   children: [
          //     TableRow(
          //       children: [
          //         Container(
          //           width: 55.w,
          //           child: Text(
          //             textWords,
          //             style: kText14MediumGrey,
          //           ),
          //         ),
          //         Text(
          //           date,
          //           style: kText14MediumGrey,
          //         ),
          //         Center(
          //           child: Text(
          //             number,
          //             style: kText14MediumGrey,
          //           ),
          //         ),
          //         Container(
          //           alignment: AlignmentDirectional.center,
          //           // padding: EdgeInsets.fromLTRB(15, 2.44, 16, 1.73),
          //           width: 60.w,
          //           height: 20.17.h,
          //           decoration: BoxDecoration(
          //             color: kLightBlueColor2,
          //             borderRadius: BorderRadius.circular(14.5.sp),
          //           ),
          //           child: Text(
          //             status.substring(0, 4),
          //             textAlign: TextAlign.center,
          //             style: kText13SemiBold,
          //           ),
          //         ),
          //       ],
          //     ),
          //   ],
          // )

          Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 55.w,
            child: Text(
              textWords,
              style: kText14MediumGrey,
            ),
          ),
          Container(
            width: 79.w,
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
            width: 75.w,
            // height: 20.h,
            decoration: BoxDecoration(
              color: kLightBlueColor2,
              borderRadius: BorderRadius.circular(14.5.sp),
            ),
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15.sp,
                  vertical: 6.sp,
                ),
                child: Text(
                  softWrap: true,
                  status,
                  overflow: TextOverflow.ellipsis,
                  style: kText13SemiBold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
