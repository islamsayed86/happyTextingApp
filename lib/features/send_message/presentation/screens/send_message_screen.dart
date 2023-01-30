// ignore_for_file: avoid_print, must_be_immutable, unrelated_type_equality_checks, body_might_complete_normally_nullable

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
import 'package:happy_texting/features/send_message/presentation/widgets/date_time_picker.dart';
import 'package:happy_texting/features/send_message/presentation/widgets/select_repeat_time.dart';
import 'package:happy_texting/features/send_message/presentation/widgets/stop_repeat_time.dart';
import 'package:intl/intl.dart';
import 'package:toggle_switch/toggle_switch.dart';

class SendMassageScreen extends StatefulWidget {
  const SendMassageScreen({
    super.key,
  });

  @override
  State<SendMassageScreen> createState() => _SendMassageScreenState();
}

enum SendMessagestartTimeIs { now, later, regularly }

enum RepeatItEvery { day, week, month }

enum StopRepeating { whenTurnedOff, onSpecificDay }

class _SendMassageScreenState extends State<SendMassageScreen> {
  final GlobalKey<FormState> formKey = GlobalKey();
  final GlobalKey<FormState> textWordKey = GlobalKey();
  final GlobalKey<FormState> dateKey = GlobalKey();
  final GlobalKey<FormState> selectedDayKey = GlobalKey();
  final GlobalKey<FormState> repeatPeriodKey = GlobalKey();
  final GlobalKey<FormState> stopRepeatingKey = GlobalKey();

  int? numOfMessageFiledCharacters = 0;
  SendMessagestartTimeIs sendMessagestartTime = SendMessagestartTimeIs.now;
  RepeatItEvery repeatItEvery = RepeatItEvery.month;
  StopRepeating? stopRepeating;
  final TextEditingController _campaignNameController = TextEditingController();
  final TextEditingController _messageFieldController = TextEditingController();
  String? selectedTextWord;
  String? campaignName;

  var hour =
      int.parse(DateFormat.jm().format(DateTime.now()).split(":")[0]) < 10
          ? '0${DateFormat.jm().format(DateTime.now()).split(":")[0]}'
          : DateFormat.jm().format(DateTime.now()).split(":")[0];

