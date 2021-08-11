import 'package:flutter/material.dart';
import 'package:dolni_kounice/components/choice_container.dart';
import 'package:dolni_kounice/components/container_header_image_background.dart';
import 'package:dolni_kounice/components/default_page_of_choice.dart';
import 'package:dolni_kounice/screens/audio_guides/audio_guide_rosa_coeli/audio_guide_rosa_coeli.dart';

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
        Hero(
          tag: 'audiopruvodce',
          child: ContainerHeaderImageBackground(
            assetImage: 'assets/images/pamatky/mesto_pamatek_uvod/klenba.jpg',
            textHeader: 'Audioprůvodce',
            text: '',
          ),
        ),
        Hero(
          tag: 'audioKlasterRosaCoeli',
          child: ChoiceContainer(
              assetImageOfChoice:
                  'assets/images/pamatky/klaster_rosa_coeli/klaster-pohled-zepredu.jpg',
              textOfChoice: 'Klášter Rosa Coeli',
              onTap: () {
                Navigator.pushNamed(context, AudioGuideRosaCoeli.id);
              }),
        ),
      ],
    );
  }
}
