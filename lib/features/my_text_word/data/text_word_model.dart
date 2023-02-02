class TextWordModel {
  final String textWord;
  final int contacts;
  final bool isActive;
  TextWordModel({
    required this.textWord,
    required this.contacts,
    required this.isActive,
  });
  factory TextWordModel.fromJson(jsonData) {
    return TextWordModel(
      textWord: jsonData['textWordTitle'],
      contacts: jsonData['contacts'],
      isActive: jsonData['isActive'],
    );
  }
}
