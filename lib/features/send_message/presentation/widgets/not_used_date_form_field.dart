// // import 'package:email_validator/email_validator.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:happy_texting/core/constants/colors.dart';
// import 'package:happy_texting/core/constants/styles.dart';
// // import 'package:email_validator/email_validator.dart';

// class CustomDateFormField extends StatelessWidget {
//   const CustomDateFormField(
//       {Key? key,
//       this.onChanged,
//       this.obscureText,
//       this.validator,
//       this.controller,
//       this.hintText})
//       : super(key: key);
//   final String? Function(String?)? validator;
//   final Function(String)? onChanged;
//   final bool? obscureText;
//   final dynamic controller;
//   final String? hintText;
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       autovalidateMode: AutovalidateMode.onUserInteraction,
//       controller: controller,
//       validator: validator,
//       obscureText: obscureText!,
//       onChanged: onChanged,
//       decoration: InputDecoration(
//         contentPadding: EdgeInsets.fromLTRB(
//           16.sp,
//           14.sp,
//           40.sp,
//           10.sp,
//         ),
//         hintStyle: kText16MediumGrey2,
//         hintText: hintText,
//         enabledBorder: const OutlineInputBorder(
//           borderSide: BorderSide(
//             color: kBorder,
//           ),
//         ),
//         border: const OutlineInputBorder(
//           borderSide: BorderSide(
//             color: Colors.white,
//           ),
//         ),
//       ),
//     );
//   }
// }
