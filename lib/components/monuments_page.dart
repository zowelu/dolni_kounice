import 'package:flutter/material.dart';
import 'package:mesto_pamatek/constants/constants.dart';
import 'package:mesto_pamatek/components/container_header_image_background.dart';

//Vrací stránku pro kapitoly Památek ve městě
class MonumentsPage extends StatelessWidget {
  const MonumentsPage({
    Key key,
    @required this.textOfAppBar,
    @required this.assetImage,
    @required this.textHeader,
    @required this.listOfWidget,
  }) : super(key: key);

  final String textOfAppBar;
  final String assetImage;
  final String textHeader;
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
            textOfAppBar,
            style: TextStyle(
                fontFamily: kDefaultFontFamily,
                fontSize: kDefaultFontSizeHeader),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ContainerHeaderImageBackground(
                  assetImage: assetImage,
                  textHeader: textHeader,
                  text: '',
                ),
                Container(
                  padding: EdgeInsets.all(kDefaultPadding),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(height: kDefaultMargin),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: listOfWidget,
                      ),
                    ],
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


