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
          margin: EdgeInsets.only(bottom: kDefaultMargin),
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
                width: MediaQuery.of(context).size.width/5*4,
                child: Text(
                  textHeader,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    decoration: TextDecoration.none,
                      fontFamily: kDefaultFontFamily,
                      fontSize: kDefaultFontSizeHeader,
                      color: kBackgroundColor,
                  ),
                ),
                decoration: BoxDecoration(
                  color: Color(0xB3FFFFFF),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(10.0), bottomRight: Radius.circular(10.0)),
                ),
                padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 10.0, right: 10.0 ),
                margin: EdgeInsets.only(bottom: kDefaultMarginLarger),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
