import 'package:findjoy/widgets/centered_view/centered_view.dart';
import 'package:findjoy/widgets/navbar/navbar_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body:CenteredView(Column(
          children: <Widget>[
            NavigationBar()
            //work on intro view
          ],
        ))
    );
  }
}
