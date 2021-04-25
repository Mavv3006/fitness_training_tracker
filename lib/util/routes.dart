import 'package:fitness_training_tracker/layout/exercises/list.dart';
import 'package:fitness_training_tracker/layout/home/home.dart';
import 'package:fitness_training_tracker/layout/programs/list.dart';
import 'package:fitness_training_tracker/layout/progress/progress.dart';
import 'package:fitness_training_tracker/layout/settings/settings.dart';
import 'package:fitness_training_tracker/layout/training/today.dart';
import 'package:flutter/material.dart';

class TrainingRoutes {
  static const String HOME = "/home";
  static const String EXERCISE_LIST = "/exerciseList";
  static const String PROGRESS = "/progress";
  static const String SETTINGS = "/settings";
  static const String TODAYS_TRAINING = "/todays training";
  static const String PROGRAM_LIST = "/programList";

  static Map<String, Widget Function(BuildContext)> getAll() {
    return {
      HOME: (context) => MyHomePage(),
      SETTINGS: (context) => SettingsPage(),
      EXERCISE_LIST: (context) => ExercisesListPage(),
      PROGRESS: (context) => ProgressPage(),
      TODAYS_TRAINING: (context) => TodaysTrainingsPage(),
      PROGRAM_LIST: (context) => ProgramListPage(),
    };
  }
}
