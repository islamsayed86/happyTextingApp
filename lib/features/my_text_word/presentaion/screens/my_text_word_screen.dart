import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:happy_texting/core/constants/colors.dart';

import 'package:happy_texting/core/shared/shared_app_bar.dart';
import 'package:happy_texting/core/widgets/custom_container.dart';
import 'package:happy_texting/features/my_text_word/presentaion/widgets/text_words_container.dart';
import 'package:happy_texting/features/my_text_word/presentaion/widgets/textwords_title_container.dart';

class MyTextWordScreen extends StatefulWidget {
  const MyTextWordScreen({super.key});

  @override
  State<MyTextWordScreen> createState() => _MyTextWordScreenState();
}

class _MyTextWordScreenState extends State<MyTextWordScreen> {
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
          child: Column(
            children: const [
              TextWordsTitileContainer(),
              TextWordsContainer(
                textWordTitle: 'bliss',
                contacts: 188,
              ),
            ],
          ),
        ),
      ),
    );
  }
}