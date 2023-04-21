void main() {
  final String alphabet = 'a' 'b' 'c' 'd' 'e' 'f' 'g' 'h' 'i' 'j' 'k'
    'l' 'm' 'n' 'o' 'p' 'q' 'r' 's' 't' 'u' 'v' 'w' 'x' 'y' 'z';
  List<String> inputWords = ['abc', 'abc abc'];

  final List<int> mapedList = inputWords.map((word) {
    int sum = 0;
    for(int i = 0; i < word.length; i++) {
      String wordLetter = word[i];
      if (alphabet.contains(wordLetter)) {
        sum += alphabet.indexOf(wordLetter) + 1;
      }
    }
    return sum * (inputWords.indexOf(word) + 1);
  }).toList();
  
  print(mapedList);

  }




