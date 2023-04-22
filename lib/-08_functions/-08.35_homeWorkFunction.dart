void main() {
  const String alphabet = 'abcdefghijklmnopqrstuvwxyz';

  List<String> inputWords = ['abc', 'abc abc'];

  final List mapedList = inputWords.asMap().map((index, word) {
    final int sum = word.split('').map((letter) {
      return alphabet.indexOf(letter) + 1;
    }).toList().fold(0, (prev, cur) {
     return prev + cur;
    });
    return MapEntry(index, sum * (index + 1));
  }).values.toList();

  print(mapedList);
}



