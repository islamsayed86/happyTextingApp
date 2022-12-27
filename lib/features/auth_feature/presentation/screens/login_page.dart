// ignore_for_file: body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:happy_texting/core/constants/images_paths.dart';
import 'package:happy_texting/core/shared/validation.dart';
import 'package:happy_texting/core/widgets/popup_exit_dialog.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/widgets/Customized_button.dart';
import '../../../../core/widgets/custom_button.dart';
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
        drawer: const SideMenu(),
        appBar: AppBar(
          backgroundColor: kDarkBlue,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.light,
            statusBarColor: kDarkBlue,
          ),
        ),
        backgroundColor: kLightGrey,
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 45.sp),
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
                      child: ListView(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: 37.5.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomTextStyle(
                                    yourText: 'Email',
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
                                    yourText: 'password',
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
                                      yourText: 'Forgot password?',
                                      size: 16.sp,
                                      color: kGrey,
                                    ),
                                  ),
                                  // CustomFormTextFiled()
                                ],
                              ),
                              SizedBox(height: 59.h),
                              CustomButton(
                                text: 'Login',
                                ontap: () {
                                  if (formKey.currentState!.validate()) {
                                    showSnackBar(context, 'successful');
                                  }
                                },
                              ),
                            ],
                          ),
                        ],
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
                    onTap: (() {}),
                    yourText: 'create an account',
                    width: 220.w,
                    color: kDarkGrey,
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

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'YourName',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 24.sp,
                    color: const Color(0xff3A3C3F),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  'Administrator',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: const Color.fromARGB(255, 68, 211, 255),
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              size: 26.sp,
              color: const Color(0xff92CDD2),
            ),
            title: Text(
              'Home page',
              style: TextStyle(fontSize: 18.sp, color: kGrey),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.email,
              size: 26.sp,
              color: const Color(0xff92CDD2),
            ),
            title: Text(
              'Email page',
              style: TextStyle(fontSize: 18.sp, color: kGrey),
            ),
          ),
          Divider(
            height: 2.h,
            color: kBrightGrey,
          ),
          ListTile(
            leading: Icon(
              Icons.login,
              size: 26.sp,
              color: const Color(0xff92CDD2),
            ),
            title: Text(
              'Login page',
              style: TextStyle(fontSize: 18.sp, color: kGrey),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.logout,
              size: 26.sp,
              color: const Color(0xff92CDD2),
            ),
            title: Text(
              'Logout',
              style: TextStyle(fontSize: 18.sp, color: kGrey),
            ),
          ),
        ],
      ),
    );
  }
}
