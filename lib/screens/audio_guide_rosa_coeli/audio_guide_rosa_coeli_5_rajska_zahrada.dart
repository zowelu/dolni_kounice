import 'package:flutter/material.dart';
import 'package:dolni_kounice/components/monuments/rosa_coeli.dart';
import 'package:dolni_kounice/components/audio_page.dart';

class AudioGuideRosaCoeli5RajskaZahrada extends StatefulWidget {
  static String id = '/audioGuideRosaCoeli5RajskaZahrada';
  @override
  _AudioGuideRosaCoeli5RajskaZahradaState createState() =>
      _AudioGuideRosaCoeli5RajskaZahradaState();
}

class _AudioGuideRosaCoeli5RajskaZahradaState extends State<AudioGuideRosaCoeli5RajskaZahrada> {

  static int index = 5;
  RosaCoeli rosaCoeli = RosaCoeli();
  RosaCoeli textAudioMap = RosaCoeli();
  String assetImage =RosaCoeli().imageGallery[8];
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
      tag:  this.tag,
    );
  }
}
