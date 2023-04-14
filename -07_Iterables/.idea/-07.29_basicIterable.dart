void main() {
  final myList = ['a', 'b', 'c'];
  print(myList);

  for(final item in myList) {
    print(item);
  }

  final reversedList = myList.reversed;
  print(reversedList);
  print(reversedList.toList());
}
