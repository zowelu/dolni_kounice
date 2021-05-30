import 'package:flutter/material.dart';
import 'package:dolni_kounice/components/rosa_coeli_map_of_path_and_text.dart';
import 'package:dolni_kounice/components/audio_page.dart';

class AudioGuideRosaCoeliUvod extends StatefulWidget {
  static String id = '/audioGuideRosaCoeliUvod';
  @override
  _AudioGuideRosaCoeliUvodState createState() =>
      _AudioGuideRosaCoeliUvodState();
}

class _AudioGuideRosaCoeliUvodState extends State<AudioGuideRosaCoeliUvod> {
  RosaCoeli textAudioMap = RosaCoeli();
  String assetImage =
      'assets/images/pamatky/klaster_rosa_coeli/klaster-pohled-brana.jpg';
  String textHeader = 'Klášter Rosa Coeli';
  String kapitola = 'Úvod';
  String path = 'audio/rosa_coeli/uvod.mp3';
  String keyOfMap = 'Úvod';
  String tag = 'Úvod';

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
