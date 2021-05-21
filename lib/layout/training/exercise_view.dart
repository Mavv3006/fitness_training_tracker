import 'package:fitness_training_tracker/logic/exercises/exercise.dart';
import 'package:flutter/material.dart';

class ExerciseView extends StatelessWidget {
  final Exercise exercise;

  ExerciseView(this.exercise);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(exercise.getName()),
    );
  }
}
