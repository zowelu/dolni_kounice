import 'package:flutter/material.dart';
import 'package:dolni_kounice/constants/constants.dart';
import 'package:styled_text/styled_text.dart';

class TextDefaultStyledText extends StatelessWidget {
  const TextDefaultStyledText({this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return StyledText(
      text:
      text,
      style: TextStyle(color: kDColorTextWhite, fontSize: kDFontSizeText),
      tags: {
        'bold': StyledTextTag(
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      },
      textScaleFactor: 0.85,
    );
  }
}