// 1. Определите средний расход топлива вашего автомобиля на 100 км.
getAverageFuelConsumption100Km({
  required int fuelQuantityAllDistance,
  required int totalTripDistance
}) {
  return (fuelQuantityAllDistance / totalTripDistance) * 100;
}
// 2. Рассчитайте количество литров топлива, необходимых для поездки,
getTotalFuelConsumption({
  required int totalTripDistance,
  required double averageFuelConsumption100Km
}) {
  return (totalTripDistance * averageFuelConsumption100Km) / 100;
}
// 3. Умножьте количество литров топлива на стоимость топлива на литр.
getTotalCostFuel({
  required double totalFuelConsumption,
  required double costFuelLitre
}) {
  return totalFuelConsumption * costFuelLitre;
}
// 4. Добавьте к этому расходы на дорогу и парковку, если таковые имеются.
getCostJourney({
  required fuelQuantityAllDistance,
  required totalTripDistance,
  required costFuelLitre
}) {
  final resultAverageFuelConsumption100Km = getAverageFuelConsumption100Km(
      fuelQuantityAllDistance: fuelQuantityAllDistance,
      totalTripDistance: totalTripDistance
  );
  print(resultAverageFuelConsumption100Km);
  final resultTotalFuelConsumption = getTotalFuelConsumption(
      totalTripDistance: totalTripDistance,
      averageFuelConsumption100Km: resultAverageFuelConsumption100Km
  );
  print(resultTotalFuelConsumption);
  final resultTotalCostFuel = getTotalCostFuel(
      totalFuelConsumption: resultTotalFuelConsumption,
      costFuelLitre: costFuelLitre
  );
  return (resultTotalCostFuel * .1) + resultTotalCostFuel;
}
void main() {
  double resultCostJourney = getCostJourney(
      fuelQuantityAllDistance: 100,
      totalTripDistance: 2000,
      costFuelLitre: 1.68
  );
  print(resultCostJourney);
}