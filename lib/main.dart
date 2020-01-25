import 'package:findjoy/app_constants/colors.dart';
import 'package:findjoy/home_screen/views/home_screen_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final _colors = AppColors();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          canvasColor: _colors.joyWhite,
          ///TODO: download font into asset folder
          textTheme: TextTheme(
              headline4: GoogleFonts.oswald(
            fontWeight: FontWeight.w300,
            fontStyle: FontStyle.normal,
          ))),
      home: HomeScreen(),
    );
  }
}
