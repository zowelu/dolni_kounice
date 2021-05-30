import 'package:flutter/material.dart';
import 'package:dolni_kounice/components/rosa_coeli.dart';
import 'package:dolni_kounice/components/audio_page.dart';

class AudioGuideRosaCoeli3Vezicka extends StatefulWidget {
  static String id = '/audioGuideRosaCoeli3Vezicka';
  @override
  _AudioGuideRosaCoeli3VezickaState createState() =>
      _AudioGuideRosaCoeli3VezickaState();
}

class _AudioGuideRosaCoeli3VezickaState extends State<AudioGuideRosaCoeli3Vezicka> {
  RosaCoeli textAudioMap = RosaCoeli();
  String assetImage =
      'assets/images/pamatky/klaster_rosa_coeli/klaster-pohled-zepredu.jpg';
  String textHeader = 'Klášter Rosa Coeli';
  String kapitola = '3 - Věžička';
  String path = 'audio/rosa_coeli/3.mp3';
  String keyOfMap = '3 - Věžička';
  Function onPressedNextButton;
  String tag = '3 - Věžička';

  @override
  Widget build(BuildContext context) {
    return AudioPage(
      assetImage: assetImage,
      textHeader: textHeader,
      kapitola: kapitola,
      path: path,
      textAudioMap: textAudioMap,
      keyOfMap: keyOfMap,
      tag: this.tag,
    );
  }
}