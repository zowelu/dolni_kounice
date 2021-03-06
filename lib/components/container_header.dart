import 'package:flutter/material.dart';
import 'package:dolni_kounice/constants/constants.dart';

class ContainerHeader extends StatelessWidget {
  ContainerHeader({this.textHeader, this.text});

  final String textHeader;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10.0,left: 30.0, right: 30.0, bottom: 30.0),
      child: Center(
        child: Column(
          children: [
            Text(
              textHeader,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: kDColorTextWhite,
                fontSize: kDFontSizeHeader,
                fontFamily: kDFontFamily,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: kDColorTextWhite,
                fontSize: kDFontSizeText,
              ),
            ),
          ],
        ),

      ),
    );
  }
}
