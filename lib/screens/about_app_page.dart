import 'package:flutter/material.dart';
import 'package:mesto_pamatek/components/default_page_of_choice.dart';
import 'package:mesto_pamatek/components/text_default_header.dart';
import 'package:mesto_pamatek/components/text_default_standart.dart';
import 'package:mesto_pamatek/constants/constants.dart';

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
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextDefaultStandart(text: 'Verze aplikace: 1.0'),
            SizedBox(height: kDefaultMarginLarger),
            TextDefaultStandart(
                text: 'Aplikace je vytvořena zdarma pro město Dolní Kounice.', textAlign: TextAlign.center,),
            SizedBox(height: kDefaultMarginLarger,),
            TextDefaultStandart(
                text: 'Aplikaci vytvořil WEBSTRONG'),
            SizedBox(height: kDefaultMarginLarger,),
            Container(
              width: 150,
              child: GestureDetector(
                child: Image(image: AssetImage('assets/images/webstrong-logo.png'),),
                onTap: (){},
              ),
            ),
            SizedBox(height: kDefaultMarginLarger,),
            TextDefaultStandart(
                text: 'Vytvořeno v roce 2021'),
          ],
        ),
      ],
    );
  }
}
