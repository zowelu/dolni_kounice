import 'package:flutter/material.dart';
import 'package:dolni_kounice/constants/constants.dart';

class TextDefaultStandart extends StatelessWidget {
  ///Standartní text v aplikaci pro běžné texty
  const TextDefaultStandart(
      {@required this.text, this.textAlign = TextAlign.justify});
  final String text;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: kDFontSizeText,
        color: kDColorTextWhite,
      ),
    );
  }
}
