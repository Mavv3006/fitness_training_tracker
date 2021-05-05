import 'package:fitness_training_tracker/layout/util/drawer.dart';
import 'package:flutter/material.dart';

class TrainingScaffold extends StatelessWidget {
  final String? title;
  final Widget? body;
  final Widget? floatingActionButton;
  final Color? backgroundColor;
  final PreferredSizeWidget? appBar;

  TrainingScaffold({
    Key? key,
    this.title,
    this.body,
    this.floatingActionButton,
    this.backgroundColor,
    this.appBar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getBuildBuildAppBar(),
      drawer: TrainingDrawer(),
      body: this.body,
      backgroundColor: backgroundColor,
      floatingActionButton: this.floatingActionButton,
    );
  }

  PreferredSizeWidget _getBuildBuildAppBar() {
    var _buildAppBar;
    if (appBar != null) {
      _buildAppBar = appBar;
    } else {
      if (title != null) {
        _buildAppBar = AppBar(title: Text(title!));
      } else {
        _buildAppBar = AppBar();
      }
    }
    return _buildAppBar;
  }
}
