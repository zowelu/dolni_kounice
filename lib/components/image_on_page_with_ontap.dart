import 'package:flutter/material.dart';
import 'package:mesto_pamatek/constants/constants.dart';

class ImageOnPageWithOnTap extends StatelessWidget {
  ImageOnPageWithOnTap({@required this.assetImage, @required this.onTap});

  final String assetImage;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: kDefaultMargin, bottom: kDefaultMargin),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.only(left: kDefaultMarginLarger, right: kDefaultMarginLarger),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image(
              //height: 250,
              width: double.infinity,
              fit: BoxFit.fill,
              image: AssetImage(
                assetImage,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
