import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:happy_texting/core/constants/colors.dart';
import 'package:happy_texting/core/constants/images_paths.dart';
import 'package:happy_texting/core/constants/styles.dart';

class TextWordsTitileContainer extends StatelessWidget {
  const TextWordsTitileContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kLightgrey2,
      height: 44.h,
      child: Padding(
        padding: EdgeInsets.only(left: 15.sp, right: 93.12.sp),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'TEXTWORD',
              style: kText14SemiBold,
            ),
            SvgPicture.asset(
              kContactsImage,
              color: kSpColor,
              height: 24.h,
              width: 19.88.w,
            ),
          ],
        ),
      ),
    );
  }
}
