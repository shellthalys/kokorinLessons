void vehicleClass() {
print(someValue(25));
print(someValue(null));

int x;
if (25 > 1) {
  x = 1;
  }else {
  x = - 1;
}
print(x);
}

int someValue(int? value) {
  if (value == null) {
    return valueIsNotDefined();
  }
  return value;
}

Never valueIsNotDefined() {
  throw ArgumentError('Value is not defined');
}
