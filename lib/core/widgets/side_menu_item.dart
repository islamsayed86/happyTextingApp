import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:happy_texting/core/constants/colors.dart';
import 'package:happy_texting/core/constants/styles.dart';

class SideMenuItem extends StatelessWidget {
  const SideMenuItem({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);
  final Icon icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.home,
        size: 20.sp,
        color: kGreyWhiteColor,
      ),
      title: Text(
        title,
        style: kText16MediumGrey2,
      ),
    );
  }
}
