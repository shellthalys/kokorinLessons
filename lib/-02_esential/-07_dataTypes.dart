void main() {

  //bool+
  var a = bool;
  var b = false;

  final String myFio = '''
  Doctor
  Dmitry
  Sheremet\'ev
  ''';
  print(myFio);

  final String myName = 'Martin';
  final String mySurname = 'Jenewein';
  String personInfo = 'I\'m ${myName.toUpperCase()} and my surname ${mySurname}';
  print(personInfo);


  //Rune UTF - 32
Runes hello = Runes('Hello, Dart!');
print(hello);
//Rune \ uXXX
var input = Runes('\u2665, \u{1f600}');
print(String.fromCharCodes(input));


//Symbol
var mySymbol = #myApi;
print(mySymbol);
}

//Null
int? age = null;