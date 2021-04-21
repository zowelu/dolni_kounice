import 'package:flutter/material.dart';
import 'package:mesto_pamatek/components/choice_container.dart';
import 'package:mesto_pamatek/components/default_page_of_choice.dart';

class AudioGuide extends StatefulWidget {
  @override
  _AudioGuideState createState() => _AudioGuideState();
}

class _AudioGuideState extends State<AudioGuide> {
  @override
  Widget build(BuildContext context) {
    return DefaultPageOfChoice(
      tittleOfAppbar: 'Audioprůvodce',
      titleOfHeaderText: 'Vyberte si audioprůvodce níže',
      listOfWidget: [
        ChoiceContainer(
            assetImageOfChoice:
                'assets/images/pamatky/klaster_rosa_coeli/klaster-pohled-zepredu.jpg',
            textOfChoice: 'Klášter Rosa Coeli',
            onTap: () {
              Navigator.pushNamed(context, '/audioGuideRosaCoeli');
            }),
      ],
    );
  }
}

