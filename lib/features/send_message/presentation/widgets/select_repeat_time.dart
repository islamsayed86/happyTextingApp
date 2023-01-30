// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:happy_texting/core/constants/styles.dart';
import 'package:happy_texting/core/widgets/custom_container.dart';
import 'package:intl/intl.dart';

class SelectRpeatTimeWidget extends StatefulWidget {
  const SelectRpeatTimeWidget(
      {super.key,
      required this.selectedHourCallBack,
      required this.selectedminuteCallBack});
  final Function selectedHourCallBack;
  final Function selectedminuteCallBack;
  @override
  State<SelectRpeatTimeWidget> createState() => _SelectRpeatTimeWidgetState();
}

class _SelectRpeatTimeWidgetState extends State<SelectRpeatTimeWidget> {
  var selectedHour = DateFormat.jm().format(DateTime.now()).split(":")[0];
  // int.parse(DateFormat.jm().format(DateTime.now()).split(":")[0]) < 10
  //     ? '0${DateFormat.jm().format(DateTime.now()).split(":")[0]}'
  //     : DateFormat.jm().format(DateTime.now()).split(":")[0];
  List hoursList = List<int>.generate(12, (i) => i + 1);
  int selectedMinute = DateTime.now().minute;
  List minutesList = List<int>.generate(59, (i) => i + 1);

  List amOrpmlist = [
    'am',
    'pm',
  ];
  String selectedamOrpm = DateFormat.jm()
      .format(DateTime.now())
      .replaceRange(0, 5, "")
      .toLowerCase();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 80.sp,
          child: CustomContainer(
            hight: 48.h,
            child: Padding(
              padding: EdgeInsets.fromLTRB(16.sp, 14.sp, 17.sp, 10.sp),
              child: DropdownButtonFormField<String>(
                isExpanded: true,
                decoration: const InputDecoration.collapsed(hintText: ''),
                menuMaxHeight: 96.h,
                elevation: 0,
                iconSize: 20.sp,
                value: selectedHour,
                items: hoursList
                    .map(
                      (item) => DropdownMenuItem<String>(
                        value: item.toString(),
                        child: Text(
                          '$item',
                          style: kText16MediumGrey2,
                        ),
                      ),
                    )
                    .toList(),
                onChanged: ((item) => setState(() {
                      selectedHour = item!;
                      widget.selectedHourCallBack(selectedHour);
                      print(item);
                    })),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 80.sp,
          child: CustomContainer(
            hight: 48.h,
            child: Padding(
              padding: EdgeInsets.fromLTRB(16.sp, 14.sp, 17.sp, 10.sp),
              child: DropdownButtonFormField(
                isExpanded: true,
                decoration: const InputDecoration.collapsed(hintText: ''),
                menuMaxHeight: 96.h,
                elevation: 0,
                iconSize: 20.sp,
                value: selectedMinute,
                items: minutesList
                    .map(
                      (item) => DropdownMenuItem<int>(
                        value: item,
                        child: Text(
                          '$item',
                          style: kText16MediumGrey2,
                        ),
                      ),
                    )
                    .toList(),
                onChanged: ((item) => setState(() {
                      print(item);
                      selectedMinute = item!;
                      widget.selectedminuteCallBack(selectedMinute);
                    })),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 90.sp,
          child: CustomContainer(
            hight: 48.h,
            child: Padding(
              padding: EdgeInsets.fromLTRB(16.sp, 14.sp, 17.sp, 10.sp),
              child: DropdownButtonFormField(
                // hint: Text((selectedHour <= 12 ? 'am' : 'pm')),
                isExpanded: true,
                decoration: const InputDecoration.collapsed(hintText: ''),
                menuMaxHeight: 96.h,
                elevation: 0,
                iconSize: 20.sp,
                value: selectedamOrpm,
                items: amOrpmlist
                    .map(
                      (item) => DropdownMenuItem(
                        value: item,
                        child: Text(
                          '$item',
                          style: kText16MediumGrey2,
                        ),
                      ),
                    )
                    .toList(),
                onChanged: ((item) => setState(
                      () => print(item),
                    )),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 48.h,
          width: 80.w,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 16.sp, horizontal: 5),
            child: Text(
              'EDT',
              style: kText13SemiBoldGrey,
            ),
          ),
        ),
      ],
    );
  }
}
