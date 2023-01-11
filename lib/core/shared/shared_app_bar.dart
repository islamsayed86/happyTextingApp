import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:happy_texting/core/constants/colors.dart';
import 'package:happy_texting/core/constants/images_paths.dart';
import 'package:happy_texting/core/constants/styles.dart';
import 'package:happy_texting/core/widgets/customized_button.dart';

class SharedAppBar extends StatelessWidget with PreferredSizeWidget {
  const SharedAppBar({
    Key? key,
    this.leading,
    this.actions,
    this.icon,
    this.appBarWith2Titles = false,
    this.appBarWithButton = false,
    this.appBarWithButtonAndSubtitle = false,
    this.appBarWithColoredTitle2 = false,
    this.appBarWithTitle2Subtitle = false,
    this.subTitle,
    this.subTitleIcon,
    this.title2Icon,
    this.title2,
  }) : super(key: key);
  final Icon? icon;
  final Icon? subTitleIcon;
  final Icon? title2Icon;
  final Widget? leading;
  final String? title2;
  final List<Widget>? actions;
  final bool? appBarWithButtonAndSubtitle;
  final bool? appBarWithButton;
  final bool? appBarWithColoredTitle2;
  final bool? appBarWithTitle2Subtitle;
  final bool? appBarWith2Titles;
  final String? subTitle;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          AppBar(
            elevation: 0,
            leading: leading ??
                Builder(builder: (context) {
                  return IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    tooltip:
                        MaterialLocalizations.of(context).openAppDrawerTooltip,
                    icon: Padding(
                      padding: EdgeInsets.only(top: 20.sp),
                      child: Icon(
                        Icons.menu_rounded,
                        size: 30.sp,
                      ),
                    ),
                  );
                }),
            toolbarHeight: 80.h,
            backgroundColor: kDarkBlue,
            systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarIconBrightness: Brightness.light,
              statusBarColor: kDarkBlue,
            ),
            centerTitle: true,
            title: Padding(
              padding: EdgeInsets.fromLTRB(
                50.sp,
                25.sp,
                0.sp,
                0.sp,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    kAppBarImage,
                    scale: 1.1.sp,
                  ),
                ],
              ),
            ),
            actions: actions ??
                [
                  InkWell(
                    onTap: (() {}),
                    //  () => Navigator.pushNamed(context, sendMessageScreen),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(
                        0,
                        20.sp,
                        12.sp,
                        0,
                      ),
                      child: icon ??
                          SvgPicture.asset(
                            kSendMessageImage,
                            color: kLightBlueColor2,
                            // kSecondaryColor,
                            height: 20,
                          ),
                    ),
                  ),
                ],
          ),
          if (appBarWith2Titles!)
            Container(
              height: 70,
              width: MediaQuery.of(context).size.width,
              color: kDarkBlue,
              child: Padding(
                padding: EdgeInsets.only(left: 10.sp),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        title2Icon ??
                            SvgPicture.asset(
                              ksendMessageimage,
                              color: Colors.white,
                              height: 20,
                            ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 14.sp),
                          child: Column(
                            children: [
                              Text(
                                title2 ?? ('Send a Message'),
                                style: kText24SemiBoldWhite,
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          if (appBarWithColoredTitle2!)
            Container(
              height: 97,
              width: MediaQuery.of(context).size.width,
              color: kDarkBlue,
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 15.sp, vertical: 20.sp),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 6.sp),
                      child: title2Icon ??
                          SvgPicture.asset(
                            kArrowBackImage,
                            color: Colors.white,
                            height: 20,
                          ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 14.sp),
                      child: RichText(
                        text: const TextSpan(
                          text: 'Set auto-reply for :',
                          style: kText22MediumWhite,
                          children: <TextSpan>[
                            TextSpan(
                              text: '\nwordhere',
                              style: kText24SemiBoldLightBlue,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          if (appBarWithTitle2Subtitle!)
            Container(
              height: 110.h,
              width: MediaQuery.of(context).size.width,
              color: kDarkBlue,
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 10.sp, vertical: 25.sp),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        title2Icon ??
                            SvgPicture.asset(
                              kContactsImage,
                              color: Colors.white,
                              height: 20.h,
                            ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 14.sp),
                          child: Column(
                            children: [
                              Text(
                                title2 ?? ('Contacts'),
                                style: kText24SemiBoldWhite,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        title2Icon ??
                            SvgPicture.asset(
                              kfilterSvgImage,
                              color: kLightBlueColor2,
                              height: 16,
                            ),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 14.sp),
                            child: const Text(
                              'Show Filters & Options',
                              style: kText16MediumWhite,
                            )
                            //  RichText(
                            //   text: const TextSpan(
                            //     text: 'Your text usage will reset :',
                            //     style: kText22MediumWhite,
                            //     children: <TextSpan>[
                            //       TextSpan(
                            //         text: '\nAugust 20th.',
                            //         style: TextStyle(color: kLightBlueColor2),
                            //       ),
                            //     ],
                            //   ),
                            // ),

                            ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          if (appBarWithButtonAndSubtitle!)
            Material(
              color: kDarkBlue,
              child: Container(
                height: 173.h,
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.sp),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          title2Icon ??
                              SvgPicture.asset(
                                kTextWordsImage,
                                color: Colors.white,
                                height: 20.h,
                              ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15.sp),
                            child: Column(
                              children: [
                                Text(
                                  title2 ?? ('My Textwords'),
                                  style: kText24SemiBoldWhite,
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  subTitle ?? 'You have 6 unused textwords',
                                  style: kText13SemiBold,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    CustomizedButton(
                      text: 'Clone this campaign',
                      ontap: () {},
                      width: 340.w,
                      color: kLightBlueColor2,
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight((appBarWith2Titles ?? false)
      ? 146.h
      : (appBarWithColoredTitle2 ?? false)
          ? 176.h
          : (appBarWithTitle2Subtitle ?? false)
              ? 196.h
              : (appBarWithButton ?? false)
                  ? 216.h
                  : (appBarWithButtonAndSubtitle ?? false)
                      ? 253.h
                      : 80.h);
}












// class PrimaryAppBar extends StatelessWidget {
//   const PrimaryAppBar({
//     Key? key,
//     required this.leading,
//     required this.actions,
//     this.icon,
//   }) : super(key: key);

//   final Widget? leading;
//   final List<Widget>? actions;
//   final Icon? icon;

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       elevation: 0,
//       leading: leading ??
//           Builder(builder: (context) {
//             return IconButton(
//               onPressed: () {
//                 Scaffold.of(context).openDrawer();
//               },
//               tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
//               icon: Padding(
//                 padding: EdgeInsets.only(top: 20.sp),
//                 child: Icon(
//                   Icons.menu_rounded,
//                   size: 30.sp,
//                 ),
//               ),
//             );
//           }),
//       toolbarHeight: 90.h,
//       backgroundColor: kDarkBlue,
//       systemOverlayStyle: const SystemUiOverlayStyle(
//         statusBarIconBrightness: Brightness.light,
//         statusBarColor: kDarkBlue,
//       ),
//       centerTitle: true,
//       title: Padding(
//         padding: EdgeInsets.fromLTRB(
//           50.sp,
//           25.sp,
//           0.sp,
//           0.sp,
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Image.asset(
//               kAppBarImage,
//               scale: 1.1.sp,
//             ),
//           ],
//         ),
//       ),
//       actions: actions ??
//           [
//             InkWell(
//               onTap: (() {}),
//               //  () => Navigator.pushNamed(context, sendMessageScreen),
//               child: Padding(
//                 padding: EdgeInsets.fromLTRB(
//                   0,
//                   20.sp,
//                   12.sp,
//                   0,
//                 ),
//                 child: icon ??
//                     SvgPicture.asset(
//                       kSendMessageImage,
//                       color: kLightBlueColor2,
//                       // kSecondaryColor,
//                       height: 20,
//                     ),
//               ),
//             ),
//           ],
//     );
//   }
// }
