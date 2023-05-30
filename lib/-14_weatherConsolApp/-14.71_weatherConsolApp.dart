void weatherApp(List<String> arguments) {
  if (arguments.length != 1) {
    print('Syntax error: dart bin/ kokorin.dart <city>');
    return;
  }

  final sityName = arguments.first;
  print(sityName);



}


