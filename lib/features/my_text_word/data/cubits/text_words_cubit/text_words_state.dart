part of 'text_words_cubit.dart';

@immutable
abstract class TextWordsState {}

class TextWordsInitial extends TextWordsState {}

class TextWordsLoading extends TextWordsState {}

class TextWordssSucces extends TextWordsState {}

class TextWordsFailed extends TextWordsState {}
