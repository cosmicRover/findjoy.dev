import 'package:flutter/material.dart';

//TODO: this goes right underneath the nav bar, introduce yourself properly
class IntroContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text('Introduce thyself'),
      ),
    );
  }
}
