import 'package:flutter/material.dart';
import 'package:mesto_pamatek/constants/constants.dart';
import 'package:mesto_pamatek/components/my_app_bar.dart';

class DefaultPageOfChoice extends StatelessWidget {
  DefaultPageOfChoice(
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
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kDefaultMyAppBarHeight),
          child: MyAppBar(tittleOfAppbar: tittleOfAppbar, onPressedBackButton: () {
            Navigator.pop(context);
          },),
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
      ),
    );
  }
}

