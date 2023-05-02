void sumLenght() {
  List<String> inputWords1 = ['a', 'ab', 'abc'];
  List<String> inputWords2 = ['abcde', 'ab', 'abc'];
  List<String> inputWords3 =  [];

  final int sumLenght1 = inputWords1.fold(0, (prev, curr) => prev + curr.length);
  final int sumLenght2 = inputWords2.fold(0, (prev, curr) => prev + curr.length);
  final int sumLenght3 = inputWords3.fold(0, (prev, curr) => prev + curr.length);

  print(sumLenght1);
  print(sumLenght2);
  print(sumLenght3);

}

// Анонимная функция передается в качестве аргумента в метод fold и используется
// для вычисления суммы длин строк в списке strings. В данном случае, анонимная
// функция использует два параметра prev и curr, которые обозначают предыдущее
// значение (начально установленное равным 0) и текущий элемент списка.
// Функция возвращает сумму длины предыдущего значения и длины текущего элемента.