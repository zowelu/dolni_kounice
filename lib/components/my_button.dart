import 'package:flutter/material.dart';
import 'package:dolni_kounice/constants/constants.dart';


class MyButton extends StatelessWidget {
  ///Vlastní tlačítko
  MyButton({@required this.textOfButton, @required this.onPressed});
  final String textOfButton;
  final Function onPressed;


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(
        textOfButton,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20),
      ),
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        onPrimary: kDefaultColorTextColorBackground,
        padding: EdgeInsets.only(left:20.0, right: 20.0, top: 10.0, bottom: 10.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
          side: BorderSide.none,
        ),
        elevation: 5,
      ),
      onPressed: onPressed,
    );
  }
}