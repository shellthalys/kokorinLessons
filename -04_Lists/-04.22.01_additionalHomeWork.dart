void main() {
  // map: это метод, который позволяет применять функцию к каждому элементу
  // коллекции и создавать новую коллекцию на основе результата.
  // List<int> numbers = [1, 2, 3];
  // List<int> squares = numbers.map((number) => number * number).toList();
  // print(squares);
  // List<String> list1 = numbers.map((number) {
  //   print(number);
  //   return 'name $number';//.toString();
  // }).toList();
  // print(list1);
  // List<String> listVegitables = ['tomato', 'carrot'];
  // List<int> priceList = listVegitables.map((vegitable) =>
  // vegitable == 'tomato' ? 2 : 4).toList();
  // print(priceList);

  // forEach: это метод, который позволяет выполнить функцию для каждого
  // элемента коллекции. Он не возвращает новую коллекцию.
  List<String> names = ['Alice', 'Bob', 'Charlie'];
  names.forEach((name) => print('Hello, $name!'));

  //join: это метод, который объединяет элементы коллекции в строку,
  // используя указанный разделитель.
  // List<String> words = ['hello', 'word'];
  // String greeting = words.join(' ');
  // print(greeting);
  //
  // //fold и reduce: это методы, которые выполняют указанную операцию
  // // на элементах коллекции и возвращают результат. Разница между ними
  // // заключается в том, что fold принимает начальное значение для аккумулятора,
  // // а reduce использует первый элемент коллекции в качестве начального значения.
  // List<int> numbers1 = [1, 2, 3];
  // int sum1 = numbers1.fold(2, (acc, number) => acc + number);
  // int sum2 = numbers1.reduce((acc, number) => acc + number);
  // print(sum1);
  // print(sum2);


}