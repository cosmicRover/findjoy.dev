import 'package:flutter/material.dart';

class CharacterPortrait extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.only(top: 13.0),
            child: Image.asset(
              "assets/pics/wave.png",
              height: 500.0,
              repeat: ImageRepeat.repeatX,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Image.asset(
                    "assets/pics/joy.png",
                    height: 500.0,
                    fit: BoxFit.contain,
                  ),
                ),
                //Container(height: 90.0, color: Colors.purple,)
              ],
            ))
      ],
    );
  }
}
