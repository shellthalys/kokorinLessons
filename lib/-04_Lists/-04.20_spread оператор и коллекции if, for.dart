//Create List
void main() {
 // spread operator (...)
  // collection if
  // collection for

  const orangeAllergy = true;

  const appleAndPineapple = ['apple', 'pineapple'];
  const orangeAndPearl = [if(!orangeAllergy)'orange', 'pearl']; // убираем orange из списка
  final fruits = [
    'watermelon',
    ...appleAndPineapple,
    ...orangeAndPearl
  ];

  var bigFruits = ['BANANA', for(final fruit in fruits) fruit.toUpperCase()];

  // fruits.addAll(appleAndPineapple);
  // fruits.addAll(orangeAndPearl);
  print(fruits);
  print(bigFruits);
}

