import 'package:dolni_kounice/components/default_page_of_choice.dart';
import 'package:dolni_kounice/components/monuments/jevish_synagogue.dart';
import 'package:dolni_kounice/screens/audio_guides/audio_guide_jevish_synagogue/audio_guide_jevish_synagogue_1.dart';
import 'package:dolni_kounice/screens/audio_guides/audio_guide_jevish_synagogue/audio_guide_jevish_synagogue_jevish_town.dart';
import 'package:flutter/material.dart';
import 'package:dolni_kounice/constants/constants.dart';
import 'package:dolni_kounice/components/choice_container.dart';
import 'package:dolni_kounice/components/container_header_image_background.dart';

class AudioGuideJevishSynagogue extends StatefulWidget {
  static String id = '/audioGuideJevishSynagogue';
  @override
  _AudioGuideJevishSynagogueState createState() => _AudioGuideJevishSynagogueState();
}

class _AudioGuideJevishSynagogueState extends State<AudioGuideJevishSynagogue> {
  JevishSynagogue jevishSynagogue = JevishSynagogue();
  @override
  Widget build(BuildContext context) {
    return DefaultPageOfChoice(
      tittleOfAppbar: 'Audioprůvodce',
      listOfWidget: [
        Hero(
          tag: jevishSynagogue.tag,
          child: ContainerHeaderImageBackground(
            assetImage: jevishSynagogue.imageGallery[0],
            textHeader: jevishSynagogue.name,
            text: '',
          ),
        ),
        Container(
          padding:
          EdgeInsets.only(left: kDPadding, right: kDPadding),
          child: Column(
            children: [
              Text(
                'Děkujeme, že jste zvolili audioprůvodce.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: kDColorTextWhite,
                    fontSize: kDFontSizeText),
              ),
              SizedBox(
                height: 20.0,
              ),
              Icon(
                Icons.headset,
                color: Colors.white,
                size: 50,
              ),
              Text(
                'Prosíme poslouchejte se sluchátky nebo s mobilem na uchu, aby nebyli rušeni ostatní návštěvníci.\n\nPřípadně si můžete přečíst přepis nahrávky, který se nachází pod přehrávačem. Předem děkujeme.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: kDColorTextWhite,
                    fontSize: kDFontSizeText),
              ),
              SizedBox(height: kDMargin),
            ],
          ),
        ),
        SizedBox(height: kDMarginLarger),
        Hero(
          tag: jevishSynagogue.chapter[0],
          child: ChoiceContainer(
            assetImageOfChoice: jevishSynagogue.imageGallery[7],
            textOfChoice: jevishSynagogue.chapter[0],
            onTap: () {
              Navigator.pushNamed(context, AudioGuideJevishSynagogue1.id);
            },
          ),
        ),
        Hero(
          tag: jevishSynagogue.chapter[1],
          child: ChoiceContainer(
            assetImageOfChoice: jevishSynagogue.images[0],
            textOfChoice: jevishSynagogue.chapter[1],
            onTap: () {
              Navigator.pushNamed(context, AudioGuideJevishSynagogueJevishTown.id);
            },
          ),
        ),
      ],
    );
  }
}
