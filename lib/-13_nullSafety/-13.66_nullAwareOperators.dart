void vehicleClass() {
print(someValue(25));
print(someValue(null));

int? age;
age ??= 20;
print(age);

print(absoluteValue(-25));
print(absoluteValue(null));

num value = 10;
num otherValue = value as int;
print(otherValue);
}


int? absoluteValue(int? value) {
  return value?.abs() ?? 0;
}


int someValue(int? value) {
  //return value == null ? 0 : value;
  //or
  return value ?? 0;


}
