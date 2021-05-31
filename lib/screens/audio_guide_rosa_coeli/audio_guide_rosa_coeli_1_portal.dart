import 'package:dolni_kounice/components/rosa_coeli.dart';
import 'package:flutter/material.dart';
import 'package:dolni_kounice/components/audio_page.dart';

class AudioGuideRosaCoeli1Portal extends StatefulWidget {
  static String id = '/audioGuideRosaCoeli1Portal';
  @override
  _AudioGuideRosaCoeli1PortalState createState() =>
      _AudioGuideRosaCoeli1PortalState();
}

class _AudioGuideRosaCoeli1PortalState
    extends State<AudioGuideRosaCoeli1Portal> {
  static int index = 1;
  RosaCoeli textAudioMap = RosaCoeli();
  String assetImage = RosaCoeli().imageGallery[2];
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
