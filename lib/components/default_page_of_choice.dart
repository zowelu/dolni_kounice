import 'package:flutter/material.dart';
import 'package:mesto_pamatek/constants/constants.dart';
import 'package:mesto_pamatek/components/container_header.dart';

class DefaultPage extends StatelessWidget {
  DefaultPage(
      {@required this.tittleOfAppbar,
        @required this.titleOfHeaderText,
        @required this.listOfWidget});

  final String tittleOfAppbar;
  final String titleOfHeaderText;
  final List<Widget> listOfWidget;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Město památek',
      home: Scaffold(
        backgroundColor: kBackgroundColor,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: kBackgroundColor,
          automaticallyImplyLeading: true,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context, '/audioGuide');
            },
          ),
          title: Text(
            tittleOfAppbar,
            style: TextStyle(
                fontFamily: kDefaultFontFamily,
                fontSize: kDefaultFontSizeHeader),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ContainerHeader(
                  text: titleOfHeaderText,
                  textHeader: '',
                ),
                Container(
                  padding: EdgeInsets.all(kDefaultPadding),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: listOfWidget,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}