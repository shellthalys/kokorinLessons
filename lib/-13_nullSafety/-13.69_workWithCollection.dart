void vehicleClass() {
  Map<String, int> catigories = {'Kitchen' : 1, 'Bedroom' : 2};
  print(catigories['Room']);

  int value1 = catigories['Room'] ?? 3;
  print(value1);

  int value2 = catigories['Room'] ??= 3;
  print(value2);

  int? value3 = catigories['Kitchen'];
  print(value3);

  int? value4 = catigories['Kitchen']!;
  print(value4);


  print(catigories);


//--------------------------//--------------------------
  // List <String?> nullableValues = [null, 'Vienna', null, 'London', 'NY'];
  // List <String>? nullableList;
  // List <String?>? nullableListAndnullableValues = [null, 'String'];
  //
  //
  // print(nullableList?[0]);
  //
  // nullableValues[0] ??= 'Munchen';
  // print(nullableValues);
  //
  // String someString = nullableValues[2] ??= 'Berlin';
  // print(someString);


}