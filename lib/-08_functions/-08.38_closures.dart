void main() {
  Function add = addNumbers(4);
  int result = add(6);
  print(result);

  int result2 = addNumbers(5)(6);
  print(result2);

}

Function addNumbers(int x) {  //Внешняя функция
  // int sum(int y) {    // Вложенная функция
  //   return x + y;
  // }
  // return sum;
  return (int y) => x + y;
}
