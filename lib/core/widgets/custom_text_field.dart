// import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
// import 'package:email_validator/email_validator.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {Key? key,
      this.onChanged,
      this.obscureText,
      this.validator,
      this.controller})
      : super(key: key);
  final String? Function(String?)? validator;
  final Function(String)? onChanged;
  final bool? obscureText;
  final dynamic controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      obscureText: obscureText!,
      onChanged: onChanged,
      decoration: const InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(16, 14, 40, 10),
        hintStyle: TextStyle(
          color: Colors.white,
          fontFamily: 'metropolis',
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xffE6EAEE),
          ),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
