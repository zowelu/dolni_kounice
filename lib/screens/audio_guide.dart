import 'package:flutter/material.dart';
import 'package:mesto_pamatek/components/choice_container.dart';
import 'package:mesto_pamatek/components/container_header_image_background.dart';
import 'package:mesto_pamatek/components/default_page_of_choice.dart';
import 'package:mesto_pamatek/screens/audio_guide_rosa_coeli.dart';

class AudioGuide extends StatefulWidget {
  static String id = '/audioGuide';
  @override
  _AudioGuideState createState() => _AudioGuideState();
}

class _AudioGuideState extends State<AudioGuide> {
  @override
  Widget build(BuildContext context) {
    return DefaultPageOfChoice(
      tittleOfAppbar: 'Audioprůvodce',
      listOfWidget: [
        ContainerHeaderImageBackground(assetImage: 'assets/images/pamatky/mesto_pamatek_uvod/klenba.jpg', textHeader: 'Audioprůvodce', text: '',),
        ChoiceContainer(
            assetImageOfChoice:
                'assets/images/pamatky/klaster_rosa_coeli/klaster-pohled-zepredu.jpg',
            textOfChoice: 'Klášter Rosa Coeli',
            onTap: () {
              Navigator.pushNamed(context, AudioGuideRosaCoeli.id);
            }),
      ],
    );
  }
}

