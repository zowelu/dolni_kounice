import 'package:dolni_kounice/components/monuments/rosa_coeli.dart';
import 'package:flutter/material.dart';
import 'package:dolni_kounice/components/audio_page.dart';

class AudioGuideRosaCoeliUvod extends StatefulWidget {
  static String id = '/audioGuideRosaCoeliUvod';
  @override
  _AudioGuideRosaCoeliUvodState createState() =>
      _AudioGuideRosaCoeliUvodState();
}

class _AudioGuideRosaCoeliUvodState extends State<AudioGuideRosaCoeliUvod> {
  static int index = 0;
  RosaCoeli textAudioMap = RosaCoeli();
  String assetImage = RosaCoeli().imageGallery[index];
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
