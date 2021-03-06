import 'package:flutter/material.dart';
import 'package:dolni_kounice/components/monuments/rosa_coeli.dart';
import 'package:dolni_kounice/components/audio_page.dart';

class AudioGuideRosaCoeli3Vezicka extends StatefulWidget {
  static String id = '/audioGuideRosaCoeli3Vezicka';
  @override
  _AudioGuideRosaCoeli3VezickaState createState() =>
      _AudioGuideRosaCoeli3VezickaState();
}

class _AudioGuideRosaCoeli3VezickaState extends State<AudioGuideRosaCoeli3Vezicka> {

  static int index = 3;
  RosaCoeli rosaCoeli = RosaCoeli();
  RosaCoeli textAudioMap = RosaCoeli();
  String assetImage =RosaCoeli().imageGallery[1];
  String textHeader = RosaCoeli().audioText.keys.elementAt(index);
  String path = RosaCoeli().mp3[index];
  String keyOfMap = RosaCoeli().audioText.keys.elementAt(index);
  String tag = RosaCoeli().audioText.keys.elementAt(index);

  @override
  Widget build(BuildContext context) {
    return AudioPage(
      assetImage: assetImage,
      textHeader: textHeader,
      path: path,
      textAudioMap: textAudioMap,
      keyOfMap: keyOfMap,
      tag: this.tag,
    );
  }
}
