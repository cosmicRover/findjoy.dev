import 'package:flutter/material.dart';

//this class only hadnles the logic constarints to center and max-width UI compomnents
class CenteredView extends StatelessWidget {
  final Widget child;
  CenteredView(this.child);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 60),//top and bottom constarints
      alignment: Alignment.topCenter, //determines where to align
      child: ConstrainedBox(
        //the constraint box with maxWidth of 1200 wont let it go off center
        constraints: BoxConstraints(maxWidth: 1200),
        child: child,
      ),
    );
  }
}
