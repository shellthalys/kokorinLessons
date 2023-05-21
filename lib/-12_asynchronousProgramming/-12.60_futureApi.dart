import 'dart:html';

void vehicleClass() {
// Future (Future API & async / await)

// Future API

// 1) Синхронная функция — возвращает обычный результат. Пример: (return String,
// return int etc).
// 2) Асинхронная функция — возвращает объект Future (futures). Пример:
//   (return Future <String>, return <int> etc).

// Ссылка на тестовый файл — 'https://dart.dev/f/dailyNewsDigest.txt'
// Ссылка на сервер со временем —

print('The main program: Starts');
printFileContent();
print('The main program: Ends');
}

printFileContent() {
  Future <String> fileContent = downloadFile();
  fileContent.then((resultString) =>   print('The content of the file is --> $resultString')
  ).catchError((error) => print('The file not found'));
}

Future <String> downloadFile() {
  Future <String> result = Future.delayed(Duration(seconds: 5), () {
    return HttpRequest.getString('https://dart.dev/f/dailyNewsDigest.txt');
  });
  return result;
}

