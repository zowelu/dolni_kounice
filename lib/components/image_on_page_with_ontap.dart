import 'package:flutter/material.dart';
import 'package:dolni_kounice/constants/constants.dart';

class ImageOnPageWithOnTap extends StatelessWidget {
  ///Widget pro obrázky u památek s kulatými rohy a s možností prokliku

  ImageOnPageWithOnTap({@required this.assetImage, @required this.onTap});


  final String assetImage;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: kDMargin, bottom: kDMargin),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.only(left: kDMarginLarger, right: kDMarginLarger),
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
