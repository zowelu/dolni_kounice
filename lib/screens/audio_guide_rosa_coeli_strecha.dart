import 'package:flutter/material.dart';
import 'package:dolni_kounice/components/rosa_coeli_map_of_path_and_text.dart';
import 'package:dolni_kounice/components/audio_page.dart';

class AudioGuideRosaCoeliStrecha extends StatefulWidget {
  static String id = '/audioGuideRosaCoeliStrecha';
  @override
  _AudioGuideRosaCoeliStrechaState createState() =>
      _AudioGuideRosaCoeliStrechaState();
}

class _AudioGuideRosaCoeliStrechaState extends State<AudioGuideRosaCoeliStrecha> {
  AudioGuideRosaCoeliMapOfPathAndText textAudioMap = AudioGuideRosaCoeliMapOfPathAndText();
  String assetImage =
      'assets/images/pamatky/klaster_rosa_coeli/klaster-letecky.jpg';
  String textHeader = 'Klášter Rosa Coeli';
  String kapitola = 'Proč klášter nemá střechu?';
  String path = 'audio/strecha.mp3';
  String keyOfMap = 'Střecha';
  String tag = 'Střecha';

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
