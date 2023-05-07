void carClass() {
  var myCar = Car(name: 'Audi', per: 27.8);
      myCar.infoCar();

}

class Car {
  String carName;
  double persentWay;

  Car({required String name, required double per}): carName = name, persentWay =  per.roundToDouble() {
    print('Other work');
  }

  void infoCar() {
    print('The $carName drove $persentWay of the way');
  }



}