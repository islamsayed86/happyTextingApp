import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:happy_texting/core/constants/colors.dart';
import 'package:happy_texting/core/constants/images_paths.dart';

class SharedAppBar extends StatelessWidget with PreferredSizeWidget {
  const SharedAppBar({
    Key? key,
    this.leading,
    this.actions,
    this.icon,
    this.isDoubleAppBar = false,
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
  final bool? isDoubleAppBar;
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
            toolbarHeight: 90.h,
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
          if (isDoubleAppBar!) Container(),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
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
