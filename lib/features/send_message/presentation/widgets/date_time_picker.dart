// ignore_for_file: body_might_complete_normally_nullable, avoid_print

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:happy_texting/core/constants/styles.dart';
import 'package:happy_texting/core/widgets/custom_container.dart';
import 'package:happy_texting/core/widgets/show_snackbar.dart';

class DateTimePickerContainer extends StatefulWidget {
  const DateTimePickerContainer(
      {super.key,
      this.title,
      required this.width,
      required this.callback,
      this.dateKey,
      this.stopRepeatingKey});
  final String? title;
  final double width;
  final GlobalKey<FormState>? dateKey;
  final GlobalKey<FormState>? stopRepeatingKey;
  final Function(String) callback;
  @override
  State<DateTimePickerContainer> createState() =>
      _DateTimePickerContainerState();
}

class _DateTimePickerContainerState extends State<DateTimePickerContainer> {
  DateTime selectedDate = DateTime.now();
  // TimeOfDay selectedTime = TimeOfDay.now();
  // GlobalKey<FormState>? dateKey;
  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime.now(),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        widget.callback(selectedDate.toString());
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // final hours = selectedTime.hour.toString().padLeft(2, '0');
    // final minutes = selectedTime.minute.toString().padLeft(2, '0');
    return Column(
      children: [
        InkWell(
          onTap: () => selectDate(context),
          child: Form(
            key: widget.dateKey,
            child: SizedBox(
              width: 370.w,
              child: CustomContainer(
                hight: 48.h,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(16.sp, 14.sp, 10.sp, 10.sp),
                  child: DropdownButtonFormField(
                    hint: Text(
                      '${selectedDate.toLocal().year}/${selectedDate.toLocal().month}/${selectedDate.toLocal().day}',
                      style: kText16MediumGrey2,
                    ),
                    isExpanded: true,
                    decoration: const InputDecoration.collapsed(hintText: ''),
                    menuMaxHeight: 96.h,
                    elevation: 0,
                    iconSize: 20.sp,
                    // value: 'on a specific day of the month...',
                    items: const <DropdownMenuItem>[],
                    onChanged: ((item) => setState(() {
                          selectedDate = item;
                        })),
                    validator: (value) {
                      (value != null && value.toString().isEmpty)
                          ? showSnackBar(context, 'please select the date')
                          : print(selectedDate);
                      return null;
                    },
                  ),
                ),
              ),
            ),
          ),
        ),

        // SizedBox(
        //   height: 10.h,
        // ),
      ],
    );
  }
}













// Row(
        //   children: [
        //     CustomContainer(
        //       hight: 48.h,
        //       // width: 85.w,
        //       child: Padding(
        //         padding: EdgeInsets.fromLTRB(16.sp, 0, 5.sp, 0),
        //         child: Row(
        //           children: [
        //             Text(
        //               hours,
        //               style: kText16MediumGrey2,
        //             ),
        //             IconButton(
        //               onPressed: (() => selectTime(context)),
        //               icon: const Icon(Icons.arrow_drop_down_outlined),
        //             ),
        //           ],
        //         ),
        //       ),
        //     ),

        //     // CustomContainer(
        //     //   hight: 48.h,
        //     //   // width: 90.w,
        //     //   child: Padding(
        //     //     padding: EdgeInsets.fromLTRB(16.sp, 0, 7, 0),
        //     //     child: Row(
        //     //       children: [
        //     //         Text(
        //     //           minutes,
        //     //           style: kText16MediumGrey2,
        //     //         ),
        //     //         IconButton(
        //     //           onPressed: (() => selectTime(context)),
        //     //           icon: const Icon(Icons.arrow_drop_down_outlined),
        //     //         ),
        //     //       ],
        //     //     ),
        //     //   ),
        //     // ),
        //   ],
        // ),