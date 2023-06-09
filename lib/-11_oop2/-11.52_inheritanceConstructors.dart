void carClass() {
  var myCar = Car('Mercedes', 'grey');
  myCar.start();
}

class Vehicle {
  String color;

  Vehicle.fromColor(var this.color) {
    print('Call Vehicle.fromColor: $color Constructor');
  }

  void start() {
    print('Has started');
  }
}

class Car extends Vehicle {
  String carName;

  Car(this.carName, String color) : super.fromColor(color) {
    print('Call of Car. Name: $carName, Color: $color');
  }

  void open() {
    print('Open doors');
  }
}



