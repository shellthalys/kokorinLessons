import 'dart:io';

import 'package:kokorin/weather.dart';
import 'package:kokorin/weather_api_client.dart';

void weatherApp(List<String> arguments) async {
  if (arguments.length != 1) {
    print('Syntax error: dart bin/ kokorin.dart <city>');
    return;
  }

  final cityName = arguments.first;
  // print(cityName);
final weatherApiClient = WeatherApiClient();

//Получение текущей погоды
  try {
    final currentWeather = await weatherApiClient.getCurrentWeather(cityName);
    print('Current weather for $cityName');
    print(currentWeather);
    print('------------------------\n');
  } on WeatherApiException catch (error) {
    print('Error: ${error.message}');
  } on SocketException catch (_) {
    print('Could not fetch current weather data. Check your enternet connection');
  } catch(e) {
    print(e);
  }

  //Получение погоды на неделю
  try {
    final weeklyForecast = await weatherApiClient.getWeeklyForecast(cityName);
    print('Weekly forecast for $cityName');
    weeklyForecast.forEach((forecast) {
      print(forecast);
      print('----------------------------\n')
    });

  } on WeatherApiException catch (error) {
    print('Error: ${error.message}');
  } on SocketException catch (_) {
    print('Could not fetch current forecast data. Check your enternet connection');
  } catch(e) {
    print(e);
  }
}


