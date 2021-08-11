import 'package:dolni_kounice/components/default_page_of_choice.dart';
import 'package:dolni_kounice/components/monuments/chapel_of_st_antonine.dart';
import 'package:dolni_kounice/screens/audio_guides/audio_guide_chapel_of_st_antonine/audio_guide_chapel_of_st_antonine_1.dart';
import 'package:flutter/material.dart';
import 'package:dolni_kounice/constants/constants.dart';
import 'package:dolni_kounice/components/choice_container.dart';
import 'package:dolni_kounice/components/container_header_image_background.dart';

class AudioGuideChapelOfStAntonine extends StatefulWidget {
  static String id = '/audioGuideChapelOfStAntonine';
  @override
  _AudioGuideChapelOfStAntonineState createState() => _AudioGuideChapelOfStAntonineState();
}

class _AudioGuideChapelOfStAntonineState extends State<AudioGuideChapelOfStAntonine> {
  ChapelOfStAntonine chapelOfStAntonine = ChapelOfStAntonine();
  @override
  Widget build(BuildContext context) {
    return DefaultPageOfChoice(
      tittleOfAppbar: 'Audioprůvodce',
      listOfWidget: [
        Hero(
          tag: 'audioKlasterRosaCoeli',
          child: ContainerHeaderImageBackground(
            assetImage: chapelOfStAntonine.imageGallery[1],
            textHeader: chapelOfStAntonine.name,
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
          tag: chapelOfStAntonine.chapter[0],
          child: ChoiceContainer(
            assetImageOfChoice: chapelOfStAntonine.imageGallery[0],
            textOfChoice: chapelOfStAntonine.chapter[0],
            onTap: () {
              Navigator.pushNamed(context, AudioGuideChapelOfStAntonine1.id);
            },
          ),
        ),
      ],
    );
  }
}
