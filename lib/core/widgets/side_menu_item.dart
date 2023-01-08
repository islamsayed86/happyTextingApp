import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:happy_texting/core/constants/colors.dart';
import 'package:happy_texting/core/constants/styles.dart';

class SideMenuItem extends StatelessWidget {
  const SideMenuItem({
    Key? key,
    required this.leadingIcon,
    required this.title,
  }) : super(key: key);
  final Widget leadingIcon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: 0,
      contentPadding: EdgeInsets.symmetric(horizontal: 27.5.sp),
      leading: leadingIcon,
      title: Text(
        title,
        style: kText16MediumGrey2,
      ),
    );
  }
}

class SideMenuIetms extends StatelessWidget {
  const SideMenuIetms({
    Key? key,
    required this.title,
    required this.imageName,
  }) : super(key: key);
  final String title;
  final String imageName;

  @override
  Widget build(BuildContext context) {
    return SideMenuItem(
      title: title,
      leadingIcon: SvgPicture.asset(
        imageName,
        width: 20,
        height: 20,
        color: kGreyWhiteColor,
      ),
    );
  }
}
