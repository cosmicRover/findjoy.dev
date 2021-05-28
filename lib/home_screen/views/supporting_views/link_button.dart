import 'package:findjoy/app_constants/colors.dart';
import 'package:findjoy/home_screen/view_models/link_button_view_model.dart';
import 'package:flutter/material.dart';

class LinkButton extends StatelessWidget {
  final Color _containerColor;
  final String _linkUrl;

  const LinkButton(this._containerColor, this._linkUrl);

  Widget _button(Color color) {
    if (color == AppColors().darkBlue) {
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
    final LinkButtonViewModel _viewModel = LinkButtonViewModel();

    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
            child: _button(_containerColor),
            onTap: () => _viewModel.executeLaunch(_linkUrl)));
  }
}
