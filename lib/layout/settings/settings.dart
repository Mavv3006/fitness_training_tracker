import 'package:fitness_training_tracker/layout/util/scaffold.dart';
import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool usesDarkTheme = false;

  void toggleDarkTheme(bool newValue) {
    setState(() {
      usesDarkTheme = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TrainingScaffold(
      title: "Settings",
      body: SettingsList(
        sections: [
          SettingsSection(
            title: "Design",
            tiles: [
              SettingsTile.switchTile(
                title: "Dark Theme",
                onToggle: toggleDarkTheme,
                switchValue: usesDarkTheme,
              )
            ],
          ),
        ],
      ),
    );
  }
}
