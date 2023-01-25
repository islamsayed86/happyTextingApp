// import 'dart:developer';

// import 'package:dropdown_search/dropdown_search.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:happy_texting/core/constants/colors.dart';
// import 'package:happy_texting/core/constants/styles.dart';
// import 'package:happy_texting/core/widgets/custom_container.dart';

// class TimeWidget extends StatefulWidget {
//   const TimeWidget({super.key});

//   @override
//   State<TimeWidget> createState() => _TimeWidgetState();
// }

// class _TimeWidgetState extends State<TimeWidget> {
//   dynamic selectedHour = 1;
//   List hoursList = List<int>.generate(12, (i) => i + 1);
//   dynamic selectedMinutes = 1;
//   List minutesList = List<int>.generate(59, (i) => i + 1);
//   List amOrpmlist = ['am', 'pm'];
//   dynamic selectedamOrpm = ['am'];
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         SizedBox(
//           width: 80.sp,
//           child: CustomContainer(
//             hight: 48.h,
//             child: Center(
//               child: DropdownButton(
//                 menuMaxHeight: 96.h,
//                 elevation: 0,
//                 iconSize: 20.sp,
//                 value: selectedHour,
//                 items: hoursList
//                     .map(
//                       (item) => DropdownMenuItem(
//                         value: item,
//                         child: Text(
//                           '$item',
//                           style: kText16MediumGrey2,
//                         ),
//                       ),
//                     )
//                     .toList(),
//                 onChanged: ((item) => setState(
//                       () => selectedMinutes = item,
//                     )),
//               ),
//             ),
//           ),
//         ),
//         SizedBox(
//           width: 80.sp,
//           child: CustomContainer(
//             hight: 48.h,
//             child: Center(
//               child: DropdownButton(
//                 menuMaxHeight: 96.h,
//                 elevation: 0,
//                 iconSize: 20.sp,
//                 value: selectedMinutes,
//                 items: minutesList
//                     .map(
//                       (item) => DropdownMenuItem(
//                         value: item,
//                         child: Text(
//                           '$item',
//                           style: kText16MediumGrey2,
//                         ),
//                       ),
//                     )
//                     .toList(),
//                 onChanged: ((item) => setState(
//                       () => selectedMinutes = item,
//                     )),
//               ),
//             ),
//           ),
//         ),
//         // SizedBox(
//         //   width: 80.sp,
//         //   child: DropdownSearch<String>(
//         //     onSaved: (newValue) => print(newValue),
//         //     popupProps: const PopupProps.menu(
//         //       fit: FlexFit.loose
//         //         // showSelectedItems: true,
//         //         // disabledItemFn: (String s) => s.startsWith('I'),
//         //         ),
//         //     items: const ['am', 'pm'],
//         //     onBeforeChange: ((prevItem, nextItem) async {
//         //       selectedamOrpm = nextItem!;
//         //       log('selectedTextWord $selectedamOrpm');
//         //       return true;
//         //     }),
//         //     dropdownDecoratorProps: DropDownDecoratorProps(
//         //       dropdownSearchDecoration: InputDecoration(
//         //           contentPadding: EdgeInsets.fromLTRB(
//         //             16.sp,
//         //             0.sp,
//         //             0.sp,
//         //             0.sp,
//         //           ),
//         //           enabledBorder: const OutlineInputBorder(
//         //             borderSide: BorderSide(
//         //               color: kBorder,
//         //             ),
//         //           ),
//         //           hintText: 'am',
//         //           hintStyle: kText16MediumGrey2,
//         //           focusColor: Colors.white),
//         //     ),
//         //     onChanged: print,
//         //   ),
//         // ),
//       ],
//     );
//   }
// }
