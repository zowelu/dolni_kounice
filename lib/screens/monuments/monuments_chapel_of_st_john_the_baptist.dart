import 'package:dolni_kounice/components/image_on_page_with_ontap.dart';
import 'package:dolni_kounice/components/monuments/chapel_of_st_john_the_baptist.dart';
import 'package:dolni_kounice/components/single_photo_view_page.dart';
import 'package:flutter/material.dart';
import 'package:dolni_kounice/screens/audio_guide_rosa_coeli/audio_guide_rosa_coeli.dart';
import 'package:dolni_kounice/components/gallery_photo_view_page.dart';
import 'package:dolni_kounice/components/monuments_page.dart';
import 'package:dolni_kounice/components/choice_container.dart';
import 'package:dolni_kounice/components/my_button.dart';
import 'package:dolni_kounice/constants/constants.dart';
import 'package:dolni_kounice/components/text_default_standart.dart';
import 'package:dolni_kounice/components/text_default_header.dart';
import 'package:dolni_kounice/components/open_url_in_browser.dart';

class MonumentsChapelOfStJohnTheBaptist extends StatelessWidget {
  static String id = ChapelOfStJohnTheBaptist().id;
  static ChapelOfStJohnTheBaptist chapelOfStJohnTheBaptist =
      ChapelOfStJohnTheBaptist();
  @override
  Widget build(BuildContext context) {
    return MonumentsPage(
      assetImage: chapelOfStJohnTheBaptist.imageGallery[0],
      textOfAppBar: 'Průvodce památkami',
      textHeader: chapelOfStJohnTheBaptist.name,
      tag: chapelOfStJohnTheBaptist.tag,
      isFloatingButton: false,
      onPressedFloatingButton: () {
        Navigator.pushNamed(context, AudioGuideRosaCoeli.id);
      },
      textOfFloatingButton: 'Přejít na audioprůvodce',
      listOfWidget: [
        TextDefaultStandart(
            text:
                'Bývalá hřbitovní kaple na náměstí Míru ze šestnáctého století dotváří prostor u parku na druhém největším náměstí Dolních Kounic.'),
        SizedBox(height: kDMarginLarger),
        ChoiceContainer(
            assetImageOfChoice: chapelOfStJohnTheBaptist.imageGallery[1],
            textOfChoice: 'Galerie',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => GalleryPhotoViewPage(
                    nameOfImageGallery:
                        chapelOfStJohnTheBaptist.nameOfImageGallery,
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
              OpenUrlInBrowser().openUrl(chapelOfStJohnTheBaptist.url);
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
              'Pozdně gotická stavba ze 16. stol. Stojí na Náměstí míru, kde se až do roku 1947 rozprostíral hřbitov.\n\nJan Tišnovský z Cynenberka (Czinenperku) jako starosta města Dolních Kounic daroval obci dům a parcelu s názvem „Vostřihom“ na vybudování nového hřbitova, kde se nacházel do r. 1947 hřbitov. Zde byla roku 1590 postavena kaple sv. Jana Křtitele. Má hvězdicovitou klenbu a prolíná se zčásti renesanční a zčásti gotický sloh. Kaple se v současnosti nachází asi 75 cm pod povrchem okolního terénu, neboť ten byl při rekonstrukcích náměstí po roce 1945 postupně navyšován.',
        ),
        SizedBox(height: kDMargin),
        ImageOnPageWithOnTap(
          assetImage: chapelOfStJohnTheBaptist.imageGallery[4],
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SinglePhotoViewPage(
                    assetImage: chapelOfStJohnTheBaptist.imageGallery[4]),
              ),
            );
          },
        ),
        SizedBox(height: kDMargin),
        TextDefaultStandart(
            text:
                'Od 1. ledna 1938 se na starém hřbitově přestalo pohřbívat. Pro nový, tehdy tzv. komunální hřbitov, bylo určeno místo nad Kounicemi za židovským hřbitovem při cestě k Šibeničné. Starý hřbitov v Závodí pak byl ještě ponechán až do roku 1948, kdy z něho byly všechny kříže a pomníky odstraněny. Celková rekonstrukce kaple byla provedena roku 1958. V červnu byly zazděny dveře a okna hrotitých oblouků zhotovená z tvrdého dřeva dle původní podoby a položena cihlová šestiúhelníková dlažba, vyrobená ručně na zakázku v cihelně Karlovská. Další oprava vnější fasády byla provedena v devadesátých letech dvacátého století. Majitelem kaple je Město Dolní Kounice.')
      ],
    );
  }
}
