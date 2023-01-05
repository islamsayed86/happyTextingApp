import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:happy_texting/core/constants/colors.dart';
import 'package:happy_texting/core/constants/styles.dart';
import 'package:happy_texting/core/widgets/side_menu_item.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(25.sp, 32.sp, 0, 20.sp),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'YourName',
                  textAlign: TextAlign.start,
                  style: kText24SemiBold,
                ),
                SizedBox(
                  height: 5.h,
                ),
                const Text(
                  'Administrator',
                  textAlign: TextAlign.start,
                  style: kText16MediumLightBlue,
                ),
              ],
            ),
          ),
          const SideMenuItem(
            icon: Icon(Icons.home),
            title: 'Home',
          ),
          const SideMenuItem(
            icon: Icon(Icons.home),
            title: 'Send a Message',
          ),
          const SideMenuItem(
            icon: Icon(Icons.home),
            title: 'Textwords',
          ),
          const SideMenuItem(
            icon: Icon(Icons.home),
            title: 'Contacts',
          ),
          const SideMenuItem(
            icon: Icon(Icons.home),
            title: 'Sent Campaigns',
          ),
          const SideMenuItem(
            icon: Icon(Icons.home),
            title: 'Inbox',
          ),
          const SideMenuItem(
            icon: Icon(Icons.home),
            title: 'Analytics',
          ),
          const SideMenuItem(
            icon: Icon(Icons.home),
            title: 'My Account',
          ),
          const SideMenuItem(
            icon: Icon(Icons.home),
            title: 'My Plan',
          ),
          const Divider(
            height: 3,
            color: kLightGrey,
          ),
          const SideMenuItem(
            icon: Icon(Icons.home),
            title: 'Contact us',
          ),
          const SideMenuItem(
            icon: Icon(Icons.home),
            title: 'Log Out',
          ),
        ],
      ),
    );
  }
}
