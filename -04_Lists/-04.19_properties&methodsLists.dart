//Create List
void main() {
  const fruits = const['apple', 'pineapple', 'watermelon'];

  for (int i = 0; i < fruits.length; i++) {
    final fruit = fruits[i];
    print('I like $fruit');
  }
    for(final fruit in fruits) {
      print('I like $fruit');
    }


// print(fruits.first);
// print(fruits.last);
// // or:
// print(fruits[0]);
// print(fruits[fruits.length - 1]);
//
// print(fruits.isEmpty);
// print(fruits.isNotEmpty);
}

