void main() {
  sayHello();

  String myName = getName();
  print(myName);

  String myAge = getAge(24);
  print(myAge);
}

void sayHello() {
  print('Hello Dart!');
}

String getName() {
  return 'Dart';
}

getAge(int age) {
  return 'Your age $age';
}