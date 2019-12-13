import 'package:flutter/material.dart';

class ExpandedView extends StatelessWidget {
  final Widget child;
  ExpandedView(this.child);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: child,
    );
  }
}