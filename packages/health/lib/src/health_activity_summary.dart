class HealthActivitySummary {
  final double appleExerciseTime;
  final double appleExerciseTimeGoal;
  final double appleStandHours;
  final double appleStandHoursGoal;
  final double activeEnergyBurned;
  final double activeEnergyBurnedGoal;
  final DateTime date;
  HealthActivitySummary(
      {required this.activeEnergyBurnedGoal,
      required this.appleExerciseTimeGoal,
      required this.appleStandHours,
      required this.appleStandHoursGoal,
      required this.activeEnergyBurned,
      required this.appleExerciseTime,
      required this.date});

  factory HealthActivitySummary.fromJson(Map<String, dynamic> jsonData) {
    return HealthActivitySummary(
      activeEnergyBurnedGoal: jsonData["activeEnergyBurnedGoal"] as double,
      appleExerciseTimeGoal: jsonData["appleExerciseTimeGoal"] as double,
      appleStandHours: jsonData["appleStandHours"] as double,
      appleStandHoursGoal: jsonData["appleStandHoursGoal"] as double,
      activeEnergyBurned: jsonData["activeEnergyBurned"] as double,
      appleExerciseTime: jsonData["appleExerciseTime"] as double,
      date: DateTime.parse(jsonData['date'] as String),
    );
  }
}
