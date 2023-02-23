// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:happy_texting/core/constants/colors.dart';
import 'package:happy_texting/features/my_text_word/data/models/text_words_model.dart';

import 'package:happy_texting/core/shared/shared_app_bar.dart';
import 'package:happy_texting/core/widgets/custom_container.dart';
// import 'package:happy_texting/features/my_text_word/data/sevices/text_word_sevices.dart';
// import 'package:happy_texting/features/my_text_word/presentaion/widgets/text_word_item.dart';
import 'package:happy_texting/features/my_text_word/presentaion/widgets/text_words_container.dart';
import 'package:happy_texting/features/my_text_word/presentaion/widgets/textwords_title_container.dart';

class MyTextWordScreen extends StatefulWidget {
  const MyTextWordScreen({super.key});

  @override
  State<MyTextWordScreen> createState() => _MyTextWordScreenState();
}

class _MyTextWordScreenState extends State<MyTextWordScreen> {
  TextWordsModelData? textWords;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightGrey1,
      appBar: const SharedAppBar(
        appBarWithButtonAndSubtitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(
          9.5.sp,
          19.5.sp,
          9.5.sp,
          15.5.sp,
        ),
        child: CustomContainer(
          hight: 565.h,
          child: SingleChildScrollView(
            child: Column(
              children: const [
                TextWordsTitileContainer(),
                TextWordItemContainer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
