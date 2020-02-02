import 'package:flutter/material.dart';

class CharacterPortrait extends StatelessWidget {
  final String _characterPortraitBackgroundAsset;

  const CharacterPortrait(this._characterPortraitBackgroundAsset);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.only(top: 0.0),
            child: Image.asset("$_characterPortraitBackgroundAsset",
                height: 500.0, fit: BoxFit.fitHeight),
          ),
        )
      ],
    );
  }
}
