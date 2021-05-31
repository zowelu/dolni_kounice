import 'package:flutter/material.dart';
import 'package:dolni_kounice/components/rosa_coeli.dart';
import 'package:dolni_kounice/components/audio_page.dart';

class AudioGuideRosaCoeliStrecha extends StatefulWidget {
  static String id = '/audioGuideRosaCoeliStrecha';
  @override
  _AudioGuideRosaCoeliStrechaState createState() =>
      _AudioGuideRosaCoeliStrechaState();
}

class _AudioGuideRosaCoeliStrechaState extends State<AudioGuideRosaCoeliStrecha> {

  static int index = 8;
  RosaCoeli rosaCoeli = RosaCoeli();
  RosaCoeli textAudioMap = RosaCoeli();
  String assetImage =RosaCoeli().imageGallery[15];
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
