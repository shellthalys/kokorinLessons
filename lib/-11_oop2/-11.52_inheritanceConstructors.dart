void carClass() {
  var myCar = Car('Mercedes', 'grey');
  myCar.start();
}

class Vehicle {
  String color;

  Vehicle.fromColor(var color) {
    this.color = color;
    print('Call Vehicle.fromColor: $color Constructor');
  }

  void start() {
    print('Has started');
  }
}

class Car extends Vehicle {
  String carName;

  Car(String carName, String color) : super.fromColor(color) {
    this.carName = carName;
    print('Call of Car. Name: $carName, Color: $color');
  }

  void open() {
    print('Open doors');
  }
}


