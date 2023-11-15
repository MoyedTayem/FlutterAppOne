// ignore_for_file: prefer_const_constructors, avoid_function_literals_in_foreach_calls

import 'package:flutter/material.dart';
import 'package:flutter_v1/screens/cities_screen.dart';
import 'package:flutter_v1/screens/shared_preferences.dart';
import 'package:flutter_v1/screens/starting_screen.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: buildMenuItems(context),
      ),
    );
  }

  List<Widget> buildMenuItems(BuildContext context) {
    final List<String> menuTitles = ["Home", "Cities","Shared Preferences App"];
    List<Widget> menuItems = [];
    menuItems.add(DrawerHeader(
        decoration: BoxDecoration(color: Colors.indigo),
        child: Text('Flutter V1',
            style: TextStyle(color: Colors.white, fontSize: 28.0))));
    menuTitles.forEach((String element) {
      Widget screen = Container();
      menuItems.add(ListTile(
        title: Text(element, style: TextStyle(fontSize: 18)),
        onTap: () {
          switch (element) {
            case "Home":
              screen = StartingScreen();
              break;
            case "Cities":
              screen = CitiesPage();
              break;
            case "Shared Preferences App":
              screen = SharedPreferencesApp();
              break;
          }
              
          Navigator.of(context).pop();
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => screen));
        },
      ));
    });
    return menuItems;
  }
}
