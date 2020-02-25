import 'package:findjoy/app_constants/colors.dart';
import 'package:findjoy/home_screen/models/home_screen_data_model.dart';
import 'package:findjoy/home_screen/views/supporting_views/project_container.dart';
import 'package:flutter/material.dart';

import 'package:findjoy/home_screen/view_models/home_screen_view_model.dart';
import 'package:findjoy/home_screen/views/supporting_views/character_portrait.dart';
import 'package:findjoy/home_screen/views/supporting_views/intro_container.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final AppColors _colors = AppColors();
  final HomeScreenViewModel _viewModel = HomeScreenViewModel();

  @override
  void dispose() {
    _viewModel.dispose();
    debugPrint("dispose being called");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder(
      stream: _viewModel.dataStream,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return LinearProgressIndicator();
        } else if (snapshot.hasError) {
          return Text("error");
        } else {
          return ListView(
            children: <Widget>[
              CharacterPortrait(snapshot.data.characterPortraitBackgroundAsset),
              IntroContainer(_colors, "${snapshot.data.intro1}",
                  "${snapshot.data.intro2}"),
              ProjectContainer(
                  "${snapshot.data.project2AssetPath}",
                  "${snapshot.data.project2}",
                  snapshot.data.title2,
                  _colors.joyBlue,
                  _colors.joyWhite,
                  350.0,
                  snapshot.data.project2Link),
              ProjectContainer(
                  "${snapshot.data.project1AssetPath}",
                  "${snapshot.data.project1}",
                  snapshot.data.title1,
                  _colors.joyWhite,
                  _colors.joyBlue,
                  350,
                  snapshot.data.project1Link),
              ProjectContainer(
                  "${snapshot.data.project3AssetPath}",
                  "${snapshot.data.project3}",
                  snapshot.data.title3,
                  _colors.joyBlue,
                  _colors.joyWhite,
                  350,
                  snapshot.data.project3Link)
            ],
          );
        }
      },
    ));
  }
}
