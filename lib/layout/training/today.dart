import 'package:fitness_training_tracker/layout/training/exercise_view.dart';
import 'package:fitness_training_tracker/layout/training/timer/timer_view.dart';
import 'package:fitness_training_tracker/layout/util/scaffold.dart';
import 'package:flutter/material.dart';

class TodaysTrainingsPage extends StatelessWidget {
  static const _title = "Todays Trainings Page";
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: TrainingScaffold(
        title: _title,
        appBar: AppBar(
          title: Text(_title),
          bottom: TabBar(tabs: [
            Tab(text: "Timer"),
            Tab(text: "Übung"),
          ]),
        ),
        body: TabBarView(children: [
          TimerView(
            duration: Duration(seconds: 5),
          ),
          ExerciseView(),
        ]),
      ),
    );
  }
}
