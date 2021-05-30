import 'package:flutter/material.dart';
import 'package:dolni_kounice/constants/constants.dart';
import 'package:dolni_kounice/components/container_header_image_background.dart';
import 'package:dolni_kounice/components/my_app_bar.dart';

//Vrací stránku pro kapitoly Památek ve městě
class MonumentsPage extends StatelessWidget {
  const MonumentsPage({
    Key key,
    @required this.textOfAppBar,
    @required this.assetImage,
    @required this.textHeader,
    @required this.listOfWidget,
    this.tag,
    @required this.onPressedFloatingButton,
  }) : super(key: key);

  final String textOfAppBar;
  final String assetImage;
  final String textHeader;
  final List<Widget> listOfWidget;
  final String tag;
  final Function onPressedFloatingButton;

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
        floatingActionButton: FloatingButton(onPressedFloatingButton: onPressedFloatingButton),
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

class FloatingButton extends StatelessWidget {
  const FloatingButton({@required this.onPressedFloatingButton, @required this.textOfFloatingButton});

  final String textOfFloatingButton;
  final Function onPressedFloatingButton;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      label: Text(
        textOfFloatingButton,
        style: TextStyle(fontFamily: kDefaultFontFamily, fontSize: 20.0),
      ),
      elevation: 5,
      backgroundColor: kBackgroundColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(30.0),
          ),
          side: BorderSide(width: 2.0, color: Colors.white)),
      onPressed: onPressedFloatingButton,
    );
  }
}


