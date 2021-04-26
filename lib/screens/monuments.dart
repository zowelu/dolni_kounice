import 'package:flutter/material.dart';
import 'package:mesto_pamatek/components/choice_container.dart';
import 'package:mesto_pamatek/components/container_header_image_background.dart';
import 'package:mesto_pamatek/components/default_page_of_choice.dart';
import 'package:mesto_pamatek/screens/monuments_jevish_synagogue.dart';
import 'package:mesto_pamatek/screens/monuments_rosa_coeli.dart';

class Monuments extends StatefulWidget {
  static String id = '/monuments';
  @override
  _MonumentsState createState() => _MonumentsState();
}

class _MonumentsState extends State<Monuments> {
  @override
  Widget build(BuildContext context) {
    return DefaultPageOfChoice(
      tittleOfAppbar: 'Památky ve městě',
      listOfWidget: [
        Hero(tag:'pamatkyVeMeste',child: ContainerHeaderImageBackground(assetImage: 'assets/images/pamatky/mesto_pamatek_uvod/pamatky-mapa.jpg', textHeader: 'Památky ve městě', text: '',)),
        ChoiceContainer(
          assetImageOfChoice:
              'assets/images/pamatky/klaster_rosa_coeli/klaster-pohled-zepredu.jpg',
          textOfChoice: 'Klášter Rosa Coeli',
          onTap: () {
            Navigator.pushNamed(context, MonumentsRosaCoeli.id);
          },
        ),
        ChoiceContainer(
          assetImageOfChoice:
          'assets/images/pamatky/synagoga/synagoga-venek.jpg',
          textOfChoice: 'Židovská synagoga',
          onTap: () {
            Navigator.pushNamed(context, MonumentsJevishSynagogue.id);
          },
        ),
      ],
    );
  }
}
