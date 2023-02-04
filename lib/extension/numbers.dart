extension Numbers on String {
  String get toArabicNumbers {
    Map numbers = {
      '0': '\u0660',
      '1': '\u0661',
      '2': '\u0662',
      '3': '\u0663',
      '4': '\u0664',
      '5': '\u0665',
      '6': '\u0666',
      '7': '\u0667',
      '8': '\u0668',
      '9': '\u0669',
    };
    String number = this;
    numbers.forEach((key, value) => number = number.replaceAll(key, value));
    return number;
  }

  String get toEnglishNumbers {
    Map numbers = {
      '\u0660': '0',
      '\u0661': '1',
      '\u0662': '2',
      '\u0663': '3',
      '\u0664': '4',
      '\u0665': '5',
      '\u0666': '6',
      '\u0667': '7',
      '\u0668': '8',
      '\u0669': '9',
    };
    String number = this;
    numbers.forEach((key, value) => number = number.replaceAll(key, value));
    return number;
  }
}
