import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:happy_texting/core/constants/images_paths.dart';

import 'package:happy_texting/core/widgets/custom_button.dart';
import 'package:happy_texting/core/widgets/custom_container.dart';
import 'package:happy_texting/core/widgets/custom_text_field.dart';
import 'package:happy_texting/core/constants/colors.dart';
import 'package:happy_texting/core/widgets/custom_text_style.dart';
import 'package:happy_texting/core/widgets/show_snackbar.dart';

// ignore: must_be_immutable
class ResetPassword extends StatelessWidget {
  ResetPassword({super.key});
  final controller = TextEditingController();
  final formKey = GlobalKey<FormState>();
  String? email;
  @override
  Widget build(BuildContext context) {
    email = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      backgroundColor: kLightGrey,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 25.sp),
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    kHappyTextImage,
                    width: 289.w,
                    height: 50.h,
                  )
                ],
              ),
              SizedBox(
                height: 22.h,
              ),
              Padding(
                padding: EdgeInsets.all(8.0.sp),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Row(
                    children: [
                      CustomTextStyle(
                        yourText: 'Reset Your Password?',
                        color: kDarkGrey,
                        size: 24.sp,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 22.5.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 9.5.sp,
                ),
                child: CustomContainer(
                  hight: 326.h,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.5.sp),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 24.5.sp,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomTextStyle(
                                yourText: 'New Password',
                                size: 13.sp,
                                color: kDarkerGrey,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10.sp,
                          ),
                          CustomTextFormField(
                            controller: controller,
                            // ignore: body_might_complete_normally_nullable
                            validator: (password) {
                              if (password!.isEmpty && password.length <= 4) {
                                return 'the field is required';
                              }
                            },
                            obscureText: true,
                          ),
                          SizedBox(
                            height: 16.sp,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomTextStyle(
                                yourText: 'Confirm New Password',
                                size: 13.sp,
                                color: kDarkerGrey,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.sp,
                          ),
                          CustomTextFormField(
                            // ignore: body_might_complete_normally_nullable
                            validator: (data) {
                              if (data != controller.text) {
                                return 'the password does not matched';
                              }
                            },

                            obscureText: true,
                          ),
                          SizedBox(height: 81.sp),
                          CustomButton(
                            text: 'Send me reset instruction',
                            ontap: () {
                              if (formKey.currentState!.validate()) {
                                Navigator.pushNamed(context, 'LoginPage');
                                showSnackBar(
                                    context, 'your password is updated');
                              } else {
                                showSnackBar(context, 'Enter your password');
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              Center(
                child: CustomTextStyle(
                  yourText: 'your email is : $email ',
                  size: 16.sp,
                  color: kGrey,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
