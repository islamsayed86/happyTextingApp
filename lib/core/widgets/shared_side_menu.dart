import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
          SideMenuItem(
            title: 'Home',
            leadingIcon: SvgPicture.asset(
              kHomeImage,
              color: kGreyWhiteColor,
            ),
          ),
          SideMenuItem(
            leadingIcon: SvgPicture.asset(
              kSendMsgImage,
              color: kGreyWhiteColor,
            ),
            title: 'Send a Message',
          ),
          SideMenuItem(
            leadingIcon: SvgPicture.asset(
              kTextWordsImage,
              color: kGreyWhiteColor,
            ),
            title: 'Textwords',
          ),
          SideMenuItem(
            leadingIcon: SvgPicture.asset(
              kContactsImage,
              color: kGreyWhiteColor,
            ),
            title: 'Contacts',
          ),
          SideMenuItem(
            leadingIcon: SvgPicture.asset(
              kSentCampImage,
              color: kGreyWhiteColor,
            ),
            title: 'Sent Campaigns',
          ),
          SideMenuItem(
            leadingIcon: SvgPicture.asset(
              kInboxImage,
              color: kGreyWhiteColor,
            ),
            title: 'Inbox',
          ),
          SideMenuItem(
            leadingIcon: SvgPicture.asset(
              kHomeImage,
              color: kGreyWhiteColor,
            ),
            title: 'Analytics',
          ),
          SideMenuItem(
            leadingIcon: SvgPicture.asset(
              kHomeImage,
              color: kGreyWhiteColor,
            ),
            title: 'My Account',
          ),
          SideMenuItem(
            leadingIcon: SvgPicture.asset(
              kMyPlanImage,
              color: kGreyWhiteColor,
            ),
            title: 'My Plan',
          ),
          const Divider(
            height: 3,
            color: kLightGrey,
          ),
          SideMenuItem(
            leadingIcon: SvgPicture.asset(
              kHomeImage,
              color: kGreyWhiteColor,
            ),
            title: 'Contact us',
          ),
          SideMenuItem(
            leadingIcon: SvgPicture.asset(
              kLogoutImage,
            ),
            title: 'Log Out',
          ),
        ],
      ),
    );
  }
}
