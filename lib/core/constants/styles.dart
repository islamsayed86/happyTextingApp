import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:happy_texting/core/constants/strings.dart';

import 'colors.dart';

final kDefaultRadius = BorderRadius.circular(4.0);

const kHorizontal20Padding = EdgeInsets.symmetric(horizontal: 20.0);

// ------------------------ Decoration
const kNoDecorationTextFiled = InputDecoration(
  border: InputBorder.none,
  focusedBorder: InputBorder.none,
  enabledBorder: InputBorder.none,
  errorBorder: InputBorder.none,
  disabledBorder: InputBorder.none,
);

final kBorderDecoration = InputDecoration(
  border: const OutlineInputBorder(
    borderSide: BorderSide(color: kBorderColor),
    borderRadius: BorderRadius.all(Radius.circular(1.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: const BorderSide(color: kBorderColor),
    borderRadius: kDefaultRadius,
  ),
  focusedBorder: const OutlineInputBorder(
    borderSide: BorderSide(color: kDarkBlue),
    borderRadius: BorderRadius.all(Radius.circular(1.0)),
  ),
);

// ------------------------ Text Styles

const kText14WhiteRgular = TextStyle(
  fontSize: 16,
  color: kWhite,
  fontWeight: FontWeight.w300,
);
const kText14GreyBold = TextStyle(
  fontSize: 14,
  color: kGreyColor,
  fontWeight: FontWeight.bold,
);

const kText16GreyBold = TextStyle(
  fontSize: 16,
  color: kGreyColor2,
  fontWeight: FontWeight.bold,
);
const kText22SemiBoldWhite =
    TextStyle(fontSize: 22, color: Colors.white, fontFamily: appFontSemiBold);
const kText24SemiBoldWhite = TextStyle(
    fontSize: 24,
    color: Colors.white,
    fontFamily: appFontSemiBold,
    height: 1.25);
const kText20SemiBoldWhite =
    TextStyle(fontSize: 20, color: Colors.white, fontFamily: appFontSemiBold);
const kText25ExtraBoldWhite =
    TextStyle(fontFamily: appFontExtraBold, color: Colors.white, fontSize: 25);
const kText30ExtraBoldWhite =
    TextStyle(fontFamily: appFontExtraBold, color: Colors.white, fontSize: 30);
const kText14MediumWhite =
    TextStyle(fontFamily: appFontMedium, color: Colors.white, fontSize: 14);
const kText16MediumWhite = TextStyle(
    fontFamily: appFontMedium, color: Colors.white, fontSize: 16, height: 1.25);
const kText22MediumWhite = TextStyle(
    fontFamily: appFontMedium, color: Colors.white, fontSize: 22, height: 1.25);
const kText14MediumGrey = TextStyle(
    fontFamily: appFontFamily, color: kDarkerGrey, fontSize: 14, height: 1.5);
const kText16SemiBoldGrey = TextStyle(
    fontFamily: appFontSemiBold,
    color: Color(0xFF707070),
    fontSize: 16,
    fontWeight: FontWeight.w500);
const kText16SemiBoldGrey2 = TextStyle(
    fontFamily: appFontSemiBold,
    color: Color(0xFF333333),
    fontSize: 16,
    fontWeight: FontWeight.w500);
const kText18SemiBoldGrey = TextStyle(
    fontFamily: appFontSemiBold, color: Color(0xFF707070), fontSize: 18);
final kText18MediumGrey = TextStyle(
    height: 1.2,
    fontFamily: appFontMedium,
    color: const Color(0xFF505050),
    fontSize: 10.sp);
const kText16MediumGrey2 = TextStyle(
  fontFamily: appFontMedium,
  color: Color(0xFF505050),
  fontSize: 16,
);
const kText16MediumLightBlue = TextStyle(
  fontFamily: appFontMedium,
  color: kLightBlueColor2,
  fontSize: 16,
);
const kText18MediumItalicGrey = TextStyle(
    height: 1.2,
    fontFamily: appFontMediumItalic,
    color: Color(0xFF505050),
    fontSize: 18);
const kText25BoldBlack =
    TextStyle(fontFamily: appFontBold, color: Colors.black, fontSize: 25);

final kText18normalBlack = TextStyle(
    fontFamily: appFontFamily,
    color: const Color(0xFF333333),
    fontSize: 10.sp,
    fontWeight: FontWeight.normal);
const kText20Bold = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
const kText20BoldCus = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    height: 1.3,
    fontFamily: appFontBold);

const kText22Bold = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    height: 1.3,
    fontFamily: appFontBold);
const kText18Bold = TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
const kText30Bold = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
const kText13 = TextStyle(fontSize: 13);
const kText13SemiBold =
    TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: Colors.white);
const kText15 = TextStyle(fontSize: 15);
const kText15Bold = TextStyle(fontSize: 15, fontWeight: FontWeight.bold);
const kText16Grey = TextStyle(fontSize: 16, color: kGreyColor);
const kText25Grey = TextStyle(fontSize: 25, color: Colors.grey);
const kText14Bold = TextStyle(fontSize: 14, fontWeight: FontWeight.bold);
const kText14 = TextStyle(fontSize: 14);
const kText16 = TextStyle(fontSize: 16);
const kText18 = TextStyle(fontSize: 18);

const kText24SemiBold = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.w500,
  color: kDarkGrey,
);
const kText24SemiBoldLightBlue = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.w500,
  color: kAppBarBarSendIconColor,
);

const kText21SemiBold = TextStyle(
  fontSize: 21,
  fontWeight: FontWeight.w600,
  color: Color(0xFF505050),
);

const kText16Bold = TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
const kText12 =
    TextStyle(fontSize: 12, color: kDarkerGrey, fontFamily: appFontBold);
const kText27BoldGrey =
    TextStyle(color: kGreyColor, fontSize: 27, fontWeight: FontWeight.bold);
