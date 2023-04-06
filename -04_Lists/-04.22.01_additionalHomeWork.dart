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

  Map<String, dynamic> user1 = {
    "name": "Denis",
    "age": 16
  };

  Map<String, dynamic> user2 = {
    "name": "Dmytro",
    "age": 18
  };

  void main() {
    final List<String> names = ["Petro", "Paraska"];

    final List<Map<String, dynamic>> list = [user1, user2];

    final List<String> mapedList = list.map((e) {
      return e['name'].toString();
    }).toList();

    mapedList.add('Ivan');

    mapedList.addAll(names);

    mapedList.remove('Ivan');

    final reducedList = mapedList.reduce((v, e) => v + e);

    final foldList = [1,2,3,4,5];

    final sum = foldList.fold(10, (previous, current) => previous + current);

    final sortedList = mapedList.where((e) {
      return e.toLowerCase().contains("d"); //if true
    }).toList();

    final singleElement = mapedList.singleWhere((e) => e == "Vasya", orElse: () => "Unknown");

    final every = mapedList.every((e) => e == "Denis");

    final singlePosition = mapedList.indexOf('Ivan');



    print(mapedList.first);
    print(mapedList.last);
    print(mapedList.length);
    print(mapedList.isEmpty);
    print(mapedList.isNotEmpty);

    final string = mapedList.join(":");
    print(string);

    final genereatedList = List.generate(10, (index) => "User $index");
    print(genereatedList);
  }
}