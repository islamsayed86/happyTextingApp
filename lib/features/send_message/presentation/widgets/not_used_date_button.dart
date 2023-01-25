// // ignore_for_file: must_be_immutable

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:happy_texting/core/constants/colors.dart';
// import 'package:happy_texting/core/constants/styles.dart';

// class DateButton extends StatelessWidget {
//   DateButton({
//     Key? key,
//     this.ontap,
//     required this.text,
//     required this.width,
//     required this.color,
//     this.textColor,
//   }) : super(key: key);
//   final void Function()? ontap;
//   final String text;
//   final double width;
//   final Color color;
//   Color? textColor;
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: ontap,
//       child: Ink(
//         decoration: BoxDecoration(
//           color: color,
//           borderRadius: BorderRadius.circular(4.sp),
//           border: Border.all(
//             style: BorderStyle.solid,
//             color: kLightGrayColor,
//             width: 1,
//           ),
//         ),
//         width: width,
//         height: 48.h,
//         child: Padding(
//           padding: EdgeInsets.fromLTRB(
//             16.sp,
//             14.sp,
//             40.sp,
//             10.sp,
//           ),
//           child: Text(
//             text,
//             style: kText16MediumGrey2,
//           ),
//         ),
//       ),
//     );
//   }
// }
