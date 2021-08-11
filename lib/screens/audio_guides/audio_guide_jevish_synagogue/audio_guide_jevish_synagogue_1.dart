import 'package:dolni_kounice/components/monuments/jevish_synagogue.dart';
import 'package:flutter/material.dart';
import 'package:dolni_kounice/components/audio_page.dart';

class AudioGuideJevishSynagogue1 extends StatefulWidget {
  static String id = '/audioGuideJevishSynagogue1';
  @override
  _AudioGuideJevishSynagogue1State createState() =>
      _AudioGuideJevishSynagogue1State();
}

class _AudioGuideJevishSynagogue1State
    extends State<AudioGuideJevishSynagogue1> {
  static int index = 0;
  JevishSynagogue textAudioMap = JevishSynagogue();
  String assetImage = JevishSynagogue().imageGallery[7];
  String textHeader = JevishSynagogue().audioText.keys.elementAt(index);
  String path = JevishSynagogue().mp3[index];
  String keyOfMap = JevishSynagogue().audioText.keys.elementAt(index);
  String tag = JevishSynagogue().audioText.keys.elementAt(index);

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
