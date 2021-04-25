import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mesto_pamatek/screens/about_app_page.dart';
import 'package:mesto_pamatek/screens/audio_guide_rosa_coeli_1_portal.dart';
import 'package:mesto_pamatek/screens/audio_guide_rosa_coeli_2_klasterni_kostel.dart';
import 'package:mesto_pamatek/screens/audio_guide_rosa_coeli_3_vezicka.dart';
import 'package:mesto_pamatek/screens/audio_guide_rosa_coeli_4_prima_chramova_lod.dart';
import 'package:mesto_pamatek/screens/audio_guide_rosa_coeli_5_rajska_zahrada.dart';
import 'package:mesto_pamatek/screens/audio_guide_rosa_coeli_filmy_a_serialy.dart';
import 'package:mesto_pamatek/screens/audio_guide_rosa_coeli_historie.dart';
import 'package:mesto_pamatek/screens/audio_guide_rosa_coeli_strecha.dart';
import 'package:mesto_pamatek/screens/home_page.dart';
import 'package:mesto_pamatek/screens/loading_page.dart';
import 'package:mesto_pamatek/screens/audio_guide.dart';
import 'package:mesto_pamatek/screens/monuments.dart';
import 'package:mesto_pamatek/screens/monuments_jevish_synagogue.dart';
import 'package:mesto_pamatek/screens/monuments_rosa_coeli.dart';
import 'package:mesto_pamatek/screens/trips.dart';
import 'package:mesto_pamatek/screens/audio_guide_rosa_coeli.dart';
import 'package:mesto_pamatek/screens/audio_guide_rosa_coeli_uvod.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(
    MaterialApp(
      home: LoadingPage(),
      initialRoute: '/',
      routes: {
        HomePage.id: (context) => HomePage(),
        AudioGuide.id: (context) => AudioGuide(),
        Monuments.id: (context) => Monuments(),
        '/trips': (context) => Trips(),
        '/audioGuideRosaCoeli': (context) => AudioGuideRosaCoeli(),
        '/audioGuideJewishSynagogue': (context) => AudioGuideRosaCoeli(),
        '/audioGuideChapelOfStAnthony': (context) => AudioGuideRosaCoeli(),
        '/audioGuideCastleAndChateau': (context) => AudioGuideRosaCoeli(),
        '/audioGuideChapelOfStJohnBaptist': (context) => AudioGuideRosaCoeli(),
        '/audioGuideJevishCemetery': (context) => AudioGuideRosaCoeli(),
        '/audioGuideRosaCoeliUvod' : (context) => AudioGuideRosaCoeliUvod(),
        '/audioGuideRosaCoeli1Portal': (context) => AudioGuideRosaCoeli1Portal(),
        '/audioGuideRosaCoeli2KlasterniKostel': (context) => AudioGuideRosaCoeli2KlasterniKostel(),
        '/audioGuideRosaCoeli3Vezicka': (context) => AudioGuideRosaCoeli3Vezicka(),
        '/audioGuideRosaCoeli4PrimaChramovaLod': (context) => AudioGuideRosaCoeli4PrimaChramovaLod(),
        '/audioGuideRosaCoeli5RajskaZahrada': (context) => AudioGuideRosaCoeli5RajskaZahrada(),
        '/audioGuideRosaCoeliHistorie': (context) => AudioGuideRosaCoeliHistorie(),
        '/audioGuideRosaCoeliFilmyASerialy': (context) => AudioGuideRosaCoeliFilmyASerialy(),
        '/audioGuideRosaCoeliStrecha': (context) => AudioGuideRosaCoeliStrecha(),
        '/monumentsRosaCoeli': (context) => MonumentsRosaCoeli(),
        '/monumentsJevishSynagogue': (context) => MonumentsJevishSynagogue(),
        '/aboutApp': (context) => AboutAppPage(),
      }
    ),
  );
}
