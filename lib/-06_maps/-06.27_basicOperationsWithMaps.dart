void main() {
  final Map<String, int> emptyMap = {};
  final emptyMap1 = <String, int>{};

  final emptySomething = {};
  final mySet = <String>{};

  final caloriesInFruit = {
    'apple': 200,
    'pineapple': 150,
    'watermelon': 650,
  };

  final test = {1: 'one', 2: 'two'};

  print(caloriesInFruit);
  print(test);

  final caloriesInFruit1 = {
    'apple': [200, 650],
    'pineapple': 150,
  };
  print(caloriesInFruit1);

  // accessing Key-Value Pairs
  final numberCaloriesInApple = caloriesInFruit['apple'];
  print(numberCaloriesInApple);
  print(numberCaloriesInApple?.isEven);

  //adding elements to a Map
  caloriesInFruit['pear'] = 50;
  print(caloriesInFruit);

  //updating an element
  caloriesInFruit['pear'] = 100;
  print(caloriesInFruit);

  //removing element from a Map
  caloriesInFruit.remove('pear');
  print(caloriesInFruit);

  //accessing properties
  print(caloriesInFruit.isEmpty);
  print(caloriesInFruit.isNotEmpty);
  print(caloriesInFruit.length);

  print(caloriesInFruit.keys);
  print(caloriesInFruit.values);

  //checking for keys and value
  print(caloriesInFruit.containsKey('apple'));
  print(caloriesInFruit.containsValue(200));

  //looping over elements of a Map
  // for (var calories in caloriesInFruit) {
  //   print(caloriesInFruit[calories]);
  // }

  //forEach
  for(var calories in caloriesInFruit.keys) {
    print(caloriesInFruit[calories]);
  }

  for(final entry in caloriesInFruit.entries) {
    print('${entry.key} -> ${entry.value}');
  }



}
