import 'package:fitness_training_tracker/layout/home/home.dart';
import 'package:fitness_training_tracker/util/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

Future<void> main() async {
  // FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
  //     FlutterLocalNotificationsPlugin();
  // const AndroidInitializationSettings androidSettings =
  //     AndroidInitializationSettings('ic_launcher');
  // InitializationSettings settings =
  //     InitializationSettings(android: androidSettings);
  // await flutterLocalNotificationsPlugin.initialize(settings);

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
