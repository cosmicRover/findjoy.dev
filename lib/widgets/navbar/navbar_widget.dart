import 'dart:ui';

import 'package:flutter/material.dart';

//the navbar
class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _NavBarPicItem(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              _NavBarLinkItem('LinkedIn'),
              SizedBox(width: 60),
              _NavBarLinkItem('Github')
            ],
          )
        ],
      ),
    );
  }
}

class _NavBarPicItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: Image.asset('assets/profile_pics/man.png'),
    );
  }
}

class _NavBarLinkItem extends StatelessWidget {
  final String text;
  const _NavBarLinkItem(this.text);
  @override
  Widget build(BuildContext context) {
    return Text('$text', style: TextStyle(fontSize: 30),);
  }
}
