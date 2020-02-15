import 'package:findjoy/home_screen/views/supporting_views/custom_text_widget.dart';
import 'package:flutter/material.dart';

class ProjectContainer extends StatelessWidget {
  final String _imagePath;
  final String _text;
  final Color _containerColor;
  final Color _textColor;
  final double _imageHeight;

  const ProjectContainer(
      this._imagePath, this._text, this._containerColor, this._textColor, this._imageHeight);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: _containerColor,
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          width: 570,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Image.asset(
                  _imagePath,
                  height: _imageHeight,
                  fit: BoxFit.contain,
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  width: 570,
                  child: CustomTextWidget(_text, 24.0, _textColor),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
