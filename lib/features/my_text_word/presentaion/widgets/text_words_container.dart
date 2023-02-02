// ignore_for_file: sized_box_for_whitespace, avoid_function_literals_in_foreach_calls, unused_field

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:happy_texting/features/my_text_word/presentaion/widgets/text_word_item.dart';

import '../../data/text_word_model.dart';

class TextWordItemContainer extends StatefulWidget {
  const TextWordItemContainer({
    super.key,
  });

  @override
  State<TextWordItemContainer> createState() => _TextWordItemContainerState();
}

class _TextWordItemContainerState extends State<TextWordItemContainer> {
  List _items = [];
  List<TextWordModel> textWordsList = [];
// Fetch content from the json file
  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('lib/features/my_text_word/data/data.json');
    final data = await json.decode(response) as List;
    data.forEach((element) {
      var textWord = TextWordModel.fromJson(element);
      textWordsList.add(textWord);
    });
    setState(() {
      _items = data;
    });
  }

  @override
  void initState() {
    readJson();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 334.h,
      child: ListView.separated(
        itemCount: textWordsList.length,
        itemBuilder: (BuildContext context, int index) {
          return TextWordItem(
            textWordModel: textWordsList[index],
            // textWordTitle: _items[index]['textWordTitle'],
            // contacts: _items[index]['contacts'],
            // isActive: _items[index]['isActive'],
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),

        // children: [
        //   ...List<Widget>.generate(
        //     _items.length,
        //     (index) => TextWordItem(
        //       textWordTitle: _items[index]['textWordTitle'],
        //       contacts: _items[index]['contacts'],
        //       isActive: _items[index]['isActive'],
        //     ),
        //   ),
        // ],
      ),
    );
  }
}
