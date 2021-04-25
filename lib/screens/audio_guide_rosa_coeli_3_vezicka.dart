import 'package:flutter/material.dart';
import 'package:mesto_pamatek/components/rosa_coeli_map_of_path_and_text.dart';
import 'package:mesto_pamatek/components/audio_page.dart';

class AudioGuideRosaCoeli3Vezicka extends StatefulWidget {
  static String id = '/audioGuideRosaCoeli3Vezicka';
  @override
  _AudioGuideRosaCoeli3VezickaState createState() =>
      _AudioGuideRosaCoeli3VezickaState();
}

class _AudioGuideRosaCoeli3VezickaState extends State<AudioGuideRosaCoeli3Vezicka> {
  AudioGuideRosaCoeliMapOfPathAndText textAudioMap = AudioGuideRosaCoeliMapOfPathAndText();
  String assetImage =
      'assets/images/pamatky/klaster_rosa_coeli/klaster-pohled-zepredu.jpg';
  String textHeader = 'Klášter Rosa Coeli';
  String kapitola = '3 - Věžička';
  String path = 'audio/3.mp3';
  String keyOfMap = '3 - Věžička';
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
      onPressedNextButton: (){Navigator.pushNamed(context, '/audioGuideRosaCoeli4PrimaChramovaLod');},
    );
  }
}
