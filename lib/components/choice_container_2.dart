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
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 10.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      margin: EdgeInsets.only(left: kDefaultMarginLarger, right: kDefaultMarginLarger, bottom: kDefaultMargin),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Ink.image(
            image: AssetImage(assetImageOfChoice),
            height: 165.0,
            fit: BoxFit.cover,
            child: InkWell(
              onTap: onTap,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DecoratedBox(
                decoration: BoxDecoration(
                  color: kDefaultTextBackgroundTransparent,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: EdgeInsets.all(kDefaultPadding),
                  child: Text(
                    textOfChoice,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.white,
                      fontSize: kDefaultFontSizeText,
                      fontFamily: kDefaultFontFamily,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
