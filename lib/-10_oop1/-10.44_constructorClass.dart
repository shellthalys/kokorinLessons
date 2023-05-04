void carClass() {
  Car myCar = Car('Audi');
  myCar.start();

}

class Car {
  String carName;
  var color;

  Car(this.carName, [this.color = 'red']);

  void start() {
    print('The $color $carName has started.');
  }

  void stop() {
    print('The $carName has stopped now.');
  }

}