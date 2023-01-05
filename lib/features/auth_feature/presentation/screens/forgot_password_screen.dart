import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:happy_texting/core/constants/colors.dart';
import 'package:happy_texting/core/constants/images_paths.dart';
import 'package:happy_texting/core/shared/validation.dart';
import 'package:happy_texting/core/widgets/Customized_button.dart';
import 'package:happy_texting/core/widgets/custom_container.dart';
import 'package:happy_texting/core/widgets/custom_text_field.dart';
import 'package:happy_texting/core/widgets/custom_text_style.dart';
import 'package:happy_texting/core/widgets/show_snackbar.dart';

// ignore: must_be_immutable
class ForgotPassword extends StatelessWidget {
  ForgotPassword({super.key});
  String? email;
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightGrey1,
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
                height: 35.h,
              ),
              Padding(
                padding: EdgeInsets.all(8.0.sp),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back,
                        color: const Color(0xff182C4F),
                        size: 20.sp,
                      ),
                      SizedBox(
                        width: 10.sp,
                      ),
                      CustomTextStyle(
                        text: 'Forgot Your Password?',
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
                  hight: 201.h,
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
                                color: kDarkerGrey,
                              )
                              // CustomFormTextFiled()
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          CustomTextFormField(
                            validator: validateEmail,
                            onChanged: (data) {
                              email = data;
                            },
                            obscureText: false,
                          ),
                          SizedBox(height: 20.h),
                          CustomizedButton(
                            ontap: () {
                              if (formKey.currentState!.validate()) {
                                Navigator.pushNamed(context, 'ResetPassword',
                                    arguments: email);
                              } else {
                                showSnackBar(context, 'the filed is required');
                              }
                            },
                            text: 'Send me reset instruction',
                            width: 340.w,
                            color: kDarkBlue,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}