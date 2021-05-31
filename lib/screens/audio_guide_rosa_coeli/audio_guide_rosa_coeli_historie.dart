import 'package:flutter/material.dart';
import 'package:dolni_kounice/components/rosa_coeli.dart';
import 'package:dolni_kounice/components/audio_page.dart';

class AudioGuideRosaCoeliHistorie extends StatefulWidget {
  static String id = '/audioGuideRosaCoeliHistorie';
  @override
  _AudioGuideRosaCoeliHistorieState createState() =>
      _AudioGuideRosaCoeliHistorieState();
}

class _AudioGuideRosaCoeliHistorieState extends State<AudioGuideRosaCoeliHistorie> {

  static int index = 6;
  RosaCoeli rosaCoeli = RosaCoeli();
  RosaCoeli textAudioMap = RosaCoeli();
  String assetImage =RosaCoeli().imageGalleryRosaCoeli[14];
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
