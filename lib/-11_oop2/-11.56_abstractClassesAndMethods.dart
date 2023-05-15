void vehicleClass() {

  Car car = Car();
  car.move();

  Train train = Train();
  train.move();

}

abstract class Vehicle {
  void move();
}

class Car extends Vehicle {
  void move() {
    print('The car moves on the road');
  }
}

class Train extends Vehicle {
  void move() {
    print("The train move on the rails");
  }
}


