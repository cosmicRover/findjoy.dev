import 'package:findjoy/app_constants/colors.dart';
import 'package:flutter/material.dart';

class LinkButton extends StatelessWidget {
  final Color _containerColor;

  const LinkButton(this._containerColor);

  Widget _button(Color color) {
    if (color == AppColors().joyBlue) {
      return Container(
        child: Image.asset(
          "assets/pics/git_link_white.png",
          height: 50.0,
        ),
      );
    } else {
      return Container(
        child: Image.asset(
          "assets/pics/git_link_blue.png",
          height: 50.0,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
            child: _button(_containerColor),
            onTap: () =>
                print("calling github link") //TODO add launch function on VM,
            ));
  }
}
