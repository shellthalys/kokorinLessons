void carClass() {

  var myCar = Car();
  myCar.carName = 'Mercedes';
  myCar.color = 'black';
  myCar.open();
  myCar.start();

var myMoto = Moto();
myMoto.type = 'Sportbike';
myMoto.color = 'grey';
myMoto.roll();
myMoto.start();
}

class Vechicle {
  late String color;

  void start() {
    print('Has started');
  }
}

class Car extends Vechicle {
  late String carName;
  
  void open() {
    print('Open doors');
  }
}

class Moto extends Vechicle {
  late String type;

  void roll() {
    print('Rolled fast run');
  }
}
