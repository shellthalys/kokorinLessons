void main() {
  sayHello();

  String myName = getName();
  print(myName);

  String myAge = getAge(24);
  print(myAge);
}

// void sayHello() {
//   print('Hello Dart!');
// }
void sayHello() => print('Hello Dart');

// String getName() {
//   return 'Dart';
// }
String getName() => 'Dart';

// String getAge(int age) {
//   return 'Your age $age';
// }
String getAge(int age) => 'Your age $age';
