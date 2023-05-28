void vehicleClass() {
  var pizza = Pizza(name: 'Spring');
    print(pizza.printPizza());
}

class Pizza {
  late final int id;
  final String name;
  final double? price;

  Pizza({
    // this.id,
    required this.name,
    this.price = 10,
  }) : id = 1;

  String printPizza() {
    print('Cooking pizza ...');
    return 'Pizza ($id): $name, price: ${price ?? 'No price'}';
  }
}