import 'package:fitness_training_tracker/layout/util/drawer.dart';
import 'package:flutter/material.dart';

class TrainingScaffold extends StatelessWidget {
  final String title;
  Widget? body;
  Widget? floatingActionButton;
  Color? backgroundColor;

  TrainingScaffold({
    Key? key,
    required this.title,
    this.body,
    this.floatingActionButton,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      drawer: TrainingDrawer(),
      body: this.body,
      backgroundColor: backgroundColor,
      floatingActionButton: this.floatingActionButton,
    );
  }
}
