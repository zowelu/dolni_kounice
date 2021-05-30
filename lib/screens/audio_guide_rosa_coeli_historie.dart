import 'package:flutter/material.dart';
import 'package:dolni_kounice/components/rosa_coeli_map_of_path_and_text.dart';
import 'package:dolni_kounice/components/audio_page.dart';

class AudioGuideRosaCoeliHistorie extends StatefulWidget {
  static String id = '/audioGuideRosaCoeliHistorie';
  @override
  _AudioGuideRosaCoeliHistorieState createState() =>
      _AudioGuideRosaCoeliHistorieState();
}

class _AudioGuideRosaCoeliHistorieState extends State<AudioGuideRosaCoeliHistorie> {
  RosaCoeli textAudioMap = RosaCoeli();
  String assetImage =
      'assets/images/pamatky/klaster_rosa_coeli/klaster-1720.jpg';
  String textHeader = 'Klášter Rosa Coeli';
  String kapitola = 'Historie';
  String path = 'audio/rosa_coeli/historie.mp3';
  String keyOfMap = 'Historie';
  String tag = 'Historie';

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
