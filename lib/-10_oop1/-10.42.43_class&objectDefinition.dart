void carClass() {
  Car myCar = Car();
  myCar.carName = 'Mercedes';
  myCar.color = 'Black';
  myCar.start();

  Car myCar2 = Car();
  myCar2.carName = 'Toyota';
  myCar2.color = 'White';
  myCar2.start();
  myCar2.stop();

}

class Car {
  var carName;
  var color;

  void start() {
    print('The $color $carName has started.');
  }

  void stop() {
    print('The $carName has stopped now.');
  }

}