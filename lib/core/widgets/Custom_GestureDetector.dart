// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:happy_texting/core/constants/colors.dart';
import 'package:happy_texting/core/widgets/custom_text_style.dart';

class CustomGestureDetector extends StatelessWidget {
  const CustomGestureDetector({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          color: kBrightGrey,
          borderRadius: BorderRadius.circular(4.sp),
        ),
        width: 220.w,
        height: 48.h,
        child: Center(
          child: CustomTextStyle(
            yourText: 'Create New Account',
            size: 16.sp,
            color: kWhite,
          ),
        ),
      ),
    );
  }
}


// class CustomGestureDetector extends StatelessWidget {
//   const CustomGestureDetector({
//     Key? key,
//     this.onTap,
//   }) : super(key: key);
//   final VoidCallback? onTap;

//   get kBrightGrey => null;

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         decoration: BoxDecoration(
//           color: kBrightGrey,
//           borderRadius: BorderRadius.circular(4.sp),
//         ),
//         width: 220.w,
//         height: 48.h,
//         child: Center(
//           child: CustomTextStyle(
//             yourText: 'Create New Account',
//             size: 16.sp,
//             color: kWhite,
//           ),
//         ),
//       ),
//     );
//   }
// }
