void main() {
  num someNumber = 5;
  final someInt = someNumber as int;
  print(someInt.isEven);
  final someDouble = someNumber.toDouble();
  print(someDouble);


//String -> int
var myInt = int.parse('12');
print(myInt);

//String -> double
var myDouble = double.parse('12.87');
var myDoublePi = 3.14159;
print(myDouble);

//int -> String
String s1 = 10.toString();
String s2 = myInt.toString();
print(s1);
print(s2);

//double -> String
String d1 = 10.25.toString();
String d2 = myDouble.toString();
String pi = myDoublePi.toStringAsFixed(2);
print(d1);
print(d2);
print(pi);
}

