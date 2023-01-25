// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:happy_texting/core/constants/styles.dart';
import 'package:happy_texting/core/widgets/custom_container.dart';

class StopRpeatTimeWidget extends StatefulWidget {
  const StopRpeatTimeWidget(
      {super.key,
      required this.stopSelectedHourCallBack,
      required this.stopSelectedMinuteCallBack});
  final Function stopSelectedHourCallBack;
  final Function stopSelectedMinuteCallBack;
  @override
  State<StopRpeatTimeWidget> createState() => _StopRpeatTimeWidgetState();
}

class _StopRpeatTimeWidgetState extends State<StopRpeatTimeWidget> {
  int stopSelectedHour = DateTime.now().hour;
  List hoursList = List<int>.generate(12, (i) => i + 1);
  int stopSelectedMinute = DateTime.now().minute;
  List minutesList = List<int>.generate(59, (i) => i + 1);

  List amOrpmlist = [
    'am',
    'pm',
  ]; ////now time ??
  String selectedamOrpm = 'am'; ////now time ??

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
              child: DropdownButtonFormField(
                isExpanded: true,
                decoration: const InputDecoration.collapsed(hintText: ''),
                menuMaxHeight: 96.h,
                elevation: 0,
                iconSize: 20.sp,
                value: stopSelectedHour,
                items: hoursList
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
                      stopSelectedHour = item!;
                      widget
                          .stopSelectedHourCallBack(stopSelectedHour)
                          .toString();
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
                value: stopSelectedMinute,
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
                      stopSelectedMinute = item!;
                      widget
                          .stopSelectedMinuteCallBack(stopSelectedMinute)
                          .toString();
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
                // hint: Text((stopSelectedHour <= 12 ? 'am' : 'pm')),
                isExpanded: true,
                decoration: const InputDecoration.collapsed(hintText: ''),
                menuMaxHeight: 96.h,
                elevation: 0,
                iconSize: 20.sp,
                value: stopSelectedHour <= 12
                    ? selectedamOrpm = 'am'
                    : selectedamOrpm = 'pm',
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
