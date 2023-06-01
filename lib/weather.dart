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
}