class HrvData {
  final DateTime from;
  final DateTime to;
  final int sdnn;
  final int rmssd;
  HrvData({required this.from, required this.to, required this.sdnn, required this.rmssd});

  factory HrvData.fromJson(Map<String, dynamic> jsonData) => HrvData(
        from: DateTime.fromMillisecondsSinceEpoch(jsonData["start"] as int? ?? 0),
        to: DateTime.fromMillisecondsSinceEpoch(jsonData["end"] as int? ?? 0),
        sdnn: double.parse("${jsonData['SDNN']}").toInt(),
        rmssd: double.parse("${jsonData['RMSSD']}").toInt(),
      );

  @override
  String toString() {
    return "$to   sdnn: $sdnn   rmssd: $rmssd";
  }
}
