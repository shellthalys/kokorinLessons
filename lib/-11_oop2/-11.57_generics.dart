void vehicleClass() {

Car car = Car('12', 'Volvo');
print(car.id.runtimeType);
car.move('120');
print('');

Car car2 = Car(12, 'Mercedes');
print(car2.id.runtimeType);
car2.move(130);
// int id = car.id;
// print(id);
}

class Car <T> {
  T id;
  String carName;

  Car(this.id, this.carName);
  
  void move(T speed) {
    print('The $carName. ID number: $id. Speed car: $speed');
  }
}


