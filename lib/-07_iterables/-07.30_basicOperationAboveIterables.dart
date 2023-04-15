import '-07.30-01_squares.dart';

void main() {
//creating an Iterable
  Iterable<String> myIterable = ['a', 'b', 'c'];

//accessing elements
  final twoElement = myIterable.elementAt(1);
  print(twoElement);

  //finding First and Last elements
  print(myIterable.first);
  print(myIterable.last);

  //getting the length
  print(myIterable.length);

  //1 to 10 000: 1, 4, 9, 16, 25
  Iterable<int> hundredSquare() sync* {
    for(int i = 1; i < 100; i++) {
      yield i * i;
    }
  }
  // final squares = hundredSquare();
  // for(int square in squares) {
  //   print(square);
  // }

  final squares = HundredSquare();
  for(int square in squares) {
    print(square);
  }
}

