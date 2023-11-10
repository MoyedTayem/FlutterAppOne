// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_v1/shared/appBar.dart';
import 'package:flutter_v1/shared/messages.dart';
import '../shared/menudrawer.dart';
class StartingScreen extends StatelessWidget {
  const StartingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: appBar(),
      drawer:MenuDrawer() ,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/background.jpeg"),
                fit: BoxFit.cover)),
        child: Center(
          child: TextButton(
            onPressed: () {
              message("turning dreams to reality");
            },
            child: Text(
              'Start',
              style: TextStyle(
                  fontSize: 24.0, color: Color.fromARGB(255, 166, 193, 239)),
            ),
          ),
        ),
      ),
    ));
  }
}
