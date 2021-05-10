import 'package:flutter/material.dart';
import 'package:dolni_kounice/components/choice_container.dart';
import 'package:dolni_kounice/components/container_header_image_background.dart';
import 'package:dolni_kounice/components/default_page_of_choice.dart';
import 'package:dolni_kounice/screens/monuments_jevish_synagogue.dart';
import 'package:dolni_kounice/screens/monuments_rosa_coeli.dart';

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
        Hero(
            tag: 'pamatkyVeMeste',
            child: ContainerHeaderImageBackground(
              assetImage:
                  'assets/images/pamatky/mesto_pamatek_uvod/pamatky-mapa.jpg',
              textHeader: 'Památky ve městě',
              text: '',
            )),
        Hero(
          tag: 'monumentsRosaCoeli',
          child: ChoiceContainer(
            assetImageOfChoice:
                'assets/images/pamatky/klaster_rosa_coeli/klaster-pohled-zepredu.jpg',
            textOfChoice: 'Klášter Rosa Coeli',
            onTap: () {
              Navigator.pushNamed(context, MonumentsRosaCoeli.id);
            },
          ),
        ),
        Hero(
          tag: 'monumentsSynagogue',
          child: ChoiceContainer(
            assetImageOfChoice:
                'assets/images/pamatky/synagoga/synagoga-venek.jpg',
            textOfChoice: 'Židovská synagoga',
            onTap: () {
              Navigator.pushNamed(context, MonumentsJevishSynagogue.id);
            },
          ),
        ),
      ],
    );
  }
}
