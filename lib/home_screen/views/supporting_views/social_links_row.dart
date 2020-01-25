import 'package:flutter/material.dart';

class SocialLinksRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///TODO: Add gesture recognizers
    return Row(
      children: <Widget>[
        Image.asset(
          "assets/pics/git.png",
          height: 50.0,
        ),
        SizedBox(
          width: 10.0,
        ),
        Image.asset(
          "assets/pics/in.png",
          height: 50.0,
        ),
        SizedBox(
          width: 3.0,
        ),
        Image.asset(
          "assets/pics/doc.png",
          height: 50.0,
        )
      ],
    );
  }
}
