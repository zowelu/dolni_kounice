import 'package:flutter/material.dart';
import 'package:mesto_pamatek/components/rosa_coeli_map_of_path_and_text.dart';
import 'package:mesto_pamatek/components/audio_page.dart';

class AudioGuideRosaCoeli4PrimaChramovaLod extends StatefulWidget {
  @override
  _AudioGuideRosaCoeli4PrimaChramovaLodState createState() =>
      _AudioGuideRosaCoeli4PrimaChramovaLodState();
}

class _AudioGuideRosaCoeli4PrimaChramovaLodState extends State<AudioGuideRosaCoeli4PrimaChramovaLod> {
  AudioGuideRosaCoeliMapOfPathAndText textAudioMap = AudioGuideRosaCoeliMapOfPathAndText();
  String assetImage =
      'assets/images/pamatky/klaster_rosa_coeli/klaster-chram-2.jpg';
  String textHeader = 'Klášter Rosa Coeli';
  String kapitola = '4 - Příčná chrámová loď';
  String path = 'audio/4.mp3';
  String keyOfMap = '4 - Příčná chrámová loď';
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
      onPressedNextButton: (){Navigator.pushNamed(context, '/audioGuideRosaCoeli5RajskaZahrada');},
    );
  }
}
