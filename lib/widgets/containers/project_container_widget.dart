import 'package:flutter/material.dart';

//TODO: this goes right under introductions get pictures, color and a brief description for projects
class ProjectContainer extends StatelessWidget {
  final double width;
  ProjectContainer(this.width);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 300,
        width: width,
        child: Center(child: Text('Show thy projects')),
      ),
    );
  }
}
