import 'package:flutter/material.dart';
import 'package:dolni_kounice/components/monuments_page.dart';
import 'package:dolni_kounice/components/card_of_subject.dart';
import 'package:dolni_kounice/components/divider_text.dart';

class Accommodations extends StatelessWidget {
  static String id = '/accommodations';
  static String tag = 'accommodations';
  static String name = 'Ubytování';
  @override
  Widget build(BuildContext context) {
    return MonumentsPage(
      assetImage:
      'assets/images/pamatky/services/pexels-lisa-907142_compressed.jpg',
      textOfAppBar: 'Služby',
      textHeader: name,
      tag: tag,
      isFloatingButton: false,
      onPressedFloatingButton: () {
        Navigator.pushNamed(context, Accommodations.id);
      },
      textOfFloatingButton: 'Mapa trasy',
      listOfWidget: [
        CardOfSubject(
          name: 'Hotel Vinum coeli',
          phoneNumber: '730 825 882',
          webPage: 'www.vinumcoeli.cz',
          webPageURL: 'http://www.vinumcoeli.cz/',
          address: 'Masarykovo náměstí 5',
          addressURL:
          'http://www.google.com/maps?q=49.0700406,16.464826&z=14&t=m',
          isLabel: false,
          label:
          'Platba kartou, Se psem, Bezbariérové, Dětský koutek, Zahrádka',
          isImage: false,

        ),
        DividerText(),
        CardOfSubject(
          name: 'Penzion Rosa coeli',
          phoneNumber: '733 161 613',
          webPage: 'www.penzionrosacoeli.cz',
          webPageURL: 'http://www.penzionrosacoeli.cz/',
          address: 'Růžová 26',
          addressURL:
          'http://www.google.com/maps?q=49.0693325,16.4713459&z=14&t=m',
          isLabel: false,
          label: 'Platba kartou, Denní menu, Zahrádka',
          isImage: false,
        ),
        DividerText(),
      ],
    );
  }
}
