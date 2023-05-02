// рассмотрены несколько подходов в решении задачи

void sumPositive() {
  List<int> inputWords1 = [5, -10, 9, -1];
  List<int> inputWords2 = [-1, -2, -3];
  List<int> inputWords3 = [1, 2, -5];
  List<int> inputWords4 = [1, 2];


  // final int sumLenght1 = inputWords1.where((int num) {
  //   return num > 0;
  // }).fold(0, (prev, curr) {
  //   // print('Попереднє значення $prev та поточне $curr');
  //   return prev + curr;
  // });

  // final int sumLenght2 = inputWords2.fold(0, (prev, curr) {
  //   if (curr > 0) {
  //     print('Попереднє значення $prev та поточне $curr');
  //     return prev + curr;
  //   } else {
  //     return 0;
  //   }
  // });
  // final int sumLenght3 = inputWords3.fold(0, (prev, curr) {
  //   if(curr.isNegative) {
  //     return prev;
  //   } else {
  //     return prev + curr;
  //   }
  // });
  final int sumLenght4 = inputWords4.fold(0, (prev, curr) => !curr.isNegative ? prev + curr : prev);

  // print(sumLenght1);
  // print(sumLenght2);
  // print(sumLenght3);
  print(sumLenght4);

}