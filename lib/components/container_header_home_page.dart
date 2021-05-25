import 'package:dolni_kounice/constants/constants.dart';
import 'package:flutter/material.dart';

class ContainerHeaderHomePage extends StatelessWidget {
  const ContainerHeaderHomePage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: 30, bottom: 30),
      child: Image(
        width: 130,
        image: AssetImage(kDAppIconPath),
      ),
    );
  }
}