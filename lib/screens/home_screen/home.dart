import 'package:findjoy/widgets/centered_view/centered_view.dart';
import 'package:findjoy/widgets/containers/intro_container_widget.dart';
import 'package:findjoy/widgets/containers/project_container_widget.dart';
import 'package:findjoy/widgets/expanded_view/expanded_view.dart';
import 'package:findjoy/widgets/navbar/navbar_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: CenteredView(
        ListView(
          children: <Widget>[
            NavigationBar(),
            SizedBox(height: 20,),
            IntroContainer(width),
            SizedBox(height: 20,),
            ProjectContainer(width),
            SizedBox(height: 20,),
            ProjectContainer(width),
            SizedBox(height: 20,),
          ],
        )
      )
    );
  }
}
