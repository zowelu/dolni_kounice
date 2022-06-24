import 'package:dolni_kounice/components/monuments/jevish_synagogue.dart';
import 'package:flutter/material.dart';
import 'package:dolni_kounice/components/audio_page.dart';

class AudioGuideJevishSynagogueJevishTown extends StatefulWidget {
  static String id = '/audioGuideJevishSynagogueJevishTown';
  @override
  _AudioGuideJevishSynagogueJevishTownState createState() =>
      _AudioGuideJevishSynagogueJevishTownState();
}

class _AudioGuideJevishSynagogueJevishTownState
    extends State<AudioGuideJevishSynagogueJevishTown> {
  static int index = 1;
  JevishSynagogue textAudioMap = JevishSynagogue();
  String assetImage = JevishSynagogue().images[0];
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
