// ignore_for_file: body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:happy_texting/core/constants/images_paths.dart';
import 'package:happy_texting/core/shared/validation.dart';
import 'package:happy_texting/core/widgets/popup_exit_dialog.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/widgets/customized_button.dart';
import '../../../../core/widgets/custom_container.dart';
import '../../../../core/widgets/custom_text_field.dart';
import '../../../../core/widgets/custom_text_style.dart';
import '../../../../core/widgets/show_snackbar.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return (await popUpExitDialog(context)) ?? false;
      },
      child: Scaffold(
        backgroundColor: kLightGrey1,
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.sp),
          child: Form(
            key: formKey,
            child: ListView(
              children: [
                Image.asset(
                  kHappyTextImage,
                  width: 341.w,
                  height: 65.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 9.5.sp, vertical: 44.5.sp),
                  child: CustomContainer(
                    hight: 361.h,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.5.sp),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 37.5.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomTextStyle(
                                  text: 'Email',
                                  size: 13.sp,
                                ),
                                // CustomFormTextFiled()
                              ],
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            const CustomTextFormField(
                              validator: validateEmail,
                              obscureText: false,
                            ),
                            SizedBox(
                              height: 25.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomTextStyle(
                                  text: 'password',
                                  size: 13.sp,
                                ),
                                // CustomFormTextFiled()
                              ],
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            const CustomTextFormField(
                              validator: validatePassword,
                              obscureText: true,
                            ),
                            SizedBox(height: 10.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, 'ForgotPassword');
                                  },
                                  child: CustomTextStyle(
                                    text: 'Forgot password?',
                                    size: 16.sp,
                                    color: kGrey,
                                  ),
                                ),
                                // CustomFormTextFiled()
                              ],
                            ),
                            SizedBox(height: 59.h),
                            CustomizedButton(
                              text: 'Login',
                              ontap: () {
                                if (formKey.currentState!.validate()) {
                                  Navigator.pushNamed(
                                      context, 'DashboardScreen');
                                  showSnackBar(context, 'successful');
                                }
                              },
                              width: 340.w,
                              color: kDarkBlue,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 50.h),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 85.sp,
                  ),
                  child: CustomizedButton(
                    ontap: (() {}),
                    text: 'create an account',
                    width: 220.w,
                    color: kBrightGrey,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
