import 'package:flutter/material.dart';

//TODO: this goes right underneath the nav bar, introduce yourself properly
class IntroContainer extends StatelessWidget {
  final double width;
  IntroContainer(this.width);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.blue,
        height: 500,
        width: width,
        child: Center(child: Text('Introduce thyself')),
      ),
    );
  }
}
