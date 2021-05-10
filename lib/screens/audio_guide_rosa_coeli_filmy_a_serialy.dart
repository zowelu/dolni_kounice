import 'package:flutter/material.dart';
import 'package:dolni_kounice/components/rosa_coeli_map_of_path_and_text.dart';
import 'package:dolni_kounice/components/audio_page.dart';

class AudioGuideRosaCoeliFilmyASerialy extends StatefulWidget {
  static String id = '/audioGuideRosaCoeliFilmyASerialy';
  @override
  _AudioGuideRosaCoeliFilmyASerialyState createState() =>
      _AudioGuideRosaCoeliFilmyASerialyState();
}

class _AudioGuideRosaCoeliFilmyASerialyState extends State<AudioGuideRosaCoeliFilmyASerialy> {
  AudioGuideRosaCoeliMapOfPathAndText textAudioMap = AudioGuideRosaCoeliMapOfPathAndText();
  String assetImage =
      'assets/images/pamatky/klaster_rosa_coeli/photographic-film-wooden-background_compressed.jpg';
  String textHeader = 'Klášter Rosa Coeli';
  String kapitola = 'Jaké filmy a seriály se v klášteře natáčely?';
  String path = 'audio/filmy.mp3';
  String keyOfMap = 'FilmyASeriály';
  String tag = 'FilmyASeriály';

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
