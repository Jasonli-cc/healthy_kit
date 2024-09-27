class WorkoutRouteData {
  final double lat;
  final double lon;
  final double alt;
  final double speed; // m/s
  final DateTime timestamp;

  WorkoutRouteData({required this.lat, required this.lon, required this.alt, required this.speed, required this.timestamp});

  factory WorkoutRouteData.fromJson(Map<String, dynamic> jsonData) => WorkoutRouteData(
      lat: jsonData['lat'] as double,
      lon: jsonData['lon'] as double,
      alt: jsonData['alt'] as double,
      speed: jsonData['speed'] as double,
      timestamp: DateTime.fromMillisecondsSinceEpoch(jsonData['timestamp'] as int));
}
