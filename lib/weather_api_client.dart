import 'dart:convert';

import 'package:kokorin/config.dart';
import 'package:kokorin/weather.dart';
import 'package:http/http.dart' as http;

class WeatherApiClient {
  Future<Weather> getCurrentWeather(String cityName) async {
    final url = '${Config().baseUrl}/${Config().currentUrl}?key = ${Config().apiKey}&q = $cityName';
    print(url);

    final response = http.get(Uri.parse(url));

    if(response.statusCode =! 200) {
      print('Request failed with status: ${response.statusCode}');
      throw WeatherApiException('Error getting weather $cityName');
    }

    final Map<String,dynamic> jsonResponse = Map.castFrom(jsonDecode(response.body));

    if(jsonResponse.isEmpty) {
      throw WeatherApiException('Weather data for $cityName not found');
    }
    return Weather.fromJson(jsonResponse);
  }

  Future <List<Forecast>> getWeeklyForecast(String cityName) async {
    final url = '${Config().baseUrl}/${Config().forecastUrl}?key = ${Config().apiKey}&q = $cityName&days7';
    print(url);

    final response = http.get(Uri.parse(url));

    if(response.statusCode =! 200) {
      print('Request failed with status: ${response.statusCode}');
      throw WeatherApiException('Error getting forecast $cityName');
    }

    final jsonResponse = jsonDecode(response.body);
    final forecastList = List<Map<String, dynamic>>.from(jsonResponse['forecast']['forecast day']);

    if(jsonResponse.isEmpty) {
      throw WeatherApiException('Forecast data for $cityName not found');
    }
    return forecastList.map((forecastData) => Forecast.fromJson(forecastData)).toList();
  }
}

class WeatherApiException implements Exception {
  final String message;

  const WeatherApiException(this.message);
}