import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:happy_texting/core/constants/colors.dart';
import 'package:happy_texting/core/constants/images_paths.dart';
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
          const SideMenuIetms(
            title: 'Home',
            imageName: kHomeImage,
          ),
          const SideMenuIetms(
            title: 'Send a Message',
            imageName: kSendMsgImage,
          ),
          const SideMenuIetms(
            title: 'Textwords',
            imageName: kTextWordsImage,
          ),
          const SideMenuIetms(
            title: 'Contacts',
            imageName: kContactsImage,
          ),
          const SideMenuIetms(
            title: 'Sent Campaigns',
            imageName: kSentCampImage,
          ),
          const SideMenuIetms(
            title: 'Inbox',
            imageName: kInboxImage,
          ),
          const SideMenuIetms(
            title: 'Analytics',
            imageName: kHomeImage,
          ),
          const SideMenuIetms(
            title: 'My Account',
            imageName: kAccountImage,
          ),
          const SideMenuIetms(
            title: 'My Plan',
            imageName: kMyPlanImage,
          ),
          const Divider(
            height: 3,
            color: kLightGrey,
          ),
          const SideMenuItem(
            leadingIcon: Icon(
              Icons.email,
              size: 20,
              color: kGreyWhiteColor,
            ),
            title: 'Contact us',
          ),
          const SideMenuIetms(
            title: 'Log Out',
            imageName: kLogoutImage,
          ),
        ],
      ),
    );
  }
}
