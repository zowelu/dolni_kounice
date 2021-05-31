import 'package:flutter/material.dart';
import 'package:dolni_kounice/constants/constants.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton(
      {@required this.onPressedFloatingButton,
      @required this.textOfFloatingButton});

  final String textOfFloatingButton;
  final Function onPressedFloatingButton;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      label: Text(
        textOfFloatingButton,
        style: TextStyle(fontFamily: kDFontFamily, fontSize: 20.0),
      ),
      elevation: 5,
      backgroundColor: kDColorFloatingButton,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(30.0),
        ),
      ),
      onPressed: onPressedFloatingButton,
    );
  }
}
