void carClass() {
  var myCar = Car('Mercedes', 100, 'Black');
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
  int speed;

  Car(this.carName, this.speed, String color) : super.fromColor(color) {
    print('Call of Car. Name: $carName, Color: $color');
  }

  @override
  set color(String value) {
    if(value == 'Black') {
      throw ArgumentError('Please, set other color');
    }
    super.color = color;
  }

  @override
  void start() {
    print('The $color $carName');
    super.start();
    print('Speed: $speed');
  }
  void open() {
    print('Open doors');
  }
}



