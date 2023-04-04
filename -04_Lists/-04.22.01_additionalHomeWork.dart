void main() {
  // map: это метод, который позволяет применять функцию к каждому элементу
  // коллекции и создавать новую коллекцию на основе результата.
  List<int> numbers = [1, 2, 3];
  List<int> squares = numbers.map((numbers) => numbers * numbers).toList();
  print(squares);

  //forEach: это метод, который позволяет выполнить функцию для каждого
  // элемента коллекции. Он не возвращает новую коллекцию.
  List<String> names = ['Alice', 'Bob', 'Charlie'];
  names.forEach((name) => print('Hello, $name!'));

  //join: это метод, который объединяет элементы коллекции в строку,
  // используя указанный разделитель.
  List<String> words = ['hello', 'word'];
  String greeting = words.join(' ');
  print(greeting);

  //fold и reduce: это методы, которые выполняют указанную операцию
  // на элементах коллекции и возвращают результат. Разница между ними
  // заключается в том, что fold принимает начальное значение для аккумулятора,
  // а reduce использует первый элемент коллекции в качестве начального значения.
  List<int> numbers = [1, 2, 3];
  int sum1 = numbers.fold(0, (acc, number) => acc + number);
  int sum2 = numbers.reduce((acc, number) => acc + number);
  print(sum1);


}