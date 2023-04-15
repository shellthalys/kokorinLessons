void main() {
  final Map<String, dynamic> car = {
  'model': 'S',
  'manufacturer': 'Tesla'
  };
  print(car['manufacturer']);


  // for(final modelView in car.entries) {
  //  print('${modelView.key} -> ${modelView.value}');
  // }
}