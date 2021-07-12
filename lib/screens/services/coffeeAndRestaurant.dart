import 'package:flutter/material.dart';
import 'package:dolni_kounice/components/monuments_page.dart';
import 'package:dolni_kounice/components/card_of_subject.dart';
import 'package:dolni_kounice/components/divider_text.dart';

class CoffeeAndRestaurant extends StatelessWidget {
  static String id = '/cofeeAndRestaurant';
  static String tag = 'cofeeAndRestaurant';
  static String name = 'Kavárny, Restaurace';
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
        Navigator.pushNamed(context, CoffeeAndRestaurant.id);
      },
      textOfFloatingButton: 'Mapa trasy',
      listOfWidget: [
        CardOfSubject(
          name: 'Cukrárna U Dvořáků',
          phoneNumber: '546 421 253',
          webPage: 'www.studena-kuchyne.cz',
          webPageURL: 'http://www.studena-kuchyne.cz/',
          address: 'Hlavní 6',
          addressURL:
              'http://www.google.com/maps?q=49.0694522,16.4662409&z=14&t=m',
          label:
              'Platba kartou, Se psem, Bezbariérové, Dětský koutek, Zahrádka',
        ),
        DividerText(),
        CardOfSubject(
            name: 'Hotel Vinum coeli',
            phoneNumber: '730 825 882',
            webPage: 'www.vinumcoeli.cz',
            webPageURL: 'http://www.vinumcoeli.cz/',
            address: 'Masarykovo náměstí 5',
            addressURL:
                'http://www.google.com/maps?q=49.0700406,16.464826&z=14&t=m',
            label: 'Platba kartou, Denní menu, Zahrádka'),
        DividerText(),
        CardOfSubject(
            name: 'Schůzka 7.13',
            phoneNumber: '777 008 713',
            webPage: 'www.schuzka7-13.cz',
            webPageURL: 'www.schuzka7-13.cz',
            address: 'Tovární 3',
            addressURL:
                'http://www.google.com/maps?q=49.0702896,16.466907&z=14&t=m',
            label: 'Platba kartou, pivo, víno, občerstvení, zahrádka'),
        DividerText(),
        CardOfSubject(
            name: 'Pizzerie u Ježků',
            phoneNumber: '602 621 361',
            webPage: 'www.pizzaujezku.cz',
            webPageURL: 'https://www.pizzaujezku.cz/',
            address: 'Náměstí míru 5',
            addressURL:
            'https://goo.gl/maps/9HNrgyW4a3gSzkZ88',
            label: ''),
        DividerText(),
        CardOfSubject(
            name: 'Restaurace Prince',
            phoneNumber: '721 273 180',
            webPage: 'Facebook',
            webPageURL: 'https://www.facebook.com/Restaurace-Prince-708638542834623/',
            address: 'Náměstí míru 2',
            addressURL:
            'https://goo.gl/maps/g2DiYxCvN8C9Z6Hp6',
            label: ''),
        DividerText(),
        CardOfSubject(
            name: 'Restaurace u Gottwaldů',
            phoneNumber: '604 675 002',
            webPage: 'web',
            webPageURL: 'http://web.quick.cz/restauraceugottwaldu/',
            address: 'Náměstí míru 22',
            addressURL:
            'https://goo.gl/maps/g2DiYxCvN8C9Z6Hp6',
            label: 'Platba kartou, pivo, víno, občerstvení, zahrádka'),
      ],
    );
  }
}