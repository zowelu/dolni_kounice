import 'package:dolni_kounice/constants/constants.dart';
import 'package:flutter/material.dart';

class TextWithBoldParts extends StatelessWidget {
  TextWithBoldParts({@required this.listOfTextSpan});
  final List<InlineSpan> listOfTextSpan;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(fontSize: kDFontSizeText, color: kDColorTextWhite),
        children: listOfTextSpan,
      ),
    );
  }
}