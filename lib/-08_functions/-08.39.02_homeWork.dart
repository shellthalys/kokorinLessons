void sumPositive() {
  List<int> inputWords1 = [1, -10, 9, -1];
  List<int> inputWords2 = [-1, -2, -3];
  List<int> inputWords3 = [];
  List<int> inputWords4 = [1, 2];


  final int sumLenght1 = inputWords1.fold(0, (prev, curr) => prev + curr);
  final int sumLenght2 = inputWords2.fold(0, (prev, curr) => prev + curr);
  final int sumLenght3 = inputWords3.fold(0, (prev, curr) => prev + curr);
  final int sumLenght4 = inputWords4.fold(0, (prev, curr) => prev + curr);


  print(sumLenght1);
  print(sumLenght2);
  print(sumLenght3);
  print(sumLenght4);

}