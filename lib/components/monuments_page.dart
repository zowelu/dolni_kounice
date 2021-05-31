import 'package:flutter/material.dart';
import 'package:dolni_kounice/constants/constants.dart';
import 'package:dolni_kounice/components/container_header_image_background.dart';
import 'package:dolni_kounice/components/my_app_bar.dart';
import 'package:dolni_kounice/components/floating_button.dart';

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
    @required this.textOfFloatingButton,
    @required this.isFloatingButton,
  });

  final String textOfAppBar;
  final String assetImage;
  final String textHeader;
  final List<Widget> listOfWidget;
  final String tag;
  final Function onPressedFloatingButton;
  final String textOfFloatingButton;
  final bool isFloatingButton;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Město památek',
      home: Scaffold(
        backgroundColor: kBackgroundColor,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kDMyAppBarHeight),
          child: MyAppBar(
            tittleOfAppbar: textOfAppBar,
            onPressedBackButton: () {
              Navigator.pop(context);
            },
          ),
        ),
        floatingActionButton: isFloatingButton
            ? FloatingButton(
                onPressedFloatingButton: onPressedFloatingButton,
                textOfFloatingButton: textOfFloatingButton)
            : null,
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
                  padding: EdgeInsets.all(kDPadding),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(height: kDMargin),
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
