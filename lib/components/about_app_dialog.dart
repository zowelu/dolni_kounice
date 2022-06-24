import 'package:flutter/material.dart';
import 'package:dolni_kounice/constants/constants.dart';
import 'package:dolni_kounice/components/open_url_in_browser.dart';

class AboutAppDialog extends StatefulWidget {
  const AboutAppDialog({Key key}) : super(key: key);

  @override
  _AboutAppDialogState createState() => _AboutAppDialogState();
}

class _AboutAppDialogState extends State<AboutAppDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(kDPadding),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }

  contentBox(context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(
              left: kDPadding,
              top: 70.0 + kDPadding,
              right: kDPadding,
              bottom: kDPadding),
          margin: EdgeInsets.only(top: kDMarginLarger),
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.circular(kDPadding),
              boxShadow: [
                BoxShadow(
                    color: Colors.black, offset: Offset(0, 10), blurRadius: 10),
              ]),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'Město památek',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
              Text(
                'verze: $versionApp',
                style: TextStyle(fontSize: 14),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: kDMarginLarger,
              ),
              Text(
                'Tato aplikace je poskytnuta zdarma Městu Dolní Kounice.',
                style: TextStyle(fontSize: 14),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: kDMargin,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Aplikaci vytvořil',
                    style: TextStyle(fontSize: 14),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    width: kDMargin,
                  ),
                  GestureDetector(
                    onTap: () async {
                      //po stisknutí otevře stránku v externím prohlížeči
                      OpenUrlInBrowser().openUrl('https://webstrong.cz/');
                    },
                    child: Image.asset('assets/images/webstrong-logo.png',
                        height: 25),
                  ),
                ],
              ),
              InkWell(
                child: Text(
                  'www.webstrong.cz',
                  style: TextStyle(
                      fontSize: 14, decoration: TextDecoration.underline),
                  textAlign: TextAlign.center,
                ),
                onTap: () async {
                  //po stisknutí otevře stránku v externím prohlížeči
                  OpenUrlInBrowser().openUrl('https://webstrong.cz/');
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    've spolupráci s ',
                    style: TextStyle(
                        fontSize: 14,
                       ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    width:0,
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      bottom: 10.0,
                      top: 0,
                    ),
                    child: GestureDetector(
                      onTap: () async {
                        //po stisknutí otevře stránku v externím prohlížeči
                        OpenUrlInBrowser().openUrl('https://www.zowelu.cz/');
                      },
                      child: Image.asset('assets/images/zowelu_logo.png',
                          height: 30),
                    ),
                  ),
                ],
              ),
              InkWell(
                child: const Text(
                  'www.zowelu.cz',
                  style: TextStyle(
                      fontSize: 14,
                      decoration: TextDecoration.underline),
                  textAlign: TextAlign.center,
                ),
                onTap: () async {
                  //po stisknutí otevře stránku v externím prohlížeči
                  OpenUrlInBrowser().openUrl('https://www.zowelu.cz/');
                },
              ),
              SizedBox(
                height: 22,
              ),
              Text(
                'Text, fotografie jsou použity\nz dostupných pramenů\na zdrojů od TIC Dolní Kounice\na z webových stránek www.DolniKounice.cz',
                style: TextStyle(fontSize: 14),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 22,
              ),
              Text(
                'Audiozáznam je profesionálně namluven\npanem Martinem Karlíkem,\nmoderátorem ČRo Radiožurnál.',
                style: TextStyle(fontSize: 14),
                textAlign: TextAlign.center,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      'Zavřít',
                      style: TextStyle(fontSize: 18),
                    )),
              ),
            ],
          ),
        ),
        Positioned(
          left: 100,
          right: 100,
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 50.0,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
              child: Image.asset('assets/images/dk_znak_icon.png'),
            ),
          ),
        ),
      ],
    );
  }
}
