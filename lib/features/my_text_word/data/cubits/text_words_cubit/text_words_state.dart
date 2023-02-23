part of 'text_words_cubit.dart';

@immutable
abstract class TextWordsState {}

class TextWordsInitial extends TextWordsState {}

class TextWordsLoading extends TextWordsState {}

class TextWordsSucces extends TextWordsState {
  final List<TextWordDataModel> textWordsList;
  TextWordsSucces({required this.textWordsList});
}

class TextWordsFailed extends TextWordsState {}
