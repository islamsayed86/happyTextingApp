int getColorFromHex(dynamic hexColor) {
  try {
    if (hexColor is String) {
      hexColor = hexColor.toUpperCase().replaceAll('#', '');
      if (hexColor.length == 6) {
        hexColor = 'FF$hexColor';
      }

      if (hexColor.isNotEmpty) {
        return int.parse(hexColor, radix: 16);
      }
    }
    return int.parse('FFFFFFFF', radix: 16);
  } catch (e) {
    return int.parse('FFFFFFFF', radix: 16);
  }
}
