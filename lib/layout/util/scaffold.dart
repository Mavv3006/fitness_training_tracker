import 'package:fitness_training_tracker/layout/util/drawer.dart';
import 'package:flutter/material.dart';

class TrainingScaffold extends StatelessWidget {
  final String title;
  Widget? body;
  Widget? floatingActionButton;

  TrainingScaffold(
      {Key? key, required this.title, this.body, this.floatingActionButton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      drawer: TrainingDrawer(),
      body: this.body,
      floatingActionButton: this.floatingActionButton,
    );
  }
}
