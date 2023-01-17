import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:happy_texting/core/constants/colors.dart';
import 'package:happy_texting/core/constants/styles.dart';
import 'package:happy_texting/core/widgets/custom_container.dart';
import 'date_button.dart';

class DateTimePickerContainer extends StatefulWidget {
  const DateTimePickerContainer({super.key, this.title, required this.width});
  final String? title;
  final double width;
  @override
  State<DateTimePickerContainer> createState() =>
      _DateTimePickerContainerState();
}

class _DateTimePickerContainerState extends State<DateTimePickerContainer> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();
  TimeOfDay selectedHours = const TimeOfDay(hour: 12, minute: 59);

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime.now(),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  Future<void> selectTime(BuildContext context) async {
    final TimeOfDay? pickedTime =
        await showTimePicker(context: context, initialTime: selectedTime);

    if (pickedTime != null && pickedTime != selectedTime) {
      setState(() {
        selectedTime = pickedTime;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final hours = selectedTime.hour.toString().padLeft(2, '0');
    final minutes = selectedTime.minute.toString().padLeft(2, '0');
    return Column(
      children: [
        DateButton(
          ontap: () => selectDate(context),
          color: kWhite,
          text:
              '${selectedDate.toLocal().year}/${selectedDate.toLocal().month}/${selectedDate.toLocal().day}',
          width: 370.w,
          textColor: kGrey,
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          children: [
            CustomContainer(
              hight: 48.h,
              width: 80.sp,
              child: Padding(
                padding: EdgeInsets.fromLTRB(16.sp, 0, 3.sp, 0),
                child: Row(
                  children: [
                    Text(hours),
                    IconButton(
                      onPressed: (() => selectTime(context)),
                      icon: const Icon(Icons.arrow_drop_down_outlined),
                    ),
                  ],
                ),
              ),
            ),
            CustomContainer(
              hight: 48.h,
              width: 80.sp,
              child: Padding(
                padding: EdgeInsets.fromLTRB(16.sp, 0, 3.sp, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      minutes,
                      style: kText16MediumGrey2,
                    ),
                    IconButton(
                      onPressed: (() => selectTime(context)),
                      icon: const Icon(Icons.arrow_drop_down_outlined),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
