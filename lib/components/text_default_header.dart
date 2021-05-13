import 'package:flutter/material.dart';
import 'package:dolni_kounice/constants/constants.dart';

class TextDefaultHeader extends StatelessWidget {
  ///Standartní text pro hlavičky a nadpisy
  const TextDefaultHeader({@required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: kDefaultFontSizeHeader,
        color: kDefaultColorTextWhite,
      ),
    );
  }
}