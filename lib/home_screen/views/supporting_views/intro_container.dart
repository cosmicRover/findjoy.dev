import 'package:findjoy/app_constants/colors.dart';
import 'package:findjoy/home_screen/views/supporting_views/custom_text_widget.dart';
import 'package:findjoy/home_screen/views/supporting_views/social_links_row.dart';
import 'package:flutter/material.dart';

class IntroContainer extends StatelessWidget {
  final AppColors _colors;
  final String _introText1;
  final String _introText2;

  const IntroContainer(this._colors, this._introText1, this._introText2);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 570.0,
          child: Column(
            children: <Widget>[
              SocialLinksRow(),
              CustomTextWidget('$_introText1', 40.0, _colors.joyBlue),
              CustomTextWidget(_introText2, 24.0, _colors.joyBlue)
            ],
          ),
        ),
      ),
    );
  }
}
