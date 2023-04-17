//получаем расход топлива за 1 км
double _getFuelConsumption1Km(
  double fuelQuantityAllDistance,
  int distance
) {
  return (fuelQuantityAllDistance / distance);
}
//получаем стоимость топлива за 1 км
double _getCostFuelConsumption1Km({
  required double fuelConsumption1Km,
  required double costFuelLitre
}) {
  return fuelConsumption1Km * costFuelLitre;
}
//получаем стоимость всей поездки
double getCostJourney({
  required double fuelQuantityAllDistance,
  required int distance,
  required double fuelConsumption1Km,
  required double costFuelLitre,
}) {
  print(fuelQuantityAllDistance);
  print(distance);
  //получили результат расхода топлива за 1 км
  final resultFuelConsumption1Km = _getFuelConsumption1Km(
      fuelQuantityAllDistance,
      distance
  );
  // получили стоимость топлива за 1 км
  final resultCostFuelConsumption1Km = _getCostFuelConsumption1Km(
      fuelConsumption1Km: fuelConsumption1Km,
      costFuelLitre: costFuelLitre
  );
  return resultFuelConsumption1Km * resultCostFuelConsumption1Km;
}
void main() {
  double resultCostJourney = getCostJourney(
      fuelQuantityAllDistance: 40.0,
      distance: 550,
      costFuelLitre: 1.68,
      fuelConsumption1Km: 1580.00
  );

  print(resultCostJourney.toStringAsFixed(2));
}

// 1. totalTripDistance Определите общую длину поездки в километрах.
// 2. averageFuelConsumption100Km Определите средний расход топлива вашего автомобиля на 100 км.
// Средний расход топлива на 100 км = (количество израсходованного топлива
// fuelQuantityAllDistance / totalTripDistance) * 100
// 3. Определите стоимость топлива на литр в вашем регионе costFuelLitre:.
// 4. Рассчитайте количество литров топлива, необходимых для поездки,
// умножив общую длину поездки на средний расход топлива и разделив на 100.
// totalFuelConsumption = (totalTripDistance * averageFuelConsumption100Km) / 100
// 5. Умножьте количество литров топлива на стоимость топлива на литр.
// totalCostFuel = totalFuelConsumption * costFuelLitre
// 6. Добавьте к этому расходы на дорогу и парковку, если таковые имеются.
// Это может включать в себя плату за проезд по платным дорогам или мостам, парковку на стоянке или в городе.
//getCostJourney = totalCostFuel * 10%