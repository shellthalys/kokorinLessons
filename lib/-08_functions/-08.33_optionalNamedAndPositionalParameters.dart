void main() {
  // getPerson('Dart', 11);
  // getPerson('Dart');
  
  getPerson(name: 'Dart', age: 33);
  getPerson(age: 33, name: 'Dart');
  getPerson(age: 33, name: '');
  getPerson(name: 'Dart', age: 5);
}

void getPerson({required String name,  required int age}) {
  print('Name: $name, Age: $age');
}