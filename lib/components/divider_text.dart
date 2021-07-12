import 'package:flutter/material.dart';
import 'package:dolni_kounice/constants/constants.dart';

class DividerText extends StatelessWidget {
  ///oddělovač jednotlivých subjektů ve službách
  const DividerText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: kDMargin),
        Divider(
          height: 5,
          color: kDividerColor,
          thickness: 5,
        ),
        SizedBox(height: kDMarginLarger),
      ],
    );
  }
}