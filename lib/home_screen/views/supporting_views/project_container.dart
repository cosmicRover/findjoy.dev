import 'package:findjoy/home_screen/views/supporting_views/custom_text_widget.dart';
import 'package:findjoy/home_screen/views/supporting_views/link_button.dart';
import 'package:flutter/material.dart';

class ProjectContainer extends StatelessWidget {
  final String _imagePath;
  final String _text;
  final String _title;
  final Color _containerColor;
  final Color _textColor;
  final double _imageHeight;
  final String _linkUrl;

  const ProjectContainer(this._imagePath, this._text, this._title,
      this._containerColor, this._textColor, this._imageHeight, this._linkUrl);

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
                CustomTextWidget(_title, 36.0, _textColor),
                Image.network(
                  "$_imagePath",
                  height: _imageHeight,
                  fit: BoxFit.contain,
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  width: 570,
                  child: CustomTextWidget(_text, 24.0, _textColor),
                ),
                LinkButton(_containerColor, _linkUrl)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
