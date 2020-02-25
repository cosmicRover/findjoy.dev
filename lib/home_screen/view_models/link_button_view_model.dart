import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkButtonViewModel {
  void _launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      debugPrint("Trouble launching $url");
    }
  }

  void executeLaunch(String url) {
    _launchUrl(url);
  }
}