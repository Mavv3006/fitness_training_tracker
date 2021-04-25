import 'package:fitness_training_tracker/layout/util/scaffold.dart';
import 'package:fitness_training_tracker/logic/program/program.dart';
import 'package:flutter/material.dart';

class ProgramListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color primaryVariantColor = Theme.of(context).colorScheme.primaryVariant;
    List<Program> list = Program.getImplemented();

    return TrainingScaffold(
      backgroundColor: primaryVariantColor,
      title: "Program List Page",
      body: ListView.separated(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(list[index].getName()),
            tileColor: Theme.of(context).colorScheme.surface.withAlpha(150),
            onTap: () {},
          );
        },
        separatorBuilder: (context, index) {
          return Divider(color: primaryVariantColor);
        },
        itemCount: list.length,
      ),
    );
  }
}
