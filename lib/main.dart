import 'package:findjoy/screens/home_screen/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blue,
        textTheme: Theme.of(context).textTheme.apply(
          fontFamily: 'Rancho'
        )
      ), //TODO: figure out the colors
      home: HomeScreen(),
    );
  }
}
