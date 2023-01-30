import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors.dart';

// This is the type used by the popup menu below.
enum SampleItem { itemOne, itemTwo, itemThree, itemFour, itemFive, itemSix }

class TextWordPopupMenu extends StatefulWidget {
  const TextWordPopupMenu({super.key});

  @override
  State<TextWordPopupMenu> createState() => _TextWordPopupMenuState();
}

class _TextWordPopupMenuState extends State<TextWordPopupMenu> {
  SampleItem? selectedMenu;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 20.w,
        height: 20.22.h,
        decoration: const BoxDecoration(
            color: kGreyWhiteColor,
            borderRadius: BorderRadius.all(Radius.circular(4))),
        child: Center(
          child: PopupMenuButton<SampleItem>(
            icon: const Icon(
              Icons.keyboard_arrow_down,
              color: Colors.white,
            ),
            color: Colors.transparent,
            elevation: 0,
            padding: EdgeInsets.zero,
            // initialValue: selectedMenu,
            offset: Offset(-90.sp, -100.sp),
            // Callback that sets the selected popup menu item.
            onSelected: (SampleItem item) {
              setState(() {
                selectedMenu = item;
              });
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
              const PopupMenuItem<SampleItem>(
                value: SampleItem.itemOne,
                child: Text('Settings'),
              ),
              const PopupMenuItem<SampleItem>(
                value: SampleItem.itemTwo,
                child: Text('Send Message'),
              ),
              const PopupMenuItem<SampleItem>(
                value: SampleItem.itemThree,
                child: Text('Add Contact'),
              ),
              const PopupMenuItem<SampleItem>(
                value: SampleItem.itemFour,
                child: Text('Segments'),
              ),
              const PopupMenuItem<SampleItem>(
                value: SampleItem.itemFive,
                child: Text('View Analytics'),
              ),
              const PopupMenuItem<SampleItem>(
                value: SampleItem.itemSix,
                child: Text('Delet'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
