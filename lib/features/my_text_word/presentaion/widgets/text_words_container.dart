// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:happy_texting/features/my_text_word/presentaion/widgets/text_word_item.dart';

class TextWordsContainer extends StatefulWidget {
  const TextWordsContainer(
      {super.key, required this.textWordTitle, required this.contacts});
  final String textWordTitle;
  final int contacts;
  @override
  State<TextWordsContainer> createState() => _TextWordsContainerState();
}

class _TextWordsContainerState extends State<TextWordsContainer> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 334.h,
      child: ListView(
        children: [
          Column(
            children: [
              TextWordItem(
                textWordTitle: widget.textWordTitle,
                contacts: widget.contacts,
                isActive: true,
              ),
              Divider(
                height: 1.h,
              ),
              TextWordItem(
                textWordTitle: widget.textWordTitle,
                contacts: widget.contacts,
                isActive: true,
              ),
              Divider(
                height: 1.h,
              ),
              TextWordItem(
                textWordTitle: widget.textWordTitle,
                contacts: widget.contacts,
                isActive: true,
              ),
              Divider(
                height: 1.h,
              ),
              TextWordItem(
                textWordTitle: widget.textWordTitle,
                contacts: widget.contacts,
                isActive: true,
              ),
              Divider(
                height: 1.h,
              ),
              TextWordItem(
                textWordTitle: widget.textWordTitle,
                contacts: widget.contacts,
                isActive: true,
              ),
              Divider(
                height: 1.h,
              ),
              TextWordItem(
                textWordTitle: widget.textWordTitle,
                contacts: widget.contacts,
                isActive: true,
              ),
              Divider(
                height: 1.h,
              ),
              TextWordItem(
                textWordTitle: widget.textWordTitle,
                contacts: widget.contacts,
                isActive: true,
              ),
              Divider(
                height: 1.h,
              ),
            ],
          )
        ],
      ),
    );
  }
}
