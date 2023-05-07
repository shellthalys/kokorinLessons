void carClass() {
  var myCar = Car();
    myCar.carName = 'Mercedes'; // используется Setter
  print(myCar.carName); // используетсяGetter
  myCar.percentage = 24.5; // вызываем Setter
  print(myCar.percentage); // вызываем Setter
}

class Car {
  String? carName;
  late double _persentWay;

  void set percentage(double per) {
    _persentWay = (per > 100 || per < 0) ? _persentWay = 0 : _persentWay = per;
  }

  double get percentage {
    return _persentWay;
  }

}