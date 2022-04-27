import 'package:dolni_kounice/screens/trips/kam_za_vinem_map.dart';
import 'package:flutter/material.dart';
import 'package:dolni_kounice/components/monuments_page.dart';
import 'package:dolni_kounice/components/card_of_subject.dart';
import 'package:dolni_kounice/components/divider_text.dart';

class Winery extends StatelessWidget {
  static String id = '/winery';
  static String tag = 'winery';
  static String name = 'Vinařství';
  @override
  Widget build(BuildContext context) {
    return MonumentsPage(
      assetImage: 'assets/images/pamatky/services/vinarstvi.jpg',
      textOfAppBar: 'Služby',
      textHeader: name,
      tag: tag,
      isFloatingButton: true,
      onPressedFloatingButton: () {
        Navigator.pushNamed(context, KamZaVinemMap.id);
      },
      textOfFloatingButton: 'Kam za vínem?',
      listOfWidget: [
        CardOfSubject(
          name: 'Sklep u Barborky',
          phoneNumber: '732 757 785',
          webPage: 'www.sklepubarborky.cz',
          webPageURL: 'http://www.sklepubarborky.cz/',
          address: 'Hlavní 9',
          addressURL:
              'http://www.google.com/maps?q=49.0691135,16.4673752&z=14&t=m',
          isLabel: false,
          label: '',
          isImage: true,
          image: 'assets/images/pamatky/services/dockal.jpg',
        ),
        DividerText(),
        CardOfSubject(
          name: 'Sklep u Dvořáků',
          phoneNumber: '603 897 073',
          webPage: 'www.sklep-u-dvoraku.cz',
          webPageURL: 'http://www.sklep-u-dvoraku.cz/',
          address: 'Hlavní 6',
          addressURL:
              'http://www.google.com/maps?q=49.0694522,16.4662409&z=14&t=m',
          isLabel: false,
          label: '',
          isImage: true,
          image: 'assets/images/pamatky/services/dvorakovi.jpg',
        ),
        DividerText(),
        CardOfSubject(
          name: 'Vinařství Musilovi',
          phoneNumber: '603 265 636',
          webPage: 'www.vinarstvimusilovi.cz',
          webPageURL: 'http://www.vinarstvimusilovi.cz/',
          address: 'Bezručova 55a',
          addressURL:
              'http://www.google.com/maps?q=49.0693202,16.4638589&z=14&t=m',
          isLabel: false,
          label: '',
          isImage: true,
          image: 'assets/images/pamatky/services/musilovi.jpg',
        ),
        DividerText(),
        CardOfSubject(
          name: 'Vinařství Rosa coeli - Slunský',
          phoneNumber: '604 742 479',
          webPage: 'www.rosacoeli-vino.cz',
          webPageURL: 'http://www.rosacoeli-vino.cz/',
          address: ' Zámecká 44',
          addressURL:
              'http://www.google.com/maps?q=49.0654698,16.4721498&z=14&t=m',
          isLabel: false,
          label: '',
          isImage: true,
          image: 'assets/images/pamatky/services/slunsky.jpg',
        ),
        DividerText(),
        CardOfSubject(
          name: 'Vinařství Jan Plaček',
          phoneNumber: '737 109 064',
          webPage: 'www.vinoplacek.cz',
          webPageURL: 'http://www.vinoplacek.cz/',
          address: ' Moravské Bránice 348',
          addressURL:
              'http://www.google.com/maps?q=49.0832605,16.4364398&z=14&t=m',
          isLabel: false,
          label: '',
          isImage: true,
          image: 'assets/images/pamatky/services/placek.jpg',
        ),
        DividerText(),
        CardOfSubject(
          name: 'Vinařství Regina coeli',
          phoneNumber: '603 834 166',
          webPage: 'www.reginacoeli.cz',
          webPageURL: 'http://reginacoeli.cz/',
          address: ' Nové Bránice 39',
          addressURL:
              'http://www.google.com/maps?q=49.0702899,16.4425728&z=14&t=m',
          isLabel: false,
          label: '',
          isImage: true,
          image: 'assets/images/pamatky/services/vinarstvi.jpg',
        ),
        DividerText(),
      ],
    );
  }
}
