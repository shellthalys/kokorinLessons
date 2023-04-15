double kineticEnergy(double resultEnergyBody1, double resultEnergyBody2) {
  return resultEnergyBody2 - resultEnergyBody1;
}

double energyBody(double mass, double acceleration) {
  return (mass * (acceleration * acceleration)) / 2;
}

void main() {
  double resultEnergyBody1 = energyBody(50, 20);
  double resultEnergyBody2 = energyBody(120, 35);
  double resultKineticEnergy = kineticEnergy(resultEnergyBody1, resultEnergyBody2);

  print(resultEnergyBody1);
  print(resultEnergyBody2);
  print(resultKineticEnergy);
}