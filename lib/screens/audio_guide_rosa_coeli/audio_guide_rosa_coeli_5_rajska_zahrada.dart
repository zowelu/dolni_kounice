import 'package:flutter/material.dart';
import 'package:dolni_kounice/components/rosa_coeli.dart';
import 'package:dolni_kounice/components/audio_page.dart';

class AudioGuideRosaCoeli5RajskaZahrada extends StatefulWidget {
  static String id = '/audioGuideRosaCoeli5RajskaZahrada';
  @override
  _AudioGuideRosaCoeli5RajskaZahradaState createState() =>
      _AudioGuideRosaCoeli5RajskaZahradaState();
}

class _AudioGuideRosaCoeli5RajskaZahradaState extends State<AudioGuideRosaCoeli5RajskaZahrada> {
  RosaCoeli textAudioMap = RosaCoeli();
  String assetImage =
      'assets/images/pamatky/klaster_rosa_coeli/klaster-rajska-zahrad.jpg';
  String textHeader = 'Klášter Rosa Coeli';
  String kapitola = '5 - Rajská zahrada';
  String path = 'audio/rosa_coeli/5.mp3';
  String keyOfMap = '5 - Rajská zahrada';
  String tag = '5 - Rajská zahrada';

  @override
  Widget build(BuildContext context) {
    return AudioPage(
      assetImage: assetImage,
      textHeader: textHeader,
      kapitola: kapitola,
      path: path,
      textAudioMap: textAudioMap,
      keyOfMap: keyOfMap,
      tag:  this.tag,
    );
  }
}
