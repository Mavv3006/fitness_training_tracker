import 'package:fitness_training_tracker/logic/training/program_selection/training_day.dart';

class TrainingWeek {
  Map<int, TrainingDay> days;
  Set<int> numbers;

  TrainingWeek({
    required this.numbers,
    required this.days,
  });
}
