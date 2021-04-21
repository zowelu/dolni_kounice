import 'package:flutter/material.dart';
import 'package:mesto_pamatek/components/default_page_of_choice.dart';
import 'package:mesto_pamatek/components/text_default_header.dart';

class AboutAppPage extends StatefulWidget {
  @override
  _AboutAppPageState createState() => _AboutAppPageState();
}

class _AboutAppPageState extends State<AboutAppPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultPageOfChoice(
      tittleOfAppbar: 'O aplikaci',
      titleOfHeaderText: '',
      listOfWidget: [
        Container(child: TextDefaultHeader(text: 'zg'),),
      ],
    );
  }
}