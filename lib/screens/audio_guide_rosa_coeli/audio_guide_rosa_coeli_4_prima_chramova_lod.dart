import 'package:dolni_kounice/components/rosa_coeli.dart';
import 'package:flutter/material.dart';
import 'package:dolni_kounice/components/audio_page.dart';

class AudioGuideRosaCoeli4PrimaChramovaLod extends StatefulWidget {
  static String id = '/audioGuideRosaCoeli4PrimaChramovaLod';
  @override
  _AudioGuideRosaCoeli4PrimaChramovaLodState createState() =>
      _AudioGuideRosaCoeli4PrimaChramovaLodState();
}

class _AudioGuideRosaCoeli4PrimaChramovaLodState extends State<AudioGuideRosaCoeli4PrimaChramovaLod> {

  static int index = 4;
  RosaCoeli rosaCoeli = RosaCoeli();
  RosaCoeli textAudioMap = RosaCoeli();
  String assetImage =RosaCoeli().imageGalleryRosaCoeli[index];
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
