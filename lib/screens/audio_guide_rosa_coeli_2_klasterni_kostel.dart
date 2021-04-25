import 'package:flutter/material.dart';
import 'package:mesto_pamatek/components/rosa_coeli_map_of_path_and_text.dart';
import 'package:mesto_pamatek/components/audio_page.dart';

class AudioGuideRosaCoeli2KlasterniKostel extends StatefulWidget {
  static String id = '/audioGuideRosaCoeli2KlasterniKostel';
  @override
  _AudioGuideRosaCoeli2KlasterniKostelState createState() =>
      _AudioGuideRosaCoeli2KlasterniKostelState();
}

class _AudioGuideRosaCoeli2KlasterniKostelState extends State<AudioGuideRosaCoeli2KlasterniKostel> {
  AudioGuideRosaCoeliMapOfPathAndText textAudioMap = AudioGuideRosaCoeliMapOfPathAndText();
  String assetImage =
      'assets/images/pamatky/klaster_rosa_coeli/klaster-chram-1.jpg';
  String textHeader = 'Klášter Rosa Coeli';
  String kapitola = '2 - Klášterní kostel';
  String path = 'audio/2.mp3';
  String keyOfMap = '2 - Klášterní kostel';
  Function onPressedNextButton;

  @override
  Widget build(BuildContext context) {
    return AudioPage(
      assetImage: assetImage,
      textHeader: textHeader,
      kapitola: kapitola,
      path: path,
      textAudioMap: textAudioMap,
      keyOfMap: keyOfMap,
      onPressedNextButton: (){Navigator.pushNamed(context, '/audioGuideRosaCoeli3Vezicka');},
    );
  }
}

