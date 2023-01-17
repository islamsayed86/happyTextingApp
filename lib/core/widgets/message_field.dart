// import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:happy_texting/core/constants/colors.dart';
// import 'package:email_validator/email_validator.dart';

class MessageField extends StatelessWidget {
  const MessageField(
      {Key? key,
      this.onChanged,
      this.validator,
      this.controller,
      this.hintText})
      : super(key: key);
  final String? Function(String?)? validator;
  final Function(String)? onChanged;

  final dynamic controller;
  final String? hintText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      maxLines: 14,
      maxLength: 160,
      onChanged: onChanged,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(
          16.sp,
          14.sp,
          40.sp,
          10.sp,
        ),
        counterText: '',
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: kBorder,
          ),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
