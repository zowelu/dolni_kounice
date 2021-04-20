import 'package:flutter/material.dart';
import 'package:mesto_pamatek/constants/constants.dart';

class ImageOnPageWithOnTap extends StatelessWidget {
  ImageOnPageWithOnTap({@required this.assetImage, @required this.onTap});

  final String assetImage;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: kDefaultMarginLarger, bottom: kDefaultMarginLarger),
      child: GestureDetector(
        onTap: onTap,
          //Navigator.push(context, MaterialPageRoute(builder: (context) => SinglePhotoViewPage(assetImage: assetImage),),);

        child: Image(
          height: 250,
          width: double.infinity,
          image: AssetImage(
            assetImage,
          ),
        ),
      ),
    );
  }
}