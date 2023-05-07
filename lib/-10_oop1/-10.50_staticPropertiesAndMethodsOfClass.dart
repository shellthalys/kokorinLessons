import 'dart:math';

void carClass() {
  Car car = Car('BMW', 'red');
  car.checkMove();
  Car.setWeels(3);
}

class Car {
  String carName;
  String color;
  static int wheels = 4;

  Car(this.carName, this.color) {
    var t = time(500, 80);
    print('Time: $t');
  }
  

  static double time(int distance, double speed) => distance / speed;
  static void setWeels(int value) {
    if(value == 4) {
      wheels = value;
    } else {
      print('Please, correct value (4)');
    }
  }


  void checkMove() {
    if(wheels < 4) {
      print('The $carName is brocken');
  } else {
      print('The $color $carName has started');
    }
  }
}