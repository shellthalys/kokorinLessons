void main() {
  final List<String> users = ['Ivan', 'Petro', 'apple', 'pear', 'watermelon'];
  final Set<String> users1 = {'Ivan', 'Petro', 'apple', 'pear', 'watermelon'};
  final Map<String, List<String>> user2 = {
    'name': ['Ivan', 'Petro', 'apple', 'pear', 'watermelon']
};

  final singleElement = users.singleWhere((e) => e == "Ivan", orElse: () => "Unknown");
  final singleElement1 = users[3];
  for (int i = 0; i < users.length; i++) {
    print(users[i]);
  }

  print(singleElement);
  print(singleElement1);
  print(users1.contains('Ivan'));
  print(user2['name']![0]);
}



// що мені саме головне потрібно щоб ти знав
// в нас є три типа Iterable (перечисляемые) List, Set, Map
// final List<String> users = [“Ivan”, “Petro”];
// final Set<String> users = {“Ivan”, “Petro”};
// final Map<String, String> user = {“name”: “Ivan”};
//
// як витягнути з цих всих кейсів значення Ivan