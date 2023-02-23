import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:happy_texting/core/constants/colors.dart';
import 'package:happy_texting/core/constants/styles.dart';

// import '../../data/models/text_word_model.dart';
import '../../data/models/text_words_model.dart';

// This is the type used by the popup menu below.
enum PopUpMenNumber { itemOne, itemTwo, itemThree, itemFour, itemFive, itemSix }

class TextWordPopupMenu extends StatefulWidget {
  const TextWordPopupMenu({
    super.key,
    required this.textWordModel,
  });
  final TextWordDataModel? textWordModel;

  @override
  State<TextWordPopupMenu> createState() => _TextWordPopupMenuState();
}

class _TextWordPopupMenuState extends State<TextWordPopupMenu> {
  PopUpMenNumber? selectedMenu;
  PopUpMenNumber? popUpMenuNumber;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            color: kGreyWhiteColor,
            borderRadius: BorderRadius.all(Radius.circular(4.sp))),
        child: Center(
          child: PopupMenuButton<PopUpMenNumber>(
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
            onSelected: (PopUpMenNumber item) {
              setState(() {
                selectedMenu = item;
              });
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<PopUpMenNumber>>[
              const PopupMenuItem<PopUpMenNumber>(
                value: PopUpMenNumber.itemOne,
                child: Text('Settings'),
              ),
              PopupMenuItem<PopUpMenNumber>(
                value: PopUpMenNumber.itemTwo,
                child: PopUpMenuChild(
                  itemTitle: 'Send Message',
                  onTap: () {
                    Navigator.pushNamed(context, 'SendMassageScreen',
                        arguments: widget.textWordModel);
                    setState(() {
                      popUpMenuNumber = PopUpMenNumber.itemTwo;
                    });
                  },
                ),
              ),
              PopupMenuItem<PopUpMenNumber>(
                value: PopUpMenNumber.itemThree,
                child: PopUpMenuChild(
                  itemTitle: 'Add Contact',
                  onTap: () {},
                ),
              ),
              PopupMenuItem<PopUpMenNumber>(
                value: PopUpMenNumber.itemFour,
                child: PopUpMenuChild(
                  itemTitle: 'Segments',
                  onTap: () {},
                ),
              ),
              PopupMenuItem<PopUpMenNumber>(
                value: PopUpMenNumber.itemFive,
                child: PopUpMenuChild(
                  itemTitle: 'View Analytics',
                  onTap: () {},
                ),
              ),
              PopupMenuItem<PopUpMenNumber>(
                value: PopUpMenNumber.itemSix,
                child: PopUpMenuChild(
                  itemTitle: 'Delet',
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PopUpMenuChild extends StatelessWidget {
  const PopUpMenuChild({
    super.key,
    required this.itemTitle,
    this.onTap,
  });
  final String itemTitle;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        itemTitle,
        style: kText16MediumGrey2,
      ),
    );
  }
}
