import 'package:flutter/material.dart';
import 'package:dolni_kounice/components/monuments_page.dart';
import 'package:dolni_kounice/components/card_of_subject.dart';
import 'package:dolni_kounice/components/divider_text.dart';

class Parking extends StatelessWidget {
  static String id = '/parking';
  static String tag = 'parking';
  static String name = 'Parkoviště';
  @override
  Widget build(BuildContext context) {
    return MonumentsPage(
      assetImage:
      'assets/images/pamatky/services/parkovani.jpg',
      textOfAppBar: 'Služby',
      textHeader: name,
      tag: tag,
      isFloatingButton: false,
      onPressedFloatingButton: () {
        Navigator.pushNamed(context, Parking.id);
      },
      textOfFloatingButton: 'Mapa trasy',
      listOfWidget: [
        CardOfSubject(
          name: 'Mlýnské náměstí',
          phoneNumber: 'ne',
          webPage: 'ne',
          webPageURL: 'ne',
          address: 'Mlýnské náměstí 1',
          addressURL:
          'https://goo.gl/maps/5HCoFXFTyPGtEFZ19',
          isLabel: true,
          label:
          'Parkoviště zdarma, bez omezení',
          isImage: false,

        ),
        DividerText(),
      ],
    );
  }
}
