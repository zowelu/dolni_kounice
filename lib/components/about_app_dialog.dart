import 'package:flutter/material.dart';
import 'package:mesto_pamatek/constants/constants.dart';

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
        borderRadius: BorderRadius.circular(kDefaultPadding),
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
              left: kDefaultPadding,
              top: 70.0 + kDefaultPadding,
              right: kDefaultPadding,
              bottom: kDefaultPadding),
          margin: EdgeInsets.only(top: kDefaultMarginLarger),
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.circular(kDefaultPadding),
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
              SizedBox(
                height: kDefaultMarginLarger,
              ),
              Text(
                'Tato aplikace je poskytnuta zdarma Městu Dolní Kounice.',
                style: TextStyle(fontSize: 14),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: kDefaultMargin,
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
                    width: kDefaultMargin,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Image( height: 25,
                      image: AssetImage('assets/images/webstrong-logo.png'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 22,
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
