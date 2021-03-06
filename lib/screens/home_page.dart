import 'dart:io';

import 'package:dolni_kounice/components/open_url_in_browser.dart';
import 'package:dolni_kounice/screens/services.dart';
import 'package:dolni_kounice/screens/trips.dart';
import 'package:flutter/material.dart';
import 'package:dolni_kounice/components/default_page_of_choice.dart';
import 'package:dolni_kounice/components/choice_container.dart';
import 'package:dolni_kounice/components/container_header_home_page.dart';
import 'package:dolni_kounice/screens/monuments.dart';

class HomePage extends StatefulWidget {
  static String id = '/homePage';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<bool> _onWillPop() {
    return showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Ukončení aplikace'),
            content: Text('Opravdu si přejete ukončit aplikaci?'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: Text('Ne'),
              ),
              TextButton(
                onPressed: () => exit(0),
                /*Navigator.of(context).pop(true)*/
                child: Text('Ano'),
              ),
              TextButton(
                onPressed: () async {
                  //po stisknutí otevře stránku v externím prohlížeči
                  OpenUrlInBrowser().openUrl(
                      'https://play.google.com/store/apps/details?id=cz.webstrong.dolni_kounice');
                },
                /*Navigator.of(context).pop(true)*/
                child: Text('Ohodnotit aplikaci!'),
              ),
            ],
          ),
        ) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: DefaultPageOfChoice(
        tittleOfAppbar: 'Dolní Kounice',
        listOfWidget: [
          Hero(
            tag: 'splashscreenImage',
            child: ContainerHeaderHomePage(),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Hero(
                tag: 'pruvodcePamatkami',
                child: ChoiceContainer(
                  assetImageOfChoice:
                      'assets/images/pamatky/klaster_rosa_coeli/klaster_krizova_chodba.jpg',
                  textOfChoice: 'Průvodce památkami',
                  onTap: () {
                    Navigator.pushNamed(context, Monuments.id);
                  },
                  isAudio: false,
                ),
              ),
              Hero(
                tag: 'turistickeTrasy',
                child: ChoiceContainer(
                  assetImageOfChoice:
                      'assets/images/pamatky/mesto_pamatek_uvod/pexels-elina-sazonova-2705756_compressed.jpg',
                  textOfChoice: 'Turistické trasy',
                  onTap: () {
                    Navigator.pushNamed(context, Trips.id);
                  },
                  isAudio: false,
                ),
              ),
              Hero(
                tag: 'services',
                child: ChoiceContainer(
                  assetImageOfChoice:
                      'assets/images/pamatky/mesto_pamatek_uvod/pexels-chevanon-photography-302899_compressed.jpg',
                  textOfChoice: 'Služby',
                  onTap: () {
                    Navigator.pushNamed(context, Services.id);
                  },
                  isAudio: false,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
