// ignore_for_file: sized_box_for_whitespace, avoid_function_literals_in_foreach_calls, unused_field

import 'dart:convert';
// import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:happy_texting/features/my_text_word/data/cubits/text_words_cubit/text_words_cubit.dart';
import 'package:happy_texting/features/my_text_word/data/models/text_words_model.dart';
// import 'package:happy_texting/features/my_text_word/data/sevices/text_word_sevices.dart';
import 'package:happy_texting/features/my_text_word/presentaion/widgets/text_word_item.dart';

import '../../data/models/text_word_model.dart';

class TextWordItemContainer extends StatefulWidget {
  const TextWordItemContainer({
    super.key,
  });

  @override
  State<TextWordItemContainer> createState() => _TextWordItemContainerState();
}

class _TextWordItemContainerState extends State<TextWordItemContainer> {
  TextWordsModelData? textWordsModel;
  // Future getTexWords() async {
  //   TextWordService service = const TextWordService();
  //   TextWordsModelData textWord = await service.getTextWord();
  //   setState(() {
  //     // textWordsModel = textWord;
  //   });
  // }

  List _items = [];
  List<TextWordModel> textWordsList = [];

// Fetch content from the json file
  Future<void> readJson() async {
    final String response = await rootBundle
        .loadString('lib/features/my_text_word/data/json_data/data.json');
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
    Future.delayed(Duration.zero).then((value) async =>
        textWordsModel = await TextWordsCubit.get(context).getTexWords());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TextWordsCubit, TextWordsState>(
      listener: (context, state) {
        if (state is TextWordsLoading) {
          // var textWordsModel =
          //     BlocProvider.of<TextWordsCubit>(context).getTexWords();
        }
      },
      builder: (context, state) {
        // log(state.toString());
        if (state is TextWordsLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is TextWordsSucces) {
          return SizedBox(
            height: 334.h,
            child: ListView.separated(
              itemCount: state.textWordsList.length,
              itemBuilder: (BuildContext context, int index) {
                return TextWordItem(
                  // textWordModel: textWordsList[index],
                  textWord: state.textWordsList[index],

                  /* textWordTitle: _items[index]['textWordTitle'],
                 contacts: _items[index]['contacts'],
                 isActive: _items[index]['isActive'],*/
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(),

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
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
