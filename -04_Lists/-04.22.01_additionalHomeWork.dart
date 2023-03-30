void main() {
  List<int> numbers = [1, 2, 3];
  List<int> squares = numbers.map((numbers) => numbers * numbers).toList();
  print(squares);
}