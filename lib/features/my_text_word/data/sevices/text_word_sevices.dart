// ignore_for_file: file_names, missing_required_param

// import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:happy_texting/features/my_text_word/data/helper/api.dart';
import 'package:happy_texting/features/my_text_word/data/models/text_words_model.dart';

import '../helper/constants.dart';

class TextWordService {
  const TextWordService();

  Future<TextWordsModelData> getTextWord() async {
    var data = await Api().get(url: '$kBaseUrl/textwords', headers: {
      'Authorization': kToken,
    });
    // log(data.toString());
    TextWordsModelData textWords = TextWordsModelData.fromJson(data);
    // print(textWords.data);
    return textWords;
  }

  Future<TextWordsModelData> addTextWord({
    @required String? title,
    @required String? description,
    @required num? monthlyMessageLimit,
    @required num? useCaseId,
  }) async {
    Map<String, dynamic> data = await Api().post(
        url: '$kBaseUrl/textword/create',
        body: {
          'title': title,
          'description': description,
          'monthly_message_limit': monthlyMessageLimit,
          'use_case_id': useCaseId,
        },
        token: kToken);
    return TextWordsModelData.fromJson(data);
  }
}
