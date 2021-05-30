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
  RosaCoeli textAudioMap = RosaCoeli();
  String assetImage =
      'assets/images/pamatky/klaster_rosa_coeli/klaster-chram-2.jpg';
  String textHeader = 'Klášter Rosa Coeli';
  String kapitola = '4 - Příčná chrámová loď';
  String path = 'audio/rosa_coeli/4.mp3';
  String keyOfMap = '4 - Příčná chrámová loď';
  String tag = '4 - Příčná chrámová loď';

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
