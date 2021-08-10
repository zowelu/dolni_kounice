import 'package:dolni_kounice/components/monuments/chapel_of_st_antonine.dart';
import 'package:flutter/material.dart';
import 'package:dolni_kounice/components/audio_page.dart';

class AudioGuideChapelOfStAntonine1 extends StatefulWidget {
  static String id = '/audioGuideChapelOfStAntonine1';
  @override
  _AudioGuideChapelOfStAntonine1State createState() =>
      _AudioGuideChapelOfStAntonine1State();
}

class _AudioGuideChapelOfStAntonine1State
    extends State<AudioGuideChapelOfStAntonine1> {
  static int index = 0;
  ChapelOfStAntonine textAudioMap = ChapelOfStAntonine();
  String assetImage = ChapelOfStAntonine().imageGallery[2];
  String textHeader = ChapelOfStAntonine().audioText.keys.elementAt(index);
  String path = ChapelOfStAntonine().mp3[index];
  String keyOfMap = ChapelOfStAntonine().audioText.keys.elementAt(index);
  String tag = ChapelOfStAntonine().audioText.keys.elementAt(index);

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
