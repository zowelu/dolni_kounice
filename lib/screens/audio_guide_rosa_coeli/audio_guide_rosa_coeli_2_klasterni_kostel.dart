import 'package:dolni_kounice/components/rosa_coeli.dart';
import 'package:flutter/material.dart';
import 'package:dolni_kounice/components/audio_page.dart';

class AudioGuideRosaCoeli2KlasterniKostel extends StatefulWidget {
  static String id = '/audioGuideRosaCoeli2KlasterniKostel';
  @override
  _AudioGuideRosaCoeli2KlasterniKostelState createState() =>
      _AudioGuideRosaCoeli2KlasterniKostelState();
}

class _AudioGuideRosaCoeli2KlasterniKostelState extends State<AudioGuideRosaCoeli2KlasterniKostel> {

  static int index = 2;
  RosaCoeli textAudioMap = RosaCoeli();
  String assetImage =RosaCoeli().imageGalleryRosaCoeli[3];
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

