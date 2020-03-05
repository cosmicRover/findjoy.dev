import 'package:findjoy/home_screen/models/social_urls.dart';
import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialLinksRowViewModel {
  final Urls _urls = Urls();

  void _launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      debugPrint("Trouble launching $url");
    }
  }

  void executeLaunch(String id) {
    switch (id) {
      case "git":
        return _launchUrl(_urls.githubUrl);
      case "in":
        return _launchUrl(_urls.linkedInUrl);
      case "res":
        return _launchUrl(_urls.resumeUrl);
    }
  }
}
