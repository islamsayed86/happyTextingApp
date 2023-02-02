import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:happy_texting/core/constants/colors.dart';
import 'package:happy_texting/core/constants/styles.dart';
import 'package:happy_texting/features/my_text_word/presentaion/widgets/textword_poup_menu.dart';

import '../../data/text_word_model.dart';
// import 'package:badges/badges.dart' as badges;

class TextWordItem extends StatefulWidget {
  const TextWordItem({super.key, required this.textWordModel});

  final TextWordModel textWordModel;
  @override
  State<TextWordItem> createState() => _TextWordItemState();
}

class _TextWordItemState extends State<TextWordItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        15.sp,
        .2.sp,
        15.sp,
        10.3.sp,
      ),
      child: SizedBox(
        height: 46.5.h,
        width: 370.w,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  widget.textWordModel.textWord,
                  style: kText24SemiBoldLightBlue2,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 7.33.sp,
                    right: 70.sp,
                  ),
                  child: Badge(
                    textStyle: kText12White,
                    backgroundColor: kYellowColor,
                    alignment: AlignmentDirectional.center,
                    label: const Text(
                      'i',
                      style: kText12White,
                    ),
                    padding: EdgeInsets.symmetric(
                        vertical: 2.5.sp, horizontal: 5.sp),
                  ),
                ),
              ],
            ),
            Text(
              '${widget.textWordModel.contacts}',
              style: kText16SemiBold,
            ),
            Container(
                width: 20.w,
                height: 20.22.h,
                decoration: const BoxDecoration(
                    color: kGreyWhiteColor,
                    borderRadius: BorderRadius.all(Radius.circular(4))),
                child: TextWordPopupMenu(
                  contacts: widget.textWordModel.contacts,
                  textWordTitle: widget.textWordModel.textWord,
                  isActive: widget.textWordModel.isActive,
                )),
          ],
        ),
      ),
    );
  }
}
