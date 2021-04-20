import 'package:flutter/material.dart';
import 'package:mesto_pamatek/constants/constants.dart';

class TextDefaultStandart extends StatelessWidget {
  ///Standartní text v aplikaci pro běžné texty
  const TextDefaultStandart({@required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: kDefaultFontSizeText,
        color: kDefaultColorTextWhite,
      ),
    );
  }
}
