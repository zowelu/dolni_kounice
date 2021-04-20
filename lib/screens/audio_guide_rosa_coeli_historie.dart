import 'package:flutter/material.dart';
import 'package:mesto_pamatek/components/rosa_coeli_map_of_path_and_text.dart';
import 'package:mesto_pamatek/components/audio_page.dart';

class AudioGuideRosaCoeliHistorie extends StatefulWidget {
  @override
  _AudioGuideRosaCoeliHistorieState createState() =>
      _AudioGuideRosaCoeliHistorieState();
}

class _AudioGuideRosaCoeliHistorieState extends State<AudioGuideRosaCoeliHistorie> {
  AudioGuideRosaCoeliMapOfPathAndText textAudioMap = AudioGuideRosaCoeliMapOfPathAndText();
  String assetImage =
      'assets/images/pamatky/klaster_rosa_coeli/klaster-1720.jpg';
  String textHeader = 'Klášter Rosa Coeli';
  String kapitola = 'Historie';
  String path = 'audio/historie.mp3';
  String keyOfMap = 'Historie';
  Function onPressedNextButton;

  @override
  Widget build(BuildContext context) {
    return AudioPage(
      assetImage: assetImage,
      textHeader: textHeader,
      kapitola: kapitola,
      path: path,
      textAudioMap: textAudioMap,
      keyOfMap: keyOfMap,
      onPressedNextButton: (){Navigator.pushNamed(context, '/audioGuideRosaCoeliFilmyASerialy');},
    );
  }
}
