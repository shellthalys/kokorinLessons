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

  // Создаются две переменные типа Map<String, dynamic>, user1 и user2, которые хранят информацию о двух пользователях.
  Map<String, dynamic> user1 = {
    "name": "Denis",
    "age": 16
  };

  Map<String, dynamic> user2 = {
    "name": "Dmytro",
    "age": 18
  };

  //В функции main() создается список names из двух строковых значений.
  void main() {
    final List<String> names = ["Petro", "Paraska"];

    //Создается список list, состоящий из двух объектов - пользователей (user1 и user2).
    final List<Map<String, dynamic>> list = [user1, user2];

    //Создается новый список mapedList, в котором хранятся имена пользователей, извлеченные из списка list.
    final List<String> mapedList = list.map((e) {
      return e['name'].toString();
    }).toList();
//В список mapedList добавляется значение 'Ivan', а затем добавляются все значения из списка names.
    mapedList.add('Ivan');

    mapedList.addAll(names);
//Значение 'Ivan' удаляется из списка mapedList.
    mapedList.remove('Ivan');

    //Создается переменная reducedList, в которой хранится результат объединения всех строк списка mapedList.
    final reducedList = mapedList.reduce((v, e) => v + e);

    //Создается новый список foldList, а затем создается переменная sum, в которой хранится сумма всех элементов foldList
    // и начального значения 10.
    final foldList = [1,2,3,4,5];

    final sum = foldList.fold(10, (previous, current) => previous + current);

    //Создается новый отфильтрованный список sortedList, содержащий только те имена из списка mapedList,
    // которые содержат символ "d" (с учетом регистра).
    final sortedList = mapedList.where((e) {
      return e.toLowerCase().contains("d"); //if true
    }).toList();

    //Создается переменная singleElement, содержащая единственный элемент списка mapedList,
    // удовлетворяющий условию (равен "Vasya"), или значение "Unknown", если такого элемента нет.
    final singleElement = mapedList.singleWhere((e) => e == "Vasya", orElse: () => "Unknown");

    //Создается переменная every, которая хранит true, если все элементы списка mapedList равны "Denis", иначе false.
    final every = mapedList.every((e) => e == "Denis");

    //Создается переменная singlePosition, которая хранит индекс первого вхождения значения 'Ivan'
    // в списке mapedList, или -1, если значение не найдено.
    final singlePosition = mapedList.indexOf('Ivan');


//Выводятся на экран первый элемент, последний элемент, длина списка, проверка на пустоту и наличие элементов в списке mapedList.
    print(mapedList.first);
    print(mapedList.last);
    print(mapedList.length);
    print(mapedList.isEmpty);
    print(mapedList.isNotEmpty);

    //Создается переменная string, содержащая значения списка mapedList, объединенные с разделителем ":".
    final string = mapedList.join(":");
    print(string);
//Создается новый список genereatedList, состоящий из 10 строковых значений, каждое из которых содержит индекс элемента,
// добавленный к строке "User".
    final genereatedList = List.generate(10, (index) => "User $index");
    print(genereatedList);
  }
}
//После выполнения кода будет выведено:
//
// первый и последний элементы списка mapedList
// длина списка
// информация о том, пуст ли список и содержит ли он элементы
// строка со значениями списка mapedList, разделенными двоеточием
// список из 10 строк с индексами, сгенерированный с помощью функции List.generate.