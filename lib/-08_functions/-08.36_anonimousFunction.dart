void main() {
  // Function addTwoNumbers = (int a, int b) {
  //   var sum = a + b;
  //   print(sum);
  // };
  addTwoNumbers(int a, int b) => print(a + b);


  addTwoNumbers(1, 2);
  
  int result = operationNumbers(5, 7, (a, b) => a * b);
  print(result);
}

int operationNumbers(int a, int b, Function operation) {
  return operation(a, b);
}

// void addNumbers(int a, int b) {
//   var sum = a + b;
  //print(sum);
// }