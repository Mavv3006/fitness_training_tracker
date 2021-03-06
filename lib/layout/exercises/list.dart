import 'package:fitness_training_tracker/layout/util/scaffold.dart';
import 'package:fitness_training_tracker/logic/exercises/exercise.dart';
import 'package:flutter/material.dart';

class ExercisesListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color primaryVariantColor = Theme.of(context).colorScheme.primaryVariant;
    List<Exercise> list = Exercise.getImpelemented();

    return TrainingScaffold(
      backgroundColor: primaryVariantColor,
      title: "Exercises List",
      body: ListView.separated(
        itemCount: list.length,
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        separatorBuilder: (context, index) {
          return Divider(color: primaryVariantColor);
        },
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(list[index].getName()),
            tileColor: Theme.of(context).colorScheme.surface.withAlpha(150),
            onTap: () {},
          );
        },
      ),
    );
  }
}
