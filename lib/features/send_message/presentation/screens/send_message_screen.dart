// ignore_for_file: avoid_print

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
import 'package:happy_texting/features/send_message/presentation/widgets/date_time_picker.dart';

class SendMassageScreen extends StatefulWidget {
  const SendMassageScreen({
    super.key,
  });

  @override
  State<SendMassageScreen> createState() => _SendMassageScreenState();
}

class _SendMassageScreenState extends State<SendMassageScreen> {
  final GlobalKey<FormState> formKey = GlobalKey();
  String? date;
  int? numOfCharacter = 0;
  bool _changeNowButtonColor = false;
  bool _changeLaterButtonColor = false;
  bool _changeRegularlyButtonColor = false;
  bool _isNow = true;
  bool _isLater = false;
  // final bool _isRegularly = false;
  final TextEditingController _campaignNameController = TextEditingController();
  final TextEditingController _messageFieldController = TextEditingController();

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
                              '$numOfCharacter/160',
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
                          onChanged: (data) {
                            setState(() {});
                            numOfCharacter = data.length;
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
                          setState(() => _isNow = !_isNow);
                          setState(() =>
                              _changeNowButtonColor = !_changeNowButtonColor);
                          setState(() => _changeLaterButtonColor =
                              !_changeLaterButtonColor);
                          setState(() => _isLater = !_isLater);
                        },
                        width: 108.w,
                        color: _changeNowButtonColor
                            ? kGreyWhiteColor
                            : kLightBlueColor2,
                      ),
                      CustomizedButton(
                        text: 'Later',
                        ontap: () {
                          setState(() => _changeLaterButtonColor =
                              !_changeLaterButtonColor);
                          setState(() => _isLater = !_isLater);
                          setState(() =>
                              _changeNowButtonColor = !_changeNowButtonColor);
                          setState(() => _isNow = !_isNow);
                        },
                        width: 108.w,
                        color: _changeLaterButtonColor
                            ? kRedColor
                            : kGreyWhiteColor,
                      ),
                      CustomizedButton(
                        text: 'Regularly',
                        ontap: () {
                          setState(
                            () => _changeRegularlyButtonColor =
                                !_changeRegularlyButtonColor,
                          );
                        },
                        width: 108.w,
                        color: _changeRegularlyButtonColor
                            ? kYellowColor
                            : kGreyWhiteColor,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  IsLaterContent(isLater: _isLater),
                  IsNowContent(isNow: _isNow),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class IsNowContent extends StatelessWidget {
  const IsNowContent({
    Key? key,
    required bool isNow,
  })  : _isNow = isNow,
        super(key: key);

  final bool _isNow;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Visibility(
          visible: _isNow,
          child: CustomizedButton(
            text: 'Send Message',
            ontap: () {},
            width: 340.w,
            color: kDarkBlue,
          ),
        ),
      ],
    );
  }
}

class IsLaterContent extends StatelessWidget {
  const IsLaterContent({
    Key? key,
    required bool isLater,
  })  : _isLater = isLater,
        super(key: key);

  final bool _isLater;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Visibility(
          visible: _isLater,
          child: DateTimePickerContainer(
            width: 300.w,
          ),
        ),
        Visibility(
          visible: _isLater,
          child: SizedBox(
            height: 22.h,
          ),
        ),
        Visibility(
          visible: _isLater,
          child: CustomizedButton(
            text: 'Schedule Message',
            ontap: () {},
            width: 340.w,
            color: kRedColor,
          ),
        ),
      ],
    );
  }
}
