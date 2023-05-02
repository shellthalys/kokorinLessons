import 'package:kokorin/-08_functions/-08.31_whatIsFunction.dart';

void main() {
Function person = getName;
person();
person = getLastName;
person();

getPerson(getName);
getPerson(getLastName);

Function myPerson = getNameOrLastName('Dart');
myPerson();

}

getNameOrLastName(String nameOrLastName) {
  if(nameOrLastName == "Dart") {
    return getName;
  } else {
    return getLastName;
  }
}

void getPerson(Function myFunction) {
  myFunction();
}

void getName() {
  print('Dart');
}

void getLastName() {
  print('Flutter');
}