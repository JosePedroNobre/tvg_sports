extension StringExtension on String {
  String capitalizeFirstLetter() {
    if (isEmpty) {
      return this; // Return the input string if it's empty
    } else {
      return this[0].toUpperCase() + substring(1);
    }
  }
}

extension StringSplitExtension on String {
  List<String> splitAndTrim() {
    return split(' ').map((e) => e.trim()).toList();
  }

  String get firstElement {
    return splitAndTrim().isNotEmpty ? splitAndTrim().first : '';
  }

  String get secondElement {
    return splitAndTrim().length > 1 ? splitAndTrim()[1] : '';
  }
}
