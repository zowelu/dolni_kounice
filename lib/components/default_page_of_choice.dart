import 'package:flutter/material.dart';
import 'package:dolni_kounice/constants/constants.dart';
import 'package:dolni_kounice/components/my_app_bar.dart';

class DefaultPageOfChoice extends StatelessWidget {
  DefaultPageOfChoice(
      {@required this.tittleOfAppbar,
      @required this.listOfWidget});

  final String tittleOfAppbar;
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
            Navigator.of(context).maybePop();
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

