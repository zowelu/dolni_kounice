import 'package:dolni_kounice/components/floating_button.dart';
import 'package:flutter/material.dart';
import 'package:dolni_kounice/constants/constants.dart';
import 'package:dolni_kounice/components/my_app_bar.dart';

class DefaultPageOfChoiceWithFloatingButton extends StatelessWidget {
  DefaultPageOfChoiceWithFloatingButton(
      {@required this.tittleOfAppbar,
      @required this.listOfWidget,
      @required this.textOfFloatingButton,
      @required this.assetImageOfModal,
      @required this.onPressedFloatingButton,
      });

  final String tittleOfAppbar;
  final List<Widget> listOfWidget;
  final String textOfFloatingButton;
  final String assetImageOfModal;
  final Function onPressedFloatingButton;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Město památek',
      home: Scaffold(
        backgroundColor: kBackgroundColor,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kDMyAppBarHeight),
          child: MyAppBar(
            tittleOfAppbar: tittleOfAppbar,
            onPressedBackButton: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
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
        floatingActionButton: FloatingButton(onPressedFloatingButton: onPressedFloatingButton, textOfFloatingButton: textOfFloatingButton),

      ),
    );
  }
}
