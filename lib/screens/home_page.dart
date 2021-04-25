import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mesto_pamatek/components/default_page_of_choice.dart';
import 'package:mesto_pamatek/components/choice_container.dart';
import 'package:mesto_pamatek/components/container_header_home_page.dart';
import 'package:mesto_pamatek/screens/audio_guide.dart';
import 'package:mesto_pamatek/screens/monuments.dart';

class HomePage extends StatefulWidget {
  static String id = '/homePage';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultPageOfChoice(
      tittleOfAppbar: 'Město památek',
      listOfWidget: [
        Hero(tag: 'dk_logo',child: ContainerHeaderHomePage()),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Hero(
              tag: 'audiopruvodce',
              child: ChoiceContainer(
                  assetImageOfChoice:
                      'assets/images/pamatky/klaster_rosa_coeli/klaster_krizova_chodba.jpg',
                  textOfChoice: 'Audioprůvodce',
                  onTap: () {
                    Navigator.pushNamed(context, AudioGuide.id);
                  }),
            ),
            ChoiceContainer(
                assetImageOfChoice:
                    'assets/images/pamatky/mesto_pamatek_uvod/pamatky-mapa.jpg',
                textOfChoice: 'Památky ve městě',
                onTap: () {
                  Navigator.pushNamed(context, Monuments.id);
                }),
            ChoiceContainer(
                assetImageOfChoice:
                    'assets/images/pamatky/mesto_pamatek_uvod/beautiful-scenery-greenfield-countryside-eifel-region-germany-M.jpg',
                textOfChoice: 'Tipy na výlety v okolí',
                onTap: () {}),
          ],
        ),
      ],
    );
  }
}
