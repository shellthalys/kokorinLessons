import 'dart:math';

void main() {
  //creating set
  final Set<int> setOne = {};
  final setTwo = <int>{};
  final setThree = <int>{1, 2, 3, 3};
  print(setThree);
  var setFour = Set.from([1, 'hello', true]);

  //checking the contents
  final fruits = {'apple', 'pineapple', 'watermelon'};
  print(fruits.contains('apple'));
  print(fruits.contains('pear'));

  // adding and removing single elements
final newFruits = <String>{};
  newFruits.add('orange');
  newFruits.add('pear');
  newFruits.add('orange');
  print(newFruits);
  newFruits.remove('pear');
  print(newFruits);
  
  //adding multiple elements
  newFruits.addAll(['apple', 'pear', 'watermelon']);
  print(newFruits);

  //looping over the elements
  for(final fruit in fruits) {
    print('I\'m like $fruit');
  }

  //copying Sets
  final freshFruits = fruits.toSet();
  print(fruits);
  freshFruits.remove('watermelon');
  print(fruits);
  print(freshFruits);

  //other operations
  var newFruits2 = {'pear', ...freshFruits, if (true) ...fruits};
  print(newFruits2);

  final randomGenerator = Random();
  final randomList = <int>[];
  for(int i = 0; i < 10; i++) {
    final randomInt = randomGenerator.nextInt(10) + 1;
    randomList.add(randomInt);
  }
  print(randomList);

  final uniqueValue = <int>{};
  final duplicates = <int>{};
  for(int number in randomList) {
    if(uniqueValue.contains(number)) {
      duplicates.add(number);
    }
    uniqueValue.add(number);
  }
  print(duplicates);

}