void vehicleClass() {
var vh = Vehicle('Alstom', 260);
vh.move();

// var train = Train();
// train.speed = 350;
// train.speedMove();
}

class Car {
  String name;
  
  Car(this.name);
  
  void move() {
    print('The $name has started');
  }
}

  mixin Train {
  late int speed;

  void speedMove() {
    print('The train has move with speed $speed km/h');
  }
}

class Vehicle extends Car with Train {

  Vehicle(name, sp): super(name) {
    speed = sp;
  }
}



