import 'package:url_launcher/url_launcher.dart';

//funkce otevírající stránku v externím prohlížeči
class OpenPhoneURL {
  //String _launchURL ='https://www.dolnikounice.cz/klaster-rosa-coeli/d-78777/p1=4774';

  _launchPhoneURL(String phoneNumber) async {
    String url = 'tel:' + phoneNumber;
    if (await canLaunch(url)) {
      await _launchPhoneURL(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void makePhoneCall(String launchURL) {
    _launchPhoneURL(launchURL);
  }
}
