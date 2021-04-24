import 'package:fitness_training_tracker/layout/exercises/list.dart';
import 'package:fitness_training_tracker/layout/home/home.dart';
import 'package:fitness_training_tracker/layout/progress/progress.dart';
import 'package:fitness_training_tracker/util/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        accentColor: Colors.yellow[200],
      ),
      home: MyHomePage(),
      routes: TrainingRoutes.getAll(),
    );
  }
}
