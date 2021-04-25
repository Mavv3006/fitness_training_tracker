import 'package:fitness_training_tracker/logic/program/program.dart';

class AvailablePrograms {
  List<Program> programs = [];

  AvailablePrograms() {
    _initPrograms();
  }

  _initPrograms() {}

  Program select(int index) {
    return programs.elementAt(index);
  }
}
