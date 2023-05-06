void carClass() {
  Car myCar1 = Car.named();
  myCar1.start();

  Car myCar2 = Car('Audi', 'red');
  myCar2.start();

  Car myCar3 = Car.fromColor('black');
  myCar3.stop();

}

class Car {
  String? carName;
  String? color;

  Car.named() : this('Ferrari', 'red');

  Car.fromColor(var color): this('Lamborgini', color);

  Car(this.carName, this.color);

  void start() {
    print('The $color $carName has started.');
  }

  void stop() {
    print('The $color $carName has stopped now.');
  }

}