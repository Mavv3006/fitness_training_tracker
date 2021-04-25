import 'package:fitness_training_tracker/util/routes.dart';
import 'package:flutter/material.dart';

class TrainingDrawer extends StatelessWidget {
  const TrainingDrawer({
    Key? key,
  }) : super(key: key);

  bool canChangeRoute(String? currentRouteName, String newRouteName) {
    print("current route: $currentRouteName; new route: $newRouteName");
    if (currentRouteName == null) return false;
    return currentRouteName != newRouteName;
  }

  void Function()? navigate(
    BuildContext context,
    String? currentRoute,
    String newRoute,
  ) {
    return () => {
          if (canChangeRoute(currentRoute, newRoute))
            Navigator.popAndPushNamed(context, newRoute)
          else
            Navigator.pop(context)
        };
  }

  @override
  Widget build(BuildContext context) {
    String? currentRoute = ModalRoute.of(context)?.settings.name;

    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Center(
              child: Text("Header"),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: navigate(
              context,
              currentRoute,
              TrainingRoutes.HOME,
            ),
          ),
          ListTile(
            leading: Icon(Icons.today),
            title: Text("Todays Training"),
            onTap: navigate(
              context,
              currentRoute,
              TrainingRoutes.TODAYS_TRAINING,
            ),
          ),
          ListTile(
            leading: Icon(Icons.timeline),
            title: Text("Progress"),
            onTap: navigate(
              context,
              currentRoute,
              TrainingRoutes.PROGRESS,
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.list),
            title: Text("Program List"),
            onTap: navigate(
              context,
              currentRoute,
              TrainingRoutes.PROGRAM_LIST,
            ),
          ),
          ListTile(
            leading: Icon(Icons.fitness_center),
            title: Text("Exercise List"),
            onTap: navigate(
              context,
              currentRoute,
              TrainingRoutes.EXERCISE_LIST,
            ),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            onTap: navigate(
              context,
              currentRoute,
              TrainingRoutes.SETTINGS,
            ),
          ),
        ],
      ),
    );
  }
}
