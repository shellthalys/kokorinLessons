void carClass() {
  Car car = Car('BMW', 27, 4);
  car.move();
  print(car.wheels);
}

class Car {
  String? carName;
  double? percentWay;
  final int? wheels;

  Car(String carName, double percentWay, int wheel) : wheels = wheel + 2 {
    this.carName = carName;
    this.percentWay = percentWay;
  }

  void move() {
    print('The $carName has started. Percent way: $percentWay');
  }
}