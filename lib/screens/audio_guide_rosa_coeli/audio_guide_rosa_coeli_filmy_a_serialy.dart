import 'package:flutter/material.dart';
import 'package:dolni_kounice/components/rosa_coeli.dart';
import 'package:dolni_kounice/components/audio_page.dart';

class AudioGuideRosaCoeliFilmyASerialy extends StatefulWidget {
  static String id = '/audioGuideRosaCoeliFilmyASerialy';
  @override
  _AudioGuideRosaCoeliFilmyASerialyState createState() =>
      _AudioGuideRosaCoeliFilmyASerialyState();
}

class _AudioGuideRosaCoeliFilmyASerialyState extends State<AudioGuideRosaCoeliFilmyASerialy> {

  static int index = 7;
  RosaCoeli rosaCoeli = RosaCoeli();
  RosaCoeli textAudioMap = RosaCoeli();
  String assetImage = RosaCoeli().images[2];
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
