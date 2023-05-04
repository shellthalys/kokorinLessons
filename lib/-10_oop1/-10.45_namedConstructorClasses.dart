void carClass() {
  Car myCar1 = Car.named();
  myCar1.start();

  Car myCar2 = Car('Audi', 'red');
  myCar2.start();

}

class Car {
  String carName;
  var color;

  Car.named() {
    carName = 'Volvo';
    color = 'grey';
  }

  Car(this.carName, this.color);

  void start() {
    print('The $color $carName has started.');
  }

  void stop() {
    print('The $carName has stopped now.');
  }

}