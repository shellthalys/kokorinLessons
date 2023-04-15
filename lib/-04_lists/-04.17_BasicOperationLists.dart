//Create List
void main() {
  var fruits = ['apple', 'pineapple', 'watermelon'];
  // print(fruits);
  // fruits = [];
  // print(fruits);
  // fruits = ['orange', 'pear'];
  // print(fruits);

  // List<String> apple = [];
  // var orange =<String>[];

//Accessing
// final secondElement = fruits[1];
// print(secondElement);
final index = fruits.indexOf('apple');
final value = fruits[index];
print('The value at index $index is $value');

//Assigning Values to List Elements
fruits[1] = 'lemon';
print(fruits);

//Adding Elements to the End of a List
fruits.add('avocado');
print(fruits);

//Inserting Elements
fruits.insert(1, 'banana');
print(fruits);

//Remove Elements
fruits.remove('apple');
print(fruits);
fruits.removeAt(1);
print(fruits);

//Sorting Lists
List<num> integers = [22, 83, 0.5, 1, 331, 7, 21, 2];
integers.sort();
print(integers);

final minValue = integers[0];
print(minValue);

num maxValue = integers[integers.length - 1];
int maxIndex = 0;

print(integers.length);
print(maxValue);

  for (int i = 0; i < integers.length; i++) {
    if (integers[i] > maxValue) {
      maxValue = integers[i];
      maxIndex = i;
    }
  }
    print("Максимальное число: $maxValue, Индекс: $maxIndex");

// fruits.sort();
// print(fruits);
}


