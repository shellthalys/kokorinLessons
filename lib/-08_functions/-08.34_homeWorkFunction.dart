void main() {
  const String alphabet = 'abcdefghijklmnopqrstuvwxyz';

  List<String> inputWords = ['abc', 'abc abc'];

  // List<String> inputWords = ['abc'];

  final List mapedList = inputWords.map((word) {
      print(word);
    return word.split('').map((letter) {
      print(letter);
      return alphabet.indexOf(letter) + 1;
    }).toList().fold(0, (prev, cur) => prev + cur);
  }).toList();

  print(mapedList);
}



