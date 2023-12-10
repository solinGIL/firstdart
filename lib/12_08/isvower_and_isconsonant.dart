class Word {
  String word = '';

  bool isVowel(int i) {
    var letter = word.substring(i, i + 1);
    return 'aeiou'.contains(letter.toLowerCase());
  }

  bool isConsonant(int i) {
    var letter = word.substring(i, i + 1);
    return !'aeiou'.contains(letter.toLowerCase()) && letter.trim().isNotEmpty;
  }
}

main() {
  Word customWord = Word();
  customWord.word = 'Dart';

  int aeiouIndex = 2;

  bool isVowelResult = customWord.isVowel(aeiouIndex);
  bool isConsonantResult = customWord.isConsonant(aeiouIndex);

  print('$aeiouIndex는 모음 입니다.: $isVowelResult');
  print('$aeiouIndex는 자음 입니다.: $isConsonantResult');
}
