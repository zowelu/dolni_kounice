import 'package:flutter/material.dart';
import 'package:mesto_pamatek/components/about_app_dialog.dart';
import 'package:mesto_pamatek/constants/constants.dart';
import 'package:mesto_pamatek/screens/about_app_page.dart';

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
            fontFamily: kDefaultFontFamily, fontSize: kDefaultFontSizeHeader),
      ),
    );
  }
}
