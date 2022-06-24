import 'package:flutter/material.dart';
import 'package:dolni_kounice/components/about_app_dialog.dart';
import 'package:dolni_kounice/constants/constants.dart';
import 'package:dolni_kounice/components/open_url_in_browser.dart';
import 'package:flutter/services.dart';

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
                child: Text('Jak se Vám to líbilo?'),
                onTap: () async {
                  //po stisknutí otevře stránku v externím prohlížeči
                  OpenUrlInBrowser()
                      .openUrl('https://forms.gle/HsntueYtXXuubp5FA');
                },
              ),
            ),
            PopupMenuItem(
              child: GestureDetector(
                child: Text('O aplikaci'),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AboutAppDialog();
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ],
      title: Text(
        tittleOfAppbar,
        style: TextStyle(fontFamily: kDFontFamily, fontSize: 20),
      ),
      systemOverlayStyle: SystemUiOverlayStyle.light,
    );
  }
}
