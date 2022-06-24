import 'package:flutter/material.dart';
import 'package:dolni_kounice/components/monuments_page.dart';
import 'package:dolni_kounice/components/card_of_subject.dart';
import 'package:dolni_kounice/components/divider_text.dart';

class Shops extends StatelessWidget {
  static String id = '/shops';
  static String tag = 'shops';
  static String name = 'Prodejny';
  @override
  Widget build(BuildContext context) {
    return MonumentsPage(
      assetImage: 'assets/images/pamatky/services/obchody.jpg',
      textOfAppBar: 'Služby',
      textHeader: name,
      tag: tag,
      isFloatingButton: false,
      onPressedFloatingButton: () {
        Navigator.pushNamed(context, Shops.id);
      },
      textOfFloatingButton: 'Mapa trasy',
      listOfWidget: [
        CardOfSubject(
          name: 'Potraviny A.T.G. Centrum',
          phoneNumber: '546 420 409',
          webPage: 'ne',
          webPageURL: 'ne',
          address: 'Masarykovo náměstí 1',
          addressURL:
              'http://www.google.com/maps?q=49.0695904,16.4657692&z=14&t=m',
          isLabel: false,
          label:
              'Platba kartou, Se psem, Bezbariérové, Dětský koutek, Zahrádka',
          isImage: false,
        ),
        DividerText(),
        CardOfSubject(
          name: 'Minimarket (večerka)',
          phoneNumber: '724 682 561',
          webPage: 'ne',
          webPageURL: 'ne',
          address: 'Masarykovo náměstí 19',
          addressURL:
              'http://www.google.com/maps?q=49.0702689,16.4658694&z=14&t=m',
          isLabel: false,
          label: 'Platba kartou, Denní menu, Zahrádka',
          isImage: false,
        ),
        DividerText(),
        CardOfSubject(
          name: 'AZ Market',
          phoneNumber: '546 421 325',
          webPage: 'ne',
          webPageURL: 'ne',
          address: 'Náměstí míru 35',
          addressURL:
              'http://www.google.com/maps?q=49.0730969,16.4648232&z=14&t=m',
          isLabel: false,
          label: 'Platba kartou, Denní menu, Zahrádka',
          isImage: false,
        ),
        DividerText(),
      ],
    );
  }
}
