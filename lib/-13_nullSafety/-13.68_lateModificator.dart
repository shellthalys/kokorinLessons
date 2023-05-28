late int global;

void vehicleClass() {
  // var pizza = Pizza(1, 'Spring', 10);
  late var pizza = Pizza().printPizza();
  // print(pizza.printPizza());
  print(pizza);

  global = 1;
  print(global);

}

class Pizza {
  late int id;
  late String name;
  late double price;

  // Pizza(this.id, this.name, this.price);
  Pizza() {
  id = 1;
  name = 'Spring';
  price = 10;
}

  String printPizza() {
    print('Cooking pizza ...');
    return 'Pizza ($id): $name, price: $price';
  }
}