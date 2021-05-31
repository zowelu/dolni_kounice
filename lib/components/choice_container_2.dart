import 'package:flutter/material.dart';
import 'package:dolni_kounice/constants/constants.dart';

class ChoiceContainer2 extends StatelessWidget {
  ///Výchozí Container pro výběr různých sekcí a kapitol
  ChoiceContainer2(
      {@required this.assetImageOfChoice,
      @required this.textOfChoice,
      @required this.onTap});

  final String assetImageOfChoice;
  final String textOfChoice;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: kDMargin, right: kDMargin, bottom: kDMargin),
      height: 165,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: kDBoxShadowColor,
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DecoratedBox(
                decoration: BoxDecoration(
                  color: kDTextBackgroundTransparent,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding:  EdgeInsets.all(kDPadding),
                  child: Text(
                    textOfChoice,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.white,
                      fontSize: kDFontSizeText,
                      fontFamily: kDFontFamily,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


