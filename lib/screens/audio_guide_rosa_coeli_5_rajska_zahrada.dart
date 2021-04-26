import 'package:flutter/material.dart';
import 'package:mesto_pamatek/components/rosa_coeli_map_of_path_and_text.dart';
import 'package:mesto_pamatek/components/audio_page.dart';

class AudioGuideRosaCoeli5RajskaZahrada extends StatefulWidget {
  static String id = '/audioGuideRosaCoeli5RajskaZahrada';
  @override
  _AudioGuideRosaCoeli5RajskaZahradaState createState() =>
      _AudioGuideRosaCoeli5RajskaZahradaState();
}

class _AudioGuideRosaCoeli5RajskaZahradaState extends State<AudioGuideRosaCoeli5RajskaZahrada> {
  AudioGuideRosaCoeliMapOfPathAndText textAudioMap = AudioGuideRosaCoeliMapOfPathAndText();
  String assetImage =
      'assets/images/pamatky/klaster_rosa_coeli/klaster-rajska-zahrad.jpg';
  String textHeader = 'Klášter Rosa Coeli';
  String kapitola = '5 - Rajská zahrada';
  String path = 'audio/5.mp3';
  String keyOfMap = '5 - Rajská zahrada';
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

    );
  }
}
