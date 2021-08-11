import 'package:dolni_kounice/components/image_on_page_with_ontap.dart';
import 'package:dolni_kounice/components/monuments/middle_class_houses.dart';
import 'package:dolni_kounice/components/single_photo_view_page.dart';
import 'package:flutter/material.dart';
import 'package:dolni_kounice/screens/audio_guides/audio_guide_rosa_coeli/audio_guide_rosa_coeli.dart';
import 'package:flutter/cupertino.dart';
import 'package:dolni_kounice/components/gallery_photo_view_page.dart';
import 'package:dolni_kounice/components/monuments_page.dart';
import 'package:dolni_kounice/components/choice_container.dart';
import 'package:dolni_kounice/components/my_button.dart';
import 'package:dolni_kounice/constants/constants.dart';
import 'package:dolni_kounice/components/text_default_standart.dart';
import 'package:dolni_kounice/components/text_default_header.dart';
import 'package:dolni_kounice/components/open_url_in_browser.dart';

class MonumentsMiddleClassHouses extends StatelessWidget {
  static String id = MiddleClassHouses().id;
  static MiddleClassHouses middleClassHouses = MiddleClassHouses();
  @override
  Widget build(BuildContext context) {
    return MonumentsPage(
      assetImage: middleClassHouses.imageGallery[0],
      textOfAppBar: 'Průvodce památkami',
      textHeader: middleClassHouses.name,
      tag: middleClassHouses.tag,
      isFloatingButton: false,
      onPressedFloatingButton: () {
        Navigator.pushNamed(context, AudioGuideRosaCoeli.id);
      },
      textOfFloatingButton: 'Přejít na audioprůvodce',
      listOfWidget: [
        SizedBox(
          height: kDMarginLarger,
        ),
        TextDefaultHeader(text: 'Měšťanské domy'),
        SizedBox(height: kDMargin),
        TextDefaultStandart(
            text:
                'Nejstarší domy jsou na Masarykově náměstí a začátku přilehlých ulic Hlavní a Tovární. Všechny mají bohatou historii doloženou až do šestnáctého století.'),
        SizedBox(height: kDMarginLarger),
        ChoiceContainer(
            assetImageOfChoice: middleClassHouses.imageGallery[3],
            textOfChoice: 'Galerie',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => GalleryPhotoViewPage(
                    nameOfImageGallery: middleClassHouses.nameOfImageGallery,
                  ),
                ),
              );
            }),
        SizedBox(
          height: kDMarginLarger,
        ),
        Center(
          child: MyButton(
            textOfButton:
                'Informace o vstupném, otevírací době a dalších naleznete zde',
            onPressed: () async {
              //po stisknutí otevře stránku v externím prohlížeči
              OpenUrlInBrowser().openUrl(middleClassHouses.url);
            },
          ),
        ),
        SizedBox(
          height: kDMarginLarger,
        ),
        TextDefaultHeader(text: 'Masarykovo náměstí'),
        MiddleClassHouse(
          adress: 'Masarykovo náměstí 1',
          imageIndex: 0,
          text:
              'První zmínka o tomto domu pochází z roku 1657 - Fridrich Mossig. Po 2. světové válce byl dům zabrán jako konfiskát. Později se dům začal využívat a využívá se dodnes jako městský úřad. Za budovou bývala zahrada, místo které se v roce 1950 vybudovala nová hasičská zbrojnice.',
        ),
        MiddleClassHouse(
          adress: 'Masarykovo náměstí 3',
          imageIndex: 1,
          text:
          'Tento dům byl vystaven roku 1688 Pavlem Čermákem, který také vlastnil hospodu vedle staré radnice, která byla zbourána kvůli výstavbě nového kostela. Dále vlastnil také grunt v Jezeřanech. Od roku 1714 vlastnili tento dům: starosta Mates Cantner (perníkář), poté Franz Chmelíček. V současné době vlastní dům pan Antonín Světlík, který provozuje drogerii.',
        ),
        MiddleClassHouse(
          adress: 'Masarykovo náměstí 4',
          imageIndex: 2,
          text:
          'Tato budova vznikla někdy před rokem 1680 (tehdy pouze jako přízemní). V těchto letech dům koupil purkrabí Vlasatického panství - Christian Lotnitzer a v roce 1690 písař Johann Tyll, který měl dluhy. Dům vlastnil i hejtman Jan Kunel a potom pravlovský rychtář.\nOd roku 1901, kdy proběhla přestavba židovským majitelem škrobárny, má budova stejnou podobu a nyní slouží jako zdravotní středisko občanům.',
        ),
        MiddleClassHouse(
          adress: 'Masarykovo náměstí 5',
          imageIndex: 3,
          text:
          'Původní zápis pochází z roku 1597 a patřil Humpoleckým z Rybenska. Od roku 1717 sloužil i jako hostinec. Dům od té doby prošel rozsáhlými úpravami a od roku 2001 má současnou podobu a slouží jako Hotel Vinum coeli. ',
        ),
        MiddleClassHouse(
          adress: 'Masarykovo náměstí 20',
          imageIndex: 4,
          text:
          'Původní Římskokatolická fara byla kvůli povodni v 17. století přestěhována do domu č. 129/20 na Masarykově náměstí a svému účelu slouží dodnes.',
        ),
        SizedBox(
          height: kDMarginLarger,
        ),
        TextDefaultHeader(text: 'Hlavní'),
        MiddleClassHouse(
          adress: 'Hlavní 16',
          imageIndex: 5,
          text:
          'v současnosti uzavřená pizzérie   Tento jeden z nejstarších domů byl vystaven roku 1590 tehdejším starostou Dolních Kounice - Janem Tišnovským z Cineperku. V domě bylo například: řeznictví, Denkova hospoda, smíšené zboží a donedávna pizzerie.',
        ),
        MiddleClassHouse(
          adress: 'Hlavní 6',
          imageIndex: 6,
          text:
          'Tato budova se nachází hned vedle bývalé lékárny (dům napravo). Dům byl postaven v 17. století a teprve v průběhu 1. poloviny 20. století se budova dočkala zrekonstruované fasády. Průjezd v budově je zaklenutý valeně s výsečemi. V roce 1684 tu sídlil rod Krawany - kuželuhové a mýdlaři, kteří přišli z Itálie, poté rodina Czapků.\n\nV domě bylo například: papírnictví, čistírna, drogérie, a v současnosti papír / hračky a cukrárna...',
        ),
        MiddleClassHouse(
          adress: 'Hlavní 4',
          imageIndex: 7,
          text:
          'Tento dům pochází přibližně ze 17. století. Přestavby se dům dočkal koncem 19. století a tuto podobu si zachoval dodnes. Dříve byla v tomto domě lékárna (přibližně od roku 1879 do 1990). V průjezdu se nachází heraldický náhrobek rodiny měšťanů Kryštofa Jičínského z roku 1608, který stál na starém hřbitově u původního farního kostela.\n\nDnes je dům v soukromých rukou a přízemí se využívá jako prodejna s textilem.',
        ),
        SizedBox(
          height: kDMarginLarger,
        ),
        TextDefaultHeader(text: 'Tovární'),
        MiddleClassHouse(
          adress: 'Tovární 1',
          imageIndex: 8,
          text:
          'Původní renesanční dům byl v pozdější době přebudovaný. Dům byl do roku 1945 využíván jako sídlo VB a zároveň jako budova městského úřadu. Do roku 1949 tu byla dokonce knihařská dílna Josefa Svobody a jeho syna Jindřicha - uměleckého knihvazače. V tomto domě bydlel i Jaroslav Skryja.\n\nDnes se přízemí využívá jako bytová jednotka a I. patro se využívá pro účely městské knihovny.',
        ),
        MiddleClassHouse(
          adress: 'Tovární 3',
          imageIndex: 9,
          text:
          'První zmínka o tomto domě pochází z roku 1787. Nyní je v tomto domě prodejna se zdravou výživou, sauna, kosmetický a kadeřnický salon. Dříve tu byl módní salon paní Gottwaldové.',
        ),
        MiddleClassHouse(
          adress: 'Tovární 7',
          imageIndex: 10,
          text:
          'Dům pohází z roku 1578. Dům má renesanční jádro, průjezd do dvora, kde se nachází původní dláždění. Ve dvoře můžete nalézt kůlny pro dostavníky.\n\nV současné době se zde nachází několik bytových jednotek.',
        ),
      ],
    );
  }
}

class MiddleClassHouse extends StatelessWidget {
  static MiddleClassHouses middleClassHouses = MiddleClassHouses();
  MiddleClassHouse(
      {@required this.adress, @required this.imageIndex, @required this.text});

  final String adress;
  final int imageIndex;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: kDMargin),
        TextDefaultStandart(
          text: adress,
        ),
        SizedBox(height: kDMargin),
        ImageOnPageWithOnTap(
          assetImage: middleClassHouses.imageGallery[imageIndex],
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SinglePhotoViewPage(
                    assetImage: middleClassHouses.imageGallery[imageIndex]),
              ),
            );
          },
        ),
        SizedBox(height: kDMargin),
        TextDefaultStandart(text: text),
        SizedBox(height: kDMarginLarger),
      ],
    );
  }
}
