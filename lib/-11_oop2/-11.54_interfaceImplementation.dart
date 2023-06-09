void vehicleClass() {
var vehicle = Vehicle('Siemens', 250);
vehicle.move();
vehicle.speedMove();
}

class Car {
  String name;
  
  Car(this.name);
  
  void move() {
    print('The $name has started');
  }
}

  class Train {
  int speed;

  Train(this.speed);

  void speedMove() {
    print('The train has move with speed $speed km/h');
  }
}

class Vehicle implements Car, Train {
  String name;//реализация свойства main из класса Car
  int speed;// реализация свойства speed из класса Train

  Vehicle(this.name, this.speed);

  void move() {
    print('The $name has started');
  }

  void speedMove() {
    print('with speed $speed km/h');
  }
}



