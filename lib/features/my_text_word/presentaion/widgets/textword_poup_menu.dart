import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors.dart';

// This is the type used by the popup menu below.
enum PopUpMenName {
  itemOne,
  sendMessage,
  itemThree,
  itemFour,
  itemFive,
  itemSix
}

class TextWordPopupMenu extends StatefulWidget {
  const TextWordPopupMenu({super.key});

  @override
  State<TextWordPopupMenu> createState() => _TextWordPopupMenuState();
}

class _TextWordPopupMenuState extends State<TextWordPopupMenu> {
  PopUpMenName? selectedMenu;

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
          child: PopupMenuButton<PopUpMenName>(
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
            onSelected: (PopUpMenName item) {
              setState(() {
                selectedMenu = item;
              });
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<PopUpMenName>>[
              const PopupMenuItem<PopUpMenName>(
                value: PopUpMenName.itemOne,
                child: Text('Settings'),
              ),
              PopupMenuItem<PopUpMenName>(
                value: PopUpMenName.sendMessage,
                child: InkWell(
                  child: const Text('Send Message'),
                  onTap: () {
                    Navigator.pushNamed(context, 'SendMassageScreen');
                  },
                ),
              ),
              const PopupMenuItem<PopUpMenName>(
                value: PopUpMenName.itemThree,
                child: Text('Add Contact'),
              ),
              const PopupMenuItem<PopUpMenName>(
                value: PopUpMenName.itemFour,
                child: Text('Segments'),
              ),
              const PopupMenuItem<PopUpMenName>(
                value: PopUpMenName.itemFive,
                child: Text('View Analytics'),
              ),
              const PopupMenuItem<PopUpMenName>(
                value: PopUpMenName.itemSix,
                child: Text('Delet'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
