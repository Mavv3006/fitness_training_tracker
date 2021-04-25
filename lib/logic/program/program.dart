import 'package:fitness_training_tracker/logic/program/impl/basic.dart';
import 'package:fitness_training_tracker/logic/training/program_selection/training_week.dart';

abstract class Program {
  static List<Program> getImplemented() {
    return [BasicProgram()];
  }

  String getName();
  List<TrainingWeek> getWeeks();
}
