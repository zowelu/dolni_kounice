import 'package:flutter/material.dart';
import 'package:mesto_pamatek/components/audio_page.dart';
import 'package:mesto_pamatek/components/rosa_coeli_map_of_path_and_text.dart';

class AudioGuideRosaCoeli1Portal extends StatefulWidget {
  static String id = '/audioGuideRosaCoeli1Portal';
  @override
  _AudioGuideRosaCoeli1PortalState createState() =>
      _AudioGuideRosaCoeli1PortalState();
}

class _AudioGuideRosaCoeli1PortalState
    extends State<AudioGuideRosaCoeli1Portal> {
  AudioGuideRosaCoeliMapOfPathAndText textAudioMap =
      AudioGuideRosaCoeliMapOfPathAndText();

  String assetImage =
      'assets/images/pamatky/klaster_rosa_coeli/klaster-portal.jpg';
  String textHeader = 'Klášter Rosa Coeli';
  String kapitola = '1 - Portál';
  String path = 'audio/1.mp3';
  String keyOfMap = '1 - Portál';
  String tag = 'audioKlasterRosaCoeliPortal';


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
