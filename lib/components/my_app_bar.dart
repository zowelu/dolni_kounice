import 'package:flutter/material.dart';
import 'package:dolni_kounice/components/about_app_dialog.dart';
import 'package:dolni_kounice/constants/constants.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar(
      {@required this.tittleOfAppbar, @required this.onPressedBackButton});

  final String tittleOfAppbar;
  final Function onPressedBackButton;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: kBackgroundColor,
      brightness: Brightness.dark,
      automaticallyImplyLeading: true,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        onPressed: onPressedBackButton,
      ),
      actions: [
        PopupMenuButton(
          itemBuilder: (context) => [
            PopupMenuItem(
              child: GestureDetector(
                child: Text('O aplikaci'),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AboutAppDialog();
                      });
                },
              ),
            ),
          ],
        ),
      ],
      title: Text(
        tittleOfAppbar,
        style: TextStyle(
            fontFamily: kDFontFamily, fontSize: kDFontSizeHeader),
      ),
    );
  }
}
