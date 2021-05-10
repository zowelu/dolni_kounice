import 'package:flutter/material.dart';
import 'package:dolni_kounice/constants/constants.dart';

//Container s obrázkem na pozadí a názvem sekce nebo kapitoly a doprovodným textem
class ContainerHeaderImageBackground extends StatelessWidget {
  ContainerHeaderImageBackground(
      {@required this.assetImage, this.textHeader, this.text});

  final String assetImage;
  final String textHeader;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 165,
          padding: EdgeInsets.all(20.0),
          margin: EdgeInsets.only(bottom: kDefaultMargin),
          alignment: Alignment.bottomLeft,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(assetImage),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  text,
                  style: TextStyle(
                      //fontFamily: kDefaultFontFamily,
                      fontSize: kDefaultFontSizeText,
                      color: kDefaultColorTextWhite),
                      textAlign: TextAlign.left,
                ),
                padding: EdgeInsets.all(5.0),
              ),
              Container(
                child: Text(
                  textHeader,
                  style: TextStyle(
                    decoration: TextDecoration.none,
                      fontFamily: kDefaultFontFamily,
                      fontSize: kDefaultFontSizeHeader,
                      color: kDefaultColorTextWhite,
                  ),
                ),
                decoration: BoxDecoration(
                  color: kDefaultTextBackgroundTransparent,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: EdgeInsets.all(5.0),
                margin: EdgeInsets.only(bottom: kDefaultMargin),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
