import 'package:findjoy/home_screen/view_models/social_links_row_vm.dart';
import 'package:flutter/material.dart';

class SocialLinksRow extends StatelessWidget {
  final SocialLinksRowViewModel _viewModel = SocialLinksRowViewModel();

  @override
  Widget build(BuildContext context) {
    ///TODO: Add gesture recognizers
    return Row(
      children: <Widget>[
        GestureDetector(
          child: Image.asset(
            "assets/pics/git.png",
            height: 50.0,
          ),
          onTap: () => _viewModel.executeLaunch("git"),
        ),
        SizedBox(
          width: 10.0,
        ),
        GestureDetector(
          child: Image.asset(
            "assets/pics/in.png",
            height: 50.0,
          ),
          onTap: () => _viewModel.executeLaunch("in"),
        ),
        SizedBox(
          width: 3.0,
        ),
        Image.asset(
          "assets/pics/doc.png",
          height: 50.0,
        )
      ],
    );
  }
}
