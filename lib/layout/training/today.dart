import 'package:fitness_training_tracker/layout/training/exercise_view.dart';
import 'package:fitness_training_tracker/layout/training/timer/timer_view.dart';
import 'package:fitness_training_tracker/layout/util/scaffold.dart';
import 'package:fitness_training_tracker/logic/exercises/exercise.dart';
import 'package:fitness_training_tracker/logic/exercises/impl/door_pull.dart';
import 'package:flutter/material.dart';

class TodaysTrainingsPage extends StatelessWidget {
  static const String _title = "Todays Trainings Page";
  static const String exerciseTabText = 'Übung';
  static const String timerTabText = "Timer";

  Exercise get exercise {
    return DoorPull();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: TrainingScaffold(
        title: _title,
        appBar: AppBar(
          title: Text(_title),
          bottom: TabBar(tabs: [
            Tab(text: timerTabText),
            Tab(text: exerciseTabText),
          ]),
        ),
        body: TabBarView(children: [
          TimerView(
            duration: Duration(seconds: 5),
          ),
          ExerciseView(exercise),
        ]),
      ),
    );
  }
}
