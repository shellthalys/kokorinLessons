void main() {
 // final double weightCar = getStringWeightCar(1850.50);
 // final int weightPlane = getStringWeightPlane(20000);

  try {
    final String weightCar = getStringWeightCar(1850.50);
  } catch (e) {
    print("У вас неправильные данные для преобразования");
  }
try {
    final String weightPlane = getStringWeightPlane(20000);
  } catch (e) {
    print("У вас неправильные данные для преобразования");
  }
}
String getStringWeightCar(double argumentCar) {
  print(argumentCar);
  return argumentCar.toString();
}
String getStringWeightPlane(int argumentPlane) {
  print(argumentPlane);
  return argumentPlane.toString();
}