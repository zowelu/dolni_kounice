
import 'package:dolni_kounice/components/monuments/jevish_synagogue.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dolni_kounice/components/gallery_photo_view_page.dart';
import 'package:dolni_kounice/components/monuments_page.dart';
import 'package:dolni_kounice/components/choice_container.dart';
import 'package:dolni_kounice/constants/constants.dart';
import 'package:dolni_kounice/components/text_default_standart.dart';
import 'package:dolni_kounice/components/text_default_header.dart';
import 'package:dolni_kounice/components/my_button.dart';
import 'package:dolni_kounice/components/open_url_in_browser.dart';

class MonumentsJevishSynagogue extends StatelessWidget {
  ///Stránka památky Synagoga
  static String id = JevishSynagogue().id;

  static JevishSynagogue jevishSynagogue = JevishSynagogue();
  @override
  Widget build(BuildContext context) {
    return MonumentsPage(
      assetImage: 'assets/images/pamatky/synagoga/synagoga-venek.jpg',
      textOfAppBar: 'Průvodce památkami',
      textHeader: jevishSynagogue.name,
      isFloatingButton: false,
      onPressedFloatingButton: null,
      textOfFloatingButton: null,
      tag: jevishSynagogue.tag,
      listOfWidget: [
        TextDefaultStandart(
            text:
                'Byla postavena v roce 1652–1655 v raně barokním slohu a patří k nejstarším synagogám na Moravě. V roce 1851 byla přistavěna ženská galerie s pavlačí. Od druhé světové války sloužila převážně jako skladiště. V roce 1988 až 2004 byla komplexně zrestaurována a nyní slouží kulturním a společenským účelům.'),
        SizedBox(height: kDMarginLarger),
        ChoiceContainer(
            assetImageOfChoice:
                jevishSynagogue.imageGallery[7],
            textOfChoice: 'Galerie',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => GalleryPhotoViewPage(
                    nameOfImageGallery: jevishSynagogue.nameOfImageGallery,
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
              OpenUrlInBrowser().openUrl(
                  jevishSynagogue.url);
            },
          ),
        ),
        SizedBox(
          height: kDMarginLarger,
        ),
        TextDefaultHeader(text: 'Historie'),
        SizedBox(height: kDMargin),
        TextDefaultStandart(
          text:
              'Pravděpodobně do 13. století lze položit základy osídlení židů v Dolních Kounicích (i když se z počátku jednalo jistě jen o ojedinělé rodiny). Svědčí o tom i náhrobek ze starého židovského hřbitova v polní trati Horní Opatov, pocházející údajně ze 13. století. Tento hřbitov zanikl v sedmnáctém století a náhrobky byly částečně přeneseny na nový hřbitov.\n\nDolní Kounice a s nimi i židovská obec utrpěly značné škody nejprve pleněním vojsky Betlehena Gábora v r. 1623 a ještě více za třicetileté války, kdy byly zničeny švédskými vojsky. Tehdy bylo město vypleněno, zničeno ohněm a především pak židovská obec. Přeživší židé byli nuceni znovu vybudovat svou obec. Začali si ji budovat v západní poloze od Masarykova náměstí, především v prostoru dnešní ulice U škrobárny, později i kolem nové synagogy. Místo na postavení nové synagogy darovali manželé Gerson ben Chájim se ženou Schöndl, podle zápisu v pamětní knize roku 1652. Její stavba se protáhla patrně do r. 1656. Synagoga tak byla postavena na čestném místě v povýšené poloze přibližně uprostřed zástavby ghetta. Tím byla přirozeně chráněna.\n\nJedná se o samostatně stojící obdélníkovou budovu, síňovou o dvou patrech se zvalbenou střechou. Do jisté míry překvapuje fakt, že není orientována přesně podle světových stran, tedy oltářem k východu, ale v souladu s ostatními kostely ve městě k jihovýchodu. Synagoga byla postavena v maursko - renesančním slohu. Zřejmě nedlouho po výstavbě synagogy byly stěny opatřeny malovanou výzdobou s rostlinným a ornamentálním dekorem a hebrejskými liturgickýni texty. Pravděpodobně v době přístavby v polovině 19. století došlo k přemalbě interiéru formou tupé geometrizující výmalby pomocí šablon. Poslední úpravy proběhly v letech 1934 až 1937.\n\nNa počátku nacistické okupace byla synagoga uzavřena, cenné předměty převezeny do židovského muzea v Praze a po holocaustu již nebyla obnovena. Sloužila n. p. Fruta jako skladiště a dnes jako kulturní a historická památka v majetku Židovské náboženské obce Brno. Po částečné rekonstrukci slouží ke kulturním účelům a využívá ji město Dolní Kounice jako chráněnou památku.',
        ),
        SizedBox(
          height: kDMarginLarger,
        ),
      ],
    );
  }
}
