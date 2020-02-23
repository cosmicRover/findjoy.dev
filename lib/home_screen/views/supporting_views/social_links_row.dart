import 'package:findjoy/home_screen/model/social_urls.dart';
import 'package:findjoy/home_screen/view_model/social_links_row_vm.dart';
import 'package:flutter/material.dart';

class SocialLinksRow extends StatelessWidget {
  final SocialLinksRowViewModel _viewModel = SocialLinksRowViewModel();
  final Urls _urls = Urls();

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
          onTap: () => _viewModel.executeLaunch(_urls.githubUrl),
        ),
        SizedBox(
          width: 10.0,
        ),
        GestureDetector(
          child: Image.asset(
            "assets/pics/in.png",
            height: 50.0,
          ),
          onTap: () => _viewModel.executeLaunch(_urls.linkedInUrl),
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
