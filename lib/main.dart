import 'package:dolni_kounice/screens/monuments/monuments_castle_and_chateau.dart';
import 'package:dolni_kounice/screens/monuments/monuments_chapel_of_st_antonine.dart';
import 'package:dolni_kounice/screens/monuments/monuments_chapel_of_st_john_the_baptist.dart';
import 'package:dolni_kounice/screens/monuments/monuments_church_of_st_peter_and_pavel.dart';
import 'package:dolni_kounice/screens/monuments/monuments_history_of_the_town.dart';
import 'package:dolni_kounice/screens/monuments/monuments_jevish_cemetery.dart';
import 'package:dolni_kounice/screens/monuments/monuments_middle_class_houses.dart';
import 'package:dolni_kounice/screens/monuments/monuments_sacral_buildings.dart';
import 'package:dolni_kounice/screens/monuments/monuments_st_barbora_church.dart';
import 'package:dolni_kounice/screens/services.dart';
import 'package:dolni_kounice/screens/services/accommodations.dart';
import 'package:dolni_kounice/screens/services/coffeeAndRestaurant.dart';
import 'package:dolni_kounice/screens/services/winery.dart';
import 'package:dolni_kounice/screens/trips/tripAroundDolniKounice.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:dolni_kounice/constants/constants.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:dolni_kounice/screens/audio_guide_rosa_coeli/audio_guide_rosa_coeli_1_portal.dart';
import 'package:dolni_kounice/screens/audio_guide_rosa_coeli/audio_guide_rosa_coeli_2_klasterni_kostel.dart';
import 'package:dolni_kounice/screens/audio_guide_rosa_coeli/audio_guide_rosa_coeli_3_vezicka.dart';
import 'package:dolni_kounice/screens/audio_guide_rosa_coeli/audio_guide_rosa_coeli_4_prima_chramova_lod.dart';
import 'package:dolni_kounice/screens/audio_guide_rosa_coeli/audio_guide_rosa_coeli_5_rajska_zahrada.dart';
import 'package:dolni_kounice/screens/audio_guide_rosa_coeli/audio_guide_rosa_coeli_filmy_a_serialy.dart';
import 'package:dolni_kounice/screens/audio_guide_rosa_coeli/audio_guide_rosa_coeli_historie.dart';
import 'package:dolni_kounice/screens/audio_guide_rosa_coeli/audio_guide_rosa_coeli_strecha.dart';
import 'package:dolni_kounice/screens/home_page.dart';
import 'package:dolni_kounice/screens/audio_guide.dart';
import 'package:dolni_kounice/screens/monuments.dart';
import 'package:dolni_kounice/screens/monuments/monuments_jevish_synagogue.dart';
import 'package:dolni_kounice/screens/monuments/monuments_rosa_coeli.dart';
import 'package:dolni_kounice/screens/trips.dart';
import 'package:dolni_kounice/screens/audio_guide_rosa_coeli/audio_guide_rosa_coeli.dart';
import 'package:dolni_kounice/screens/audio_guide_rosa_coeli/audio_guide_rosa_coeli_uvod.dart';
import 'package:dolni_kounice/screens/trips/tripThreeMainDominants.dart';
import 'package:dolni_kounice/screens/trips/tripToChapelOfStAntonine.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(
    MaterialApp(
      home: SplashScreen(
        seconds: 3,
        navigateAfterSeconds: HomePage(),
        title: Text(
          'Dolní Kounice\njsou\n město památek',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: kDFontFamily,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        image: Image.asset(kDAppIconPath),
        backgroundColor: kBackgroundColor,
        styleTextUnderTheLoader: TextStyle(),
        photoSize: 130.0,
        loaderColor: Colors.white,
      ),
      initialRoute: '/',
      routes: {
        HomePage.id: (context) => HomePage(),
        AudioGuide.id: (context) => AudioGuide(),
        Monuments.id: (context) => Monuments(),
        Trips.id: (context) => Trips(),
        AudioGuideRosaCoeli.id: (context) => AudioGuideRosaCoeli(),
        AudioGuideRosaCoeliUvod.id: (context) => AudioGuideRosaCoeliUvod(),
        AudioGuideRosaCoeli1Portal.id: (context) =>
            AudioGuideRosaCoeli1Portal(),
        AudioGuideRosaCoeli2KlasterniKostel.id: (context) =>
            AudioGuideRosaCoeli2KlasterniKostel(),
        AudioGuideRosaCoeli3Vezicka.id: (context) =>
            AudioGuideRosaCoeli3Vezicka(),
        AudioGuideRosaCoeli4PrimaChramovaLod.id: (context) =>
            AudioGuideRosaCoeli4PrimaChramovaLod(),
        AudioGuideRosaCoeli5RajskaZahrada.id: (context) =>
            AudioGuideRosaCoeli5RajskaZahrada(),
        AudioGuideRosaCoeliHistorie.id: (context) =>
            AudioGuideRosaCoeliHistorie(),
        AudioGuideRosaCoeliFilmyASerialy.id: (context) =>
            AudioGuideRosaCoeliFilmyASerialy(),
        AudioGuideRosaCoeliStrecha.id: (context) =>
            AudioGuideRosaCoeliStrecha(),
        MonumentsRosaCoeli.id: (context) => MonumentsRosaCoeli(),
        MonumentsJevishSynagogue.id: (context) => MonumentsJevishSynagogue(),
        MonumentsCastleAndChateau.id: (context) => MonumentsCastleAndChateau(),
        MonumentsChapelOfStAntonine.id: (context) =>
            MonumentsChapelOfStAntonine(),
        MonumentsStBarbaraChurch.id: (context) => MonumentsStBarbaraChurch(),
        MonumentsChurchOfStPeterAndPavel.id: (context) =>
            MonumentsChurchOfStPeterAndPavel(),
        MonumentsChapelOfStJohnTheBaptist.id: (context) =>
            MonumentsChapelOfStJohnTheBaptist(),
        MonumentsJevishCemetery.id: (context) => MonumentsJevishCemetery(),
        MonumentsMiddleClassHouses.id: (context) => MonumentsMiddleClassHouses(),
        MonumentsHistoryOfTheTown.id: (context) => MonumentsHistoryOfTheTown(),
        MonumentsSacralBuildings.id: (context) => MonumentsSacralBuildings(),
        TripThreeMainDominants.id: (context) => TripThreeMainDominants(),
        TripToChapelOfStAntonine.id: (context) => TripToChapelOfStAntonine(),
        TripAroundDolniKounice.id: (context) => TripAroundDolniKounice(),
        CoffeeAndRestaurant.id: (context) => CoffeeAndRestaurant(),
        Services.id: (context) => Services(),
        Winery.id: (context) => Winery(),
        Accommodations.id: (context) => Accommodations(),
      },
    ),
  );
}
