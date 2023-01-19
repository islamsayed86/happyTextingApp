// ignore_for_file: avoid_print, must_be_immutable

import 'dart:developer';

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:happy_texting/core/constants/colors.dart';
import 'package:happy_texting/core/constants/styles.dart';
import 'package:happy_texting/core/shared/shared_app_bar.dart';
import 'package:happy_texting/core/widgets/custom_container.dart';
import 'package:happy_texting/core/widgets/custom_text_field.dart';
import 'package:happy_texting/core/widgets/customized_button.dart';
import 'package:happy_texting/core/widgets/message_field.dart';
import 'package:happy_texting/core/widgets/show_snackbar.dart';
import 'package:happy_texting/features/send_message/presentation/widgets/date_form_field.dart';
import 'package:happy_texting/features/send_message/presentation/widgets/date_time_picker.dart';
// import 'package:happy_texting/features/send_message/presentation/widgets/time_widget.dart';

class SendMassageScreen extends StatefulWidget {
  const SendMassageScreen({
    super.key,
  });

  @override
  State<SendMassageScreen> createState() => _SendMassageScreenState();
}

enum SendMessagestartTime { now, later, regularly }

class _SendMassageScreenState extends State<SendMassageScreen> {
  final GlobalKey<FormState> formKey = GlobalKey();
  int? numOfMessageFiledCharacters = 0;
  SendMessagestartTime sendMessagestartTimes = SendMessagestartTime.now;
  final TextEditingController _campaignNameController = TextEditingController();
  final TextEditingController _messageFieldController = TextEditingController();
  String? selectedTextWord;
  String? selectedDate;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightGrey1,
      appBar: const SharedAppBar(
        appBarWith2Titles: true,
      ),
      body: Form(
        key: formKey,
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(
                9.5.sp,
                19.5.sp,
                9.5.sp,
                15.5.sp,
              ),
              child: CustomContainer(
                hight: 513.h,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 15.5.sp, vertical: 20.5.sp),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Campaign name',
                              style: kText13SemiBoldGrey,
                            )
                            // CustomFormTextFiled()
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        CustomTextFormField(
                          controller: _campaignNameController,
                          obscureText: false,
                          hintText: 'Input Text',
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        CustomDateFormField(
                          controller: _campaignNameController,
                          obscureText: false,
                          hintText: 'Input Text',
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Which textword list',
                              style: kText13SemiBoldGrey,
                            )
                            // CustomFormTextFiled()
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        DropdownSearch<String>(
                          onSaved: (newValue) => print(newValue),
                          popupProps: const PopupProps.menu(
                              // showSelectedItems: true,
                              // disabledItemFn: (String s) => s.startsWith('I'),
                              ),
                          items: const [
                            "textword 1",
                            // "Icategory 2 (Disabled)",
                            "textword 2",
                            'textword 3'
                          ],
                          onBeforeChange: ((prevItem, nextItem) async {
                            selectedTextWord = nextItem!;
                            log('selectedTextWord $selectedTextWord');
                            return true;
                          }),
                          dropdownDecoratorProps: DropDownDecoratorProps(
                            dropdownSearchDecoration: InputDecoration(
                                contentPadding: EdgeInsets.fromLTRB(
                                  16.sp,
                                  14.sp,
                                  40.sp,
                                  10.sp,
                                ),
                                enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: kBorder,
                                  ),
                                ),
                                hintText: '[textword]',
                                hintStyle: kText16MediumGrey2,
                                focusColor: Colors.white),
                          ),
                          onChanged: print,
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Text Message',
                              style: kText13SemiBoldGrey,
                            ),
                            Text(
                              '$numOfMessageFiledCharacters/160',
                              style: kText13SemiBoldGrey,
                            )
                            // CustomFormTextFiled()
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        MessageField(
                          controller: _messageFieldController,
                          validator: (str) {
                            if (str != null && str.isEmpty) {
                              return 'please type your message';
                              ////qween validator
                            }
                          },
                          onChanged: (data) {
                            setState(() {});
                            numOfMessageFiledCharacters = data.length;
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                9.5.sp,
                0,
                9.5.sp,
                22.sp,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Send this message',
                        style: kText13SemiBoldGrey,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 7.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomizedButton(
                        text: 'Now',
                        ontap: () {
                          setState(() =>
                              sendMessagestartTimes = SendMessagestartTime.now);
                        },
                        width: 108.w,
                        color: sendMessagestartTimes == SendMessagestartTime.now
                            ? kLightBlueColor2
                            : kGreyWhiteColor,
                      ),
                      CustomizedButton(
                        text: 'Later',
                        ontap: () {
                          setState(() => sendMessagestartTimes =
                              SendMessagestartTime.later);
                        },
                        width: 108.w,
                        color:
                            sendMessagestartTimes == SendMessagestartTime.later
                                ? kRedColor
                                : kGreyWhiteColor,
                      ),
                      CustomizedButton(
                        text: 'Regularly',
                        ontap: () {
                          setState(() => sendMessagestartTimes =
                              SendMessagestartTime.regularly);
                        },
                        width: 108.w,
                        color: sendMessagestartTimes ==
                                SendMessagestartTime.regularly
                            ? kYellowColor
                            : kGreyWhiteColor,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Visibility(
                    visible: sendMessagestartTimes ==
                            SendMessagestartTime.later ||
                        sendMessagestartTimes == SendMessagestartTime.regularly,
                    child: Column(
                      children: [
                        /////Fix get the value of the selected date:search for callBack functions
                        DateTimePickerContainer(
                            width: 370.sp,
                            callback: (str) {
                              setState(() {
                                selectedDate = str;
                              });
                            }),
                        DropdownSearch<String>(
                          onSaved: (newValue) => print(newValue),
                          popupProps: const PopupProps.menu(
                            fit: FlexFit.loose,
                            // showSelectedItems: true,
                            // disabledItemFn: (String s) => s.startsWith('I'),
                          ),
                          items: const [
                            "Every Day",
                            // "Icategory 2 (Disabled)",
                            "Every Week",
                            'Every month'
                          ],
                          onBeforeChange: ((prevItem, nextItem) async {
                            selectedTextWord = nextItem!;
                            log('selectedTextWord $selectedTextWord');
                            return true;
                          }),
                          dropdownDecoratorProps: DropDownDecoratorProps(
                            dropdownSearchDecoration: InputDecoration(
                                helperMaxLines: 2,
                                contentPadding: EdgeInsets.fromLTRB(
                                  16.sp,
                                  14.sp,
                                  40.sp,
                                  10.sp,
                                ),
                                enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: kBorder,
                                  ),
                                ),
                                hintText: 'Every month',
                                hintStyle: kText16MediumGrey2,
                                focusColor: Colors.white),
                          ),
                          onChanged: print,
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        Visibility(
                          visible: sendMessagestartTimes ==
                                  SendMessagestartTime.later ||
                              sendMessagestartTimes ==
                                  SendMessagestartTime.regularly,
                          child: const TimeWidget(),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                      ],
                    ),
                  ),

                  CustomizedButton(
                    text: (sendMessagestartTimes == SendMessagestartTime.now)
                        ? 'Send Message'
                        : (sendMessagestartTimes == SendMessagestartTime.later)
                            ? 'Schedule Message'
                            : 'Create Message',
                    ontap: () {
                      if (sendMessagestartTimes == SendMessagestartTime.now) {
                        if (formKey.currentState!.validate()) {
                          showSnackBar(context, 'send now case vlaidates');
                          print(_campaignNameController.text);
                          print(_messageFieldController.text);
                          print(selectedTextWord);
                          print(selectedDate);
                        }
                      } else if (sendMessagestartTimes ==
                          SendMessagestartTime.later) {
                        if (formKey.currentState!.validate() &&
                            _campaignNameController.text.isNotEmpty &&
                            _messageFieldController.text.isNotEmpty &&
                            selectedTextWord != null) {
                          showSnackBar(context, 'send now case vlaidates');
                          print(_campaignNameController.text);
                          print(_messageFieldController.text);
                          print(selectedTextWord);
                          print(selectedHour);
                          print(selectedMinute);
                          print(selectedDate);
                        }
                      }
                    },
                    width: 340.w,
                    color: (sendMessagestartTimes == SendMessagestartTime.now)
                        ? kDarkBlue
                        : (sendMessagestartTimes == SendMessagestartTime.later)
                            ? kRedColor
                            : (sendMessagestartTimes ==
                                    SendMessagestartTime.regularly)
                                ? kYellowColor
                                : kLightGrayColor,
                  ),
                  // const IsNowContent(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

dynamic selectedHour = 1;
dynamic selectedMinute = 1;

class TimeWidget extends StatefulWidget {
  const TimeWidget({super.key});

  @override
  State<TimeWidget> createState() => _TimeWidgetState();
}

class _TimeWidgetState extends State<TimeWidget> {
  dynamic selectedHour = 1; ////now time ??
  List hoursList = List<int>.generate(12, (i) => i + 1);
  dynamic selectedMinutes = 1; ////now time ??
  List minutesList = List<int>.generate(59, (i) => i + 1);
  List amOrpmlist = ['am', 'pm'];
  dynamic selectedamOrpm = ['am']; ////now time ??
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 80.sp,
          child: CustomContainer(
            hight: 48.h,
            child: Center(
              child: DropdownButton(
                menuMaxHeight: 96.h,
                elevation: 0,
                iconSize: 20.sp,
                value: selectedHour,
                items: hoursList
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
                      () => selectedMinutes = item,
                    )),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 80.sp,
          child: CustomContainer(
            hight: 48.h,
            child: Center(
              child: DropdownButton(
                menuMaxHeight: 96.h,
                elevation: 0,
                iconSize: 20.sp,
                value: selectedMinutes,
                items: minutesList
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
                      () => selectedMinutes = item,
                    )),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 80.sp,
          child: DropdownSearch<String>(
            onSaved: (newValue) => print(newValue),
            popupProps: const PopupProps.menu(fit: FlexFit.loose
                // showSelectedItems: true,
                // disabledItemFn: (String s) => s.startsWith('I'),
                ),
            items: const ['am', 'pm'],
            onBeforeChange: ((prevItem, nextItem) async {
              selectedamOrpm = nextItem!;
              log('selectedTextWord $selectedamOrpm');
              return true;
            }),
            dropdownDecoratorProps: DropDownDecoratorProps(
              dropdownSearchDecoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(
                    14.sp,
                    0.sp,
                    0.sp,
                    0.sp,
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: kBorder,
                    ),
                  ),
                  hintText: 'am',
                  hintStyle: kText16MediumGrey2,
                  focusColor: Colors.white),
            ),
            onChanged: print,
          ),
        ),
      ],
    );
  }
}


// class SendMessageTimesContent extends StatelessWidget {
//   const SendMessageTimesContent({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Visibility(
//             visible: sendMessagestartTimes == SendMessagestartTime.later,
//             child: const TimeWidget()),
//         Visibility(
//           visible: sendMessagestartTimes == SendMessagestartTime.now ||
//               sendMessagestartTimes == SendMessagestartTime.later ||
//               sendMessagestartTimes == SendMessagestartTime.regularly,
//           child: SizedBox(
//             height: 22.h,
//           ),
//         ),
//       ],
//     );
//   }
// }
