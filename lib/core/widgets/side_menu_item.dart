import 'package:flutter/material.dart';
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
      leading: leadingIcon,
      title: Text(
        title,
        style: kText16MediumGrey2,
      ),
    );
  }
}
