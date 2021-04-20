import 'package:flutter/material.dart';


class ChoiceContainer extends StatelessWidget {
  ///Výchozí Container pro výběr různých sekcí a kapitol
  ChoiceContainer({@required this.assetImageOfChoice,@required this.textOfChoice, @required this.onTap});

  final String assetImageOfChoice;
  final String textOfChoice;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.only(top: 60.0, bottom: 60.0, left: 50.0, right: 50.0),
          margin: EdgeInsets.only( bottom: 10.0),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Color(0xFF2C3E50),
                offset: const Offset(1.0, 1.0),
                blurRadius: 5.0,
                spreadRadius: 2.0,
              ),
            ],
            image: DecorationImage(
              image: AssetImage(assetImageOfChoice),
              fit: BoxFit.cover,
            ),
          ),
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Color(0x4D000000),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Text(
              textOfChoice,
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
