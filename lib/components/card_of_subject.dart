import 'package:dolni_kounice/components/open_phone_url.dart';
import 'package:dolni_kounice/components/text_default_standart.dart';
import 'package:flutter/material.dart';
import 'package:dolni_kounice/constants/constants.dart';
import 'package:dolni_kounice/components/open_url_in_browser.dart';
import 'package:dolni_kounice/components/my_button.dart';


class CardOfSubject extends StatelessWidget {
  ///vizitka pro subjekty ve Službách
  const CardOfSubject({
    @required this.name,
    @required this.phoneNumber,
    @required this.webPage,
    @required this.webPageURL,
    @required this.address,
    @required this.addressURL,
    @required this.isLabel,
    @required this.label,
    @required this.isImage,
     this.image,
  });
  final String name;
  final String phoneNumber;
  final String webPage;
  final String webPageURL;
  final String address;
  final String addressURL;
  final bool isLabel;
  final String label;
  final bool isImage;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: kDMargin, right: kDMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          isImage
              ? Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(bottom: kDMarginLarger),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image(
                      height: 200,
                      width: double.infinity,
                      //height: 100,
                      fit: BoxFit.cover,
                      image: AssetImage(
                        image,
                      ),
                    ),
                  ),
                )
              : SizedBox(height: 0,),
          Text(
            name,
            style: TextStyle(
                decoration: TextDecoration.none,
                decorationColor: Colors.white,
                decorationThickness: 3.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24),
            //textAlign: TextAlign.start,
          ),
          SizedBox(height: kDMargin),
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
          isLabel ? TextDefaultStandart(
            text: label,
          ): SizedBox(height: 0,),
        ],
      ),
    );
  }
}
