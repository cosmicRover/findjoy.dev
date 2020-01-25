import 'package:findjoy/app_constants/colors.dart';
import 'package:findjoy/home_screen/view_model/home_screen_view_model.dart';
import 'package:findjoy/home_screen/views/supporting_views/character_portrait.dart';
import 'package:findjoy/home_screen/views/supporting_views/intro_container.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final AppColors _colors = AppColors();
  final HomeScreenViewModel _viewModel = HomeScreenViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: <Widget>[
        CharacterPortrait(),

        ///TODO: convert texts into json text resources and retrieve them from stream
        IntroContainer(_colors, "But first, introductions are in order!",
            "But first, introductions are in order!"),
      ],
    ));
  }
}
