class Weather {
  final String lastUpdated;
  final String cityName;
  final double tempC;
  final double tempLikeC;
  final String conditions;

  Weather({
    required this.lastUpdated,
    required this.cityName,
    required this.tempC,
    required this.tempLikeC,
    required this.conditions,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    final currentData = json['current'];
    final conditionData = currentData['condition'];
    return Weather(
        lastUpdated: currentData['last_updated'],
        cityName: json ['location']['nane'],
        tempC: currentData['temp_c'].toDouble(),
        tempLikeC: currentData['feelslike_c'].toDouble(),
        conditions: conditionData['text'],
    );
  }

  @override
  String toString() => '''
  Last updated: $lastUpdated
  Temperature: $tempC C
  Feels like: $tempLikeC C
  Weather conditions: $conditions
  ''';
}

class Forecast {
  final String date;
  final double minTempC;
  final double maxTempC;
  final String condition;

  Forecast({
    required this.date,
    required this.minTempC,
    required this.maxTempC,
    required this.condition
  });

  factory Forecast.fromJson(Map<String, dynamic> json) {
    final conditionData json['day']['condition'];
    return Forecast(
      date: json['date'],
      cityName: json ['location']['nane'],
      minTempC: json['day']['mintemp_c'].toDouble(),
      maxTempC: json['day']['maxtemp_c'].toDouble(),
      condition: conditionData['text'],
    );}

  @override
  String toString() => '''
  Last updated: $date
  Temperature: $minTempC C - $maxTempC C
  Weather conditions: $conditions
  ''';

  }