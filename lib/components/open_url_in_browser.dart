import 'package:url_launcher/url_launcher.dart';

class OpenUrlInBrowser {
  String _launchURL =
      'https://www.dolnikounice.cz/klaster-rosa-coeli/d-78777/p1=4774';

  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'header_key': 'header_value'},
      );
    } else {
      throw 'Could not lauch $url';
    }
  }

  Function openUrl(String launchURL) {
    _launchInBrowser(_launchURL);
  }
}
