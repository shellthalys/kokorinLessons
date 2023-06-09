import 'dart:html';
import 'dart:async';


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

printFileContent() async {
  try {
    String time = await HttpRequest.getString("http://worldtimeapi.org/api/timezone/Europe/Stockholm");
    print(time);

    String fileContent = await downloadFile();
    print('The content of the file is --> $fileContent');

    String time1 = await HttpRequest.getString("http://worldtimeapi.org/api/timezone/Europe/Stockholm");
    print(time1);

  } catch (error) {
    print('Catching error: $error');
  }
}

Future <String> downloadFile() {
  Future <String> result = Future.delayed(Duration(seconds: 5), () {
    return HttpRequest.getString('https://dart.dev/f/dailyNewsDigest.txt');
  });
  return result;
}

