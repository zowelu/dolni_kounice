import 'package:flutter/material.dart';
import 'package:mesto_pamatek/constants/constants.dart';
import 'package:mesto_pamatek/components/container_header_image_background.dart';
import 'package:mesto_pamatek/components/my_app_bar.dart';

//Vrací stránku pro kapitoly Památek ve městě
class MonumentsPage extends StatelessWidget {
  const MonumentsPage({
    Key key,
    @required this.textOfAppBar,
    @required this.assetImage,
    @required this.textHeader,
    @required this.listOfWidget,
    this.tag,
  }) : super(key: key);

  final String textOfAppBar;
  final String assetImage;
  final String textHeader;
  final List<Widget> listOfWidget;
  final String tag;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Město památek',
      home: Scaffold(
        backgroundColor: kBackgroundColor,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kDefaultMyAppBarHeight),
          child: MyAppBar(tittleOfAppbar: 'Památky ve městě', onPressedBackButton: () {
            Navigator.pop(context);
          },),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Hero(
                  tag: this.tag,
                  child: ContainerHeaderImageBackground(
                    assetImage: assetImage,
                    textHeader: textHeader,
                    text: '',
                  ),
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