  int selectedMinute = DateTime.now().minute;
  String selectedHour =
      int.parse(DateFormat.jm().format(DateTime.now()).split(":")[0]) < 10
          ? '0${DateFormat.jm().format(DateTime.now()).split(":")[0]}'
          : DateFormat.jm().format(DateTime.now()).split(":")[0];
  int stopSelectedHour = DateTime.now().hour;
  String? selectedDate;
  String? textMessage;
  List textWordsList = [
    'text word 1',
    'text word 2',
    'text word 3',
    'text word 4',
  ];
  int? selectedDay;
  List daysOfTheWeekList = List<int>.generate(7, (i) => i + 1);
  List daysOfTheMonthList = List<int>.generate(31, (i) => i + 1);
  List daysOfTheWeekStopList = List<int>.generate(7, (i) => i + 1);
  List daysOfTheMonthStopList = List<int>.generate(31, (i) => i + 1);
  List<RepeatItEvery> repeatItList = [
    //Every Day
    RepeatItEvery.day,
    RepeatItEvery.week,
    RepeatItEvery.month,
  ];
  List<StopRepeating> stopRepeatMsaageList = [
    //Every Day
    StopRepeating.whenTurnedOff,
    StopRepeating.onSpecificDay,
  ];
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
                          validator: (value) {
                            if (value != null && value.isEmpty) {
                              return 'please type a campign name';
                            } else {
                              campaignName = value;
                            }
                          },
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
                        //  textword dropdown menu
                        Form(
                          key: textWordKey,
                          child: SizedBox(
                            width: 370.w,
                            child: CustomContainer(
                              hight: 48.h,
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(
                                    16.sp, 14.sp, 10.sp, 10.sp),
                                child: DropdownButtonFormField(
                                  hint: const Text('[text words]'),
                                  isExpanded: true,
                                  decoration: const InputDecoration.collapsed(
                                      hintText: ''),
                                  // underline: const SizedBox(),
                                  menuMaxHeight: 96.h,
                                  elevation: 0,
                                  iconSize: 20.sp,
                                  value: selectedTextWord,
                                  items: textWordsList
                                      .map(
                                        (item) => DropdownMenuItem<String>(
                                          value: item,
                                          child: Text(
                                            '$item',
                                            style: kText16MediumGrey2,
                                          ),
                                        ),
                                      )
                                      .toList(),
                                  onChanged: ((item) => setState(() {
                                        selectedTextWord = item!;
                                        print(item);
                                      })),
                                  validator: (textWord) {
                                    if (textWord == null) {
                                      return 'please select a text word';
                                    }
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 16.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Text Message  hour ',
                              //  ${hour.substring(0, 1).padLeft(2, '0')}  ${hour.substring(2, 4).padLeft(2, '0')}  ${hour.substring(4, 7)}
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
                          validator: (value) {
                            if (value != null && value.isEmpty) {
                              return 'please type a text message';
                            } else {
                              textMessage = value;
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
            // 'Send this message',

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
                          setState(() => sendMessagestartTime =
                              SendMessagestartTimeIs.now);
                        },
                        width: 108.w,
                        color:
                            sendMessagestartTime == SendMessagestartTimeIs.now
                                ? kLightBlueColor2
                                : kGreyWhiteColor,
                      ),
                      CustomizedButton(
                        text: 'Later',
                        ontap: () {
                          setState(() => sendMessagestartTime =
                              SendMessagestartTimeIs.later);
                        },
                        width: 108.w,
                        color:
                            sendMessagestartTime == SendMessagestartTimeIs.later
                                ? kRedColor
                                : kGreyWhiteColor,
                      ),
                      CustomizedButton(
                        text: 'Regularly',
                        ontap: () {
                          setState(() => sendMessagestartTime =
                              SendMessagestartTimeIs.regularly);
                        },
                        width: 108.w,
                        color: sendMessagestartTime ==
                                SendMessagestartTimeIs.regularly
                            ? kYellowColor
                            : kGreyWhiteColor,
                      ),
                    ],
                  ),
                  Visibility(
                    visible:
                        sendMessagestartTime == SendMessagestartTimeIs.later,
                    child: SizedBox(
                      height: 33.h,
                    ),
                  ),
                  Visibility(
                    visible:
                        sendMessagestartTime == SendMessagestartTimeIs.later ||
                            sendMessagestartTime ==
                                SendMessagestartTimeIs.regularly,
                    child: Column(
                      children: [
                        Visibility(
                          visible: sendMessagestartTime ==
                              SendMessagestartTimeIs.regularly,
                          child: SizedBox(
                            height: 27.h,
                          ),
                        ),
                        Visibility(
                          visible: sendMessagestartTime ==
                              SendMessagestartTimeIs.regularly,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Repeat it',
                                    style: kText13SemiBoldGrey,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 7.h,
                              ),
                            ],
                          ),
                        ),

                        //'Repeat it 1'
                        Form(
                          key: repeatPeriodKey,
                          child: Visibility(
                            visible: sendMessagestartTime ==
                                SendMessagestartTimeIs.regularly,
                            child: SizedBox(
                              width: 370.w,
                              child: CustomContainer(
                                hight: 48.h,
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(
                                      16.sp, 14.sp, 10.sp, 10.sp),
                                  child: DropdownButtonFormField<RepeatItEvery>(
                                    hint: const Text('Every month'),
                                    // value: RepeatItEvery.month,
                                    isExpanded: true,
                                    decoration: const InputDecoration.collapsed(
                                        hintText: ''),
                                    menuMaxHeight: 96.h,
                                    elevation: 0,
                                    iconSize: 20.sp,
                                    items: repeatItList
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
                                    onChanged: ((item) {
                                      setState(() {
                                        repeatItEvery = item!;
                                        print(item);
                                      });
                                    }),
                                    validator: (value) {
                                      if (value == null) {
                                        return 'please select a repeat period';
                                      }
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        // 'Repeat it period'

                        Visibility(
                          visible: sendMessagestartTime ==
                                  SendMessagestartTimeIs.regularly &&
                              (repeatItEvery == RepeatItEvery.week ||
                                  repeatItEvery == RepeatItEvery.month ||
                                  repeatItEvery == RepeatItEvery.day),
                          child: SizedBox(
                            height: 22.h,
                          ),
                        ),
                        // Select a day title
                        Visibility(
                          visible: sendMessagestartTime ==
                                  SendMessagestartTimeIs.regularly &&
                              (repeatItEvery == RepeatItEvery.week ||
                                  repeatItEvery == RepeatItEvery.month),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Select a day',
                                    style: kText13SemiBoldGrey,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 7.h,
                              ),
                            ],
                          ),
                        ),

                        Visibility(
                          visible: sendMessagestartTime ==
                                  SendMessagestartTimeIs.regularly &&
                              (repeatItEvery == RepeatItEvery.week ||
                                  repeatItEvery == RepeatItEvery.month),
                          child: Column(
                            children: [
                              Form(
                                key: selectedDayKey,
                                child: SizedBox(
                                  width: 370.w,
                                  child: CustomContainer(
                                    hight: 48.h,
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(
                                          16.sp, 14.sp, 10.sp, 10.sp),
                                      child: DropdownButtonFormField(
                                        hint: (repeatItEvery ==
                                                RepeatItEvery.week)
                                            ? const Text(
                                                'on a specific day of the week...')
                                            : const Text(
                                                'on a specific day of the month...'),
                                        isExpanded: true,
                                        decoration:
                                            const InputDecoration.collapsed(
                                                hintText: ''),
                                        menuMaxHeight: 96.h,
                                        elevation: 0,
                                        iconSize: 20.sp,
                                        // value: 'on a specific day of the month...',
                                        items: ((repeatItEvery ==
                                                    RepeatItEvery.month)
                                                ? daysOfTheMonthList
                                                : daysOfTheWeekList)
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
                                              selectedDay = item;
                                            })),
                                        validator: (value) {
                                          if (value == null) {
                                            showSnackBar(
                                                context, 'please select a day');
                                            return null;
                                          } else {
                                            print(value);
                                          }
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 22.h,
                              ),
                            ],
                          ),
                        ),
                        Visibility(
                          visible: sendMessagestartTime ==
                                  SendMessagestartTimeIs.later ||
                              sendMessagestartTime ==
                                      SendMessagestartTimeIs.regularly &&
                                  (repeatItEvery == RepeatItEvery.week ||
                                      repeatItEvery == RepeatItEvery.month),
                          child: Column(
                            children: [
                              DateTimePickerContainer(
                                width: 370.sp,
                                callback: (str) {
                                  setState(() {
                                    selectedDate = str;
                                  });
                                },
                                dateKey: dateKey,
                              ),
                              SizedBox(
                                height: 16.h,
                              ),
                            ],
                          ),
                        ),
                        Visibility(
                          visible: sendMessagestartTime ==
                                  SendMessagestartTimeIs.later ||
                              sendMessagestartTime ==
                                  SendMessagestartTimeIs.regularly,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Send at:',
                                    style: kText13SemiBoldGrey,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 7.h,
                              ),
                              SelectRpeatTimeWidget(
                                selectedHourCallBack: (item) {
                                  setState(() {
                                    selectedHour = item;
                                  });
                                },
                                selectedminuteCallBack: (minute) {
                                  setState(() {
                                    selectedMinute = minute;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),

                        Visibility(
                          visible: sendMessagestartTime ==
                              SendMessagestartTimeIs.regularly,
                          child: SizedBox(
                            height: 20.h,
                          ),
                        ),
                      ],
                    ),
                  ),
//Stop repeating this message title row
                  Visibility(
                    visible: sendMessagestartTime ==
                        SendMessagestartTimeIs.regularly,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Stop repeating this message...',
                          style: kText13SemiBoldGrey,
                        ),
                      ],
                    ),
                  ),
//sized box
                  SizedBox(
                    height: 7.h,
                  ),
//'Stop repeating this message content'
                  Visibility(
                    visible: sendMessagestartTime ==
                        SendMessagestartTimeIs.regularly,
                    child: Form(
                      key: stopRepeatingKey,
                      child: SizedBox(
                        width: 370.w,
                        child: CustomContainer(
                          hight: 48.h,
                          child: Padding(
                            padding:
                                EdgeInsets.fromLTRB(16.sp, 14.sp, 10.sp, 10.sp),
                            child: DropdownButtonFormField<StopRepeating>(
                              hint: const Text('when turned off'),
                              value: stopRepeating =
                                  StopRepeating.whenTurnedOff,
                              isExpanded: true,
                              decoration:
                                  const InputDecoration.collapsed(hintText: ''),
                              menuMaxHeight: 96.h,
                              elevation: 0,
                              iconSize: 20.sp,
                              items: stopRepeatMsaageList
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
                              onChanged: ((item) {
                                setState(() {
                                  stopRepeating = item!;
                                  print(item);
                                });
                              }),
                              validator: (value) {
                                if (value == null) {
                                  showSnackBar(
                                      context, 'please select a stop case');
                                  return null;
                                } else {
                                  print(value);
                                }
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
//stop repeating message on specific day content
                  Visibility(
                    visible: sendMessagestartTime ==
                            SendMessagestartTimeIs.regularly &&
                        (stopRepeating == StopRepeating.onSpecificDay),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20.h,
                        ),
                        DateTimePickerContainer(
                          width: 370.w,
                          callback: (selectDate) {
                            setState(() {
                              selectedDate = selectDate;
                            });
                          },
                          stopRepeatingKey: stopRepeatingKey,
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        StopRpeatTimeWidget(
                          stopSelectedHourCallBack: (stopHour) {
                            setState(() {
                              stopSelectedHour = stopHour;
                            });
                          },
                          stopSelectedMinuteCallBack: (stopMinute) {
                            setState(() {
                              stopSelectedHour = stopMinute;
                            });
                          },
                        ),
                      ],
                    ),
                  ),

                  Visibility(
                    visible: sendMessagestartTime ==
                        SendMessagestartTimeIs.regularly,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 27.h,
                        ),
                        Row(
                          children: [
                            Text(
                              'Active status',
                              style: kText13SemiBoldGrey,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 19.5.sp,
                              ),
                              child: ToggleSwitch(
                                minWidth: 20.w,
                                minHeight: 18.h,
                                cornerRadius: 20.0,
                                activeBgColors: const [
                                  [kLightGrayColor],
                                  [kLightGrayColor]
                                ],

                                activeFgColor: kYellowColor,
                                inactiveBgColor: kYellowColor,
                                inactiveFgColor: Colors.white,
                                initialLabelIndex: 1,
                                totalSwitches: 2,
                                // labels: ['True', 'False'],
                                radiusStyle: true,
                                onToggle: (index) {
                                  print('switched to: $index');
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: (sendMessagestartTime == SendMessagestartTimeIs.now)
                        ? 41.h
                        : (sendMessagestartTime == SendMessagestartTimeIs.later)
                            ? 30.h
                            : 27.h,
                  ),

// the end buttont

// repeatItEvery
// stopRepeating

// selectedMinute
// selectedHour
// stopSelectedMinute
// stopSelectedHour
// selectedDate
// selectedDay
                  CustomizedButton(
                    text: (sendMessagestartTime == SendMessagestartTimeIs.now)
                        ? 'Send Message'
                        : (sendMessagestartTime == SendMessagestartTimeIs.later)
                            ? 'Schedule Message'
                            : 'Create Message',
                    ontap: () {
                      //check the validation for all send cases
                      print(hour);

                      if (formKey.currentState!.validate() &&
                          textWordKey.currentState!.validate()) {
                        print(campaignName);
                        print(selectedTextWord);
                        print(textMessage);

                        if (sendMessagestartTime ==
                                SendMessagestartTimeIs.later &&
                            dateKey.currentState!.validate()) {
                          print(selectedDate);
                          print(selectedHour);
                          print(selectedMinute);
                        }
                        if (sendMessagestartTime ==
                                    SendMessagestartTimeIs.regularly &&
                                repeatItEvery == RepeatItEvery.month ||
                            repeatItEvery == RepeatItEvery.week) {
                          dateKey.currentState!.validate();
                          selectedDayKey.currentState!.validate();
                          repeatPeriodKey.currentState!.validate();
                          stopRepeatingKey.currentState!.validate();
                        }
                      }

                      // print(DateFormat('EEEE').format(DateTime.now()));
                      // print('timeFormated $timeFormated ');
                    },
                    width: 340.w,
                    color: (sendMessagestartTime == SendMessagestartTimeIs.now)
                        ? kDarkBlue
                        : (sendMessagestartTime == SendMessagestartTimeIs.later)
                            ? kRedColor
                            : (sendMessagestartTime ==
                                    SendMessagestartTimeIs.regularly)
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
