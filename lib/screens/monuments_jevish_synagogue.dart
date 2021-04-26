import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mesto_pamatek/components/gallery_photo_view_page.dart';
import 'package:mesto_pamatek/components/monuments_page.dart';
import 'package:mesto_pamatek/components/choice_container.dart';
import 'package:mesto_pamatek/constants/constants.dart';
import 'package:mesto_pamatek/components/text_default_standart.dart';
import 'package:mesto_pamatek/components/text_default_header.dart';
import 'package:mesto_pamatek/components/my_button.dart';

class MonumentsJevishSynagogue extends StatefulWidget {
  ///Stránka památky Synagoga
  static String id = '/monumentsJevishSynagogue';
  @override
  _MonumentsJevishSynagogueState createState() => _MonumentsJevishSynagogueState();
}

class _MonumentsJevishSynagogueState extends State<MonumentsJevishSynagogue> {
  @override
  Widget build(BuildContext context) {
    return MonumentsPage(
      assetImage:
      'assets/images/pamatky/synagoga/synagoga-venek.jpg',
      textOfAppBar: 'Památky ve městě',
      textHeader: 'Židovská synagoga',
      tag: 'monumentsSynagogue',
      listOfWidget: [
        TextDefaultStandart(
            text:
            'Byla postavena v roce 1652–1655 v raně barokním slohu a patří k nejstarším synagogám na Moravě. V roce 1851 byla přistavěna ženská galerie s pavlačí. Od druhé světové války sloužila převážně jako skladiště. V roce 1988 až 2004 byla komplexně zrestaurována a nyní slouží kulturním a společenským účelům.'),
        SizedBox(height: kDefaultMarginLarger),
        ChoiceContainer(
            assetImageOfChoice:
            'assets/images/pamatky/synagoga/synagoga-vnitrek-2.jpg',
            textOfChoice: 'Galerie',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => GalleryPhotoViewPage(
                    nameOfImageGallery: 'imageGalleryJevishSynagogue',
                  ),
                ),
              );
            }),
        SizedBox(
          height: kDefaultMarginLarger,
        ),
        Center(
          child: MyButton(
              textOfButton:
              'Informace o vstupném, otevírací době a dalších naleznete zde',
              onPressed: () {}),
        ),
        SizedBox(height: kDefaultMarginLarger,),
        TextDefaultHeader(text: 'Historie'),
        SizedBox(height: kDefaultMargin),
        TextDefaultStandart(
          text:
          'Pravděpodobně do 13. století lze položit základy osídlení židů v Dolních Kounicích (i když se z počátku jednalo jistě jen o ojedinělé rodiny). Svědčí o tom i náhrobek ze starého židovského hřbitova v polní trati Horní Opatov, pocházející údajně ze 13. století. Tento hřbitov zanikl v sedmnáctém století a náhrobky byly částečně přeneseny na nový hřbitov.\n\nDolní Kounice a s nimi i židovská obec utrpěly značné škody nejprve pleněním vojsky Betlehena Gábora v r. 1623 a ještě více za třicetileté války, kdy byly zničeny švédskými vojsky. Tehdy bylo město vypleněno, zničeno ohněm a především pak židovská obec. Přeživší židé byli nuceni znovu vybudovat svou obec. Začali si ji budovat v západní poloze od Masarykova náměstí, především v prostoru dnešní ulice U škrobárny, později i kolem nové synagogy. Místo na postavení nové synagogy darovali manželé Gerson ben Chájim se ženou Schöndl, podle zápisu v pamětní knize roku 1652. Její stavba se protáhla patrně do r. 1656. Synagoga tak byla postavena na čestném místě v povýšené poloze přibližně uprostřed zástavby ghetta. Tím byla přirozeně chráněna.\n\nJedná se o samostatně stojící obdélníkovou budovu, síňovou o dvou patrech se zvalbenou střechou. Do jisté míry překvapuje fakt, že není orientována přesně podle světových stran, tedy oltářem k východu, ale v souladu s ostatními kostely ve městě k jihovýchodu. Synagoga byla postavena v maursko - renesančním slohu. Zřejmě nedlouho po výstavbě synagogy byly stěny opatřeny malovanou výzdobou s rostlinným a ornamentálním dekorem a hebrejskými liturgickýni texty. Pravděpodobně v době přístavby v polovině 19. století došlo k přemalbě interiéru formou tupé geometrizující výmalby pomocí šablon. Poslední úpravy proběhly v letech 1934 až 1937.\n\nNa počátku nacistické okupace byla synagoga uzavřena, cenné předměty převezeny do židovského muzea v Praze a po holocaustu již nebyla obnovena. Sloužila n. p. Fruta jako skladiště a dnes jako kulturní a historická památka v majetku Židovské náboženské obce Brno. Po částečné rekonstrukci slouží ke kulturním účelům a využívá ji město Dolní Kounice jako chráněnou památku.',
        ),
        SizedBox(
          height: kDefaultMarginLarger,
        ),

      ],
    );
  }
}


