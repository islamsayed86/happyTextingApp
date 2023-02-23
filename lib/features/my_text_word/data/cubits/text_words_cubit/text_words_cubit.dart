import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../models/text_words_model.dart';
import '../../sevices/Text_word_sevices.dart';
part 'text_words_state.dart';

class TextWordsCubit extends Cubit<TextWordsState> {
  TextWordsCubit() : super(TextWordsInitial());
  TextWordsModelData? textWords;

  Future getTexWords() async {
    emit(TextWordsLoading());
    try {
      TextWordService service = const TextWordService();
      TextWordsModelData textWord = await service.getTextWord();

      textWords = textWord;

      emit(
        TextWordsSucces(
          textWordsList: textWord.data?.textWordData ?? <TextWordDataModel>[],
        ),
      );
    } on Exception {
      emit(TextWordsFailed());
    }
  }
}
