import 'package:flutter/material.dart';
import 'package:mesto_pamatek/constants/constants.dart';
import 'package:mesto_pamatek/components/choice_container.dart';
import 'package:mesto_pamatek/components/container_header_image_background.dart';
import 'package:mesto_pamatek/screens/audio_guide_rosa_coeli_1_portal.dart';
import 'package:mesto_pamatek/screens/audio_guide_rosa_coeli_2_klasterni_kostel.dart';
import 'package:mesto_pamatek/screens/audio_guide_rosa_coeli_3_vezicka.dart';
import 'package:mesto_pamatek/screens/audio_guide_rosa_coeli_4_prima_chramova_lod.dart';
import 'package:mesto_pamatek/screens/audio_guide_rosa_coeli_5_rajska_zahrada.dart';
import 'package:mesto_pamatek/screens/audio_guide_rosa_coeli_uvod.dart';

class AudioGuideRosaCoeli extends StatefulWidget {
  static String id = '/audioGuideRosaCoeli';
  @override
  _AudioGuideRosaCoeliState createState() => _AudioGuideRosaCoeliState();
}

class _AudioGuideRosaCoeliState extends State<AudioGuideRosaCoeli> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Město památek',
      home: Scaffold(
        backgroundColor: kBackgroundColor,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: kBackgroundColor,
          automaticallyImplyLeading: true,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context, '/audioGuide');
            },
          ),
          title: Text(
            'Audioprůvodce',
            style: TextStyle(
                fontFamily: kDefaultFontFamily,
                fontSize: kDefaultFontSizeHeader),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ContainerHeaderImageBackground(
                  assetImage:
                      'assets/images/pamatky/klaster_rosa_coeli/klaster-pohled-zepredu.jpg',
                  textHeader: 'Klášter Rosa Coeli',
                  text: '',
                ),
                Column(
                  children: [
                    Text(
                      'Děkujeme, že jste zvolili audioprůvodce.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: kDefaultColorTextWhite,
                          fontSize: kDefaultFontSizeText),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Icon(
                      const IconData(0xe7a9, fontFamily: 'MaterialIcons'),
                      color: Colors.white,
                      size: 50,
                    ),
                    Text(
                      'Prosíme poslouchejte se sluchátky nebo s mobilem na uchu, aby nebyli rušeni ostatní návštěvníci.\n\nPřípadně si můžete přečíst přepis nahrávky, který se nachází pod přehrávačem. Předem děkujeme.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: kDefaultColorTextWhite,
                          fontSize: kDefaultFontSizeText),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(kDefaultPadding),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Image(
                          image: AssetImage(
                              'assets/images/pamatky/klaster_rosa_coeli/mapa_klaster.png'),
                        ),
                      ),
                      SizedBox(height: 30.0),
                      ChoiceContainer(
                        assetImageOfChoice:
                        'assets/images/pamatky/klaster_rosa_coeli/klaster-pohled-brana.jpg',
                        textOfChoice: 'Úvod',
                        onTap: () {
                          Navigator.pushNamed(
                              context, AudioGuideRosaCoeliUvod.id);
                        },
                      ),
                      ChoiceContainer(
                        assetImageOfChoice:
                        'assets/images/pamatky/klaster_rosa_coeli/klaster-portal.jpg',
                        textOfChoice: '1 - Portál',
                        onTap: () {
                          Navigator.pushNamed(
                              context, AudioGuideRosaCoeli1Portal.id);
                        },
                      ),
                      ChoiceContainer(
                        assetImageOfChoice:
                        'assets/images/pamatky/klaster_rosa_coeli/klaster-chram-1.jpg',
                        textOfChoice: '2 - Klášterní kostel',
                        onTap: () {
                          Navigator.pushNamed(
                              context, AudioGuideRosaCoeli2KlasterniKostel.id);
                        },
                      ),
                      ChoiceContainer(
                        assetImageOfChoice:
                        'assets/images/pamatky/klaster_rosa_coeli/klaster-pohled-zepredu.jpg',
                        textOfChoice: '3 - Věžička',
                        onTap: () {
                          Navigator.pushNamed(
                              context, AudioGuideRosaCoeli3Vezicka.id);
                        },
                      ),
                      ChoiceContainer(
                        assetImageOfChoice:
                        'assets/images/pamatky/klaster_rosa_coeli/klaster-chram-2.jpg',
                        textOfChoice: '4 - Přímá chrámová loď',
                        onTap: () {
                          Navigator.pushNamed(
                              context, AudioGuideRosaCoeli4PrimaChramovaLod.id);
                        },
                      ),
                      ChoiceContainer(
                        assetImageOfChoice:
                        'assets/images/pamatky/klaster_rosa_coeli/klaster-rajska-zahrad.jpg',
                        textOfChoice: '5 - Rajská zahrada',
                        onTap: () {
                          Navigator.pushNamed(
                              context, AudioGuideRosaCoeli5RajskaZahrada.id);
                        },
                      ),
                      ChoiceContainer(
                        assetImageOfChoice:
                        'assets/images/pamatky/klaster_rosa_coeli/klaster-1720.jpg',
                        textOfChoice: 'Historie',
                        onTap: () {
                          Navigator.pushNamed(
                              context, '/audioGuideRosaCoeliHistorie');
                        },
                      ),
                      ChoiceContainer(
                        assetImageOfChoice:
                        'assets/images/pamatky/klaster_rosa_coeli/photographic-film-wooden-background_compressed.jpg',
                        textOfChoice: 'Které filmy a seriály se v klášteře natáčely?',
                        onTap: () {
                          Navigator.pushNamed(
                              context, '/audioGuideRosaCoeliFilmyASerialy');
                        },
                      ),
                      ChoiceContainer(
                        assetImageOfChoice:
                        'assets/images/pamatky/klaster_rosa_coeli/klaster-letecky.jpg',
                        textOfChoice: 'Proč klášter nemá střechu?',
                        onTap: () {
                          Navigator.pushNamed(
                              context, '/audioGuideRosaCoeliStrecha');
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
