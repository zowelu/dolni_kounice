import 'package:dolni_kounice/components/open_phone_url.dart';
import 'package:dolni_kounice/components/text_default_standart.dart';
import 'package:flutter/material.dart';
import 'package:dolni_kounice/constants/constants.dart';
import 'package:dolni_kounice/components/open_url_in_browser.dart';
import 'package:dolni_kounice/components/my_button.dart';

class CardOfSubject extends StatelessWidget {
  const CardOfSubject(
      {@required this.name,
        @required this.phoneNumber,
        @required this.webPage,
        @required this.webPageURL,
        @required this.address,
        @required this.addressURL,
        @required this.label});
  final String name;
  final String phoneNumber;
  final String webPage;
  final String webPageURL;
  final String address;
  final String addressURL;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.center,
          child: Text(
            name,
            style: TextStyle(
                decoration: TextDecoration.none,
                decorationColor: Colors.white,
                decorationThickness: 3.0,
                color: Colors.white,
                fontSize: kDFontSizeHeader),
            //textAlign: TextAlign.start,
          ),
        ),
        SizedBox(height: kDMarginLarger),
        Row(
          children: [
            TextDefaultStandart(text: 'Telefon:'),
            SizedBox(
              width: 20,
            ),
            MyButton(
              textOfButton: phoneNumber,
              onPressed: () async {
                //po stisknutí otevře dialer pro volání
                OpenPhoneURL().makePhoneCall(phoneNumber);
              },
            ),
          ],
        ),
        Row(
          children: [
            TextDefaultStandart(text: 'Web:'),
            SizedBox(
              width: 20,
            ),
            MyButton(
              textOfButton: webPage,
              onPressed: () async {
                //po stisknutí otevře stránku v externím prohlížeči
                OpenUrlInBrowser().openUrl(webPageURL);
              },
            ),
          ],
        ),
        Row(
          children: [
            TextDefaultStandart(text: 'Adresa:'),
            SizedBox(
              width: 20,
            ),
            MyButton(
              textOfButton: address,
              onPressed: () async {
                //po stisknutí otevře stránku v externím prohlížeči
                OpenUrlInBrowser().openUrl(addressURL);
              },
            ),
          ],
        ),
        SizedBox(height: kDMarginLarger),
        TextDefaultStandart(
          text: label,
        ),
      ],
    );
  }
}
