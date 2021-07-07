import 'package:dolni_kounice/components/image_on_page_with_ontap.dart';
import 'package:dolni_kounice/components/monuments/castle_and_chateau.dart';
import 'package:dolni_kounice/components/monuments/chapel_of_st_antonine.dart';
import 'package:dolni_kounice/components/monuments/chapel_of_st_john_the_baptist.dart';
import 'package:dolni_kounice/components/monuments/jevish_cemetery.dart';
import 'package:dolni_kounice/components/monuments/jevish_synagogue.dart';
import 'package:dolni_kounice/components/monuments/rosa_coeli.dart';
import 'package:dolni_kounice/components/monuments/st_barbara_church.dart';
import 'package:dolni_kounice/components/text_default_standart.dart';
import 'package:dolni_kounice/components/text_default_standart_bold.dart';
import 'package:flutter/material.dart';
import 'package:dolni_kounice/constants/constants.dart';
import 'package:dolni_kounice/components/monuments_page.dart';
import 'package:dolni_kounice/components/open_url_in_browser.dart';
import 'package:dolni_kounice/components/single_photo_view_page.dart';

class TripAroundDolniKounice extends StatelessWidget {
  static String id = '/tripAroundDolniKounice';
  static String tag = 'tripAroundDolniKounice';
  static String name = 'Toulky Kounicemi';
  @override
  Widget build(BuildContext context) {
    return MonumentsPage(
      assetImage: 'assets/images/pamatky/mesto/mesto-letecky.jpg',
      textOfAppBar: 'Trasy',
      textHeader: name,
      tag: tag,
      isFloatingButton: true,
      onPressedFloatingButton: () async {
        //po stisknutí otevře stránku v externím prohlížeči
        OpenUrlInBrowser().openUrl(
            'https://www.google.com/maps/d/u/0/viewer?mid=15LngXl9ItQOB6tp-LL-LdS6TpSlMXdSD&ll=49.06955912557712%2C16.467198849999992&z=16');
      },
      textOfFloatingButton: 'Mapa trasy',
      listOfWidget: [
        TextDefaultStandartBold(text: 'Trasa 4,3 km (cca 1,5h)'),
        SizedBox(height: kDMarginLarger),
        TextDefaultStandart(
            text:
            'Od turisticko-informačního centra na Masarykově náměstí se vydejte doleva (od kostela dolů).Na křižovatce odbočte doleva. Na autobusovém nádraží uvidíte větší bílou budovu - Židovskou synagogu.'),
        SizedBox(height: kDMarginLarger),
        ImageOnPageWithOnTap(
          assetImage: JevishSynagogue().imageGallery[0],
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SinglePhotoViewPage(
                    assetImage: JevishSynagogue().imageGallery[0]),
              ),
            );
          },
        ),
        SizedBox(height: kDMarginLarger),
        TextDefaultStandart(
            text:
            'Od synagogy se vydejte směrem do kopce a na křižovatce doleva. Přibližně po 50 metrech chůze pokračujte po úzké cestičce vpravo. Až vyjdete  zcela nahoru, odbočte doprava. Po pár metrech chůze se Vám naskytne výhled na celé město. Nyní jste dorazili na židovský hřbitov.'),
        SizedBox(height: kDMarginLarger),
        ImageOnPageWithOnTap(
          assetImage: JevishCemetery().imageGallery[0],
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SinglePhotoViewPage(
                    assetImage: JevishCemetery().imageGallery[0]),
              ),
            );
          },
        ),
        SizedBox(height: kDMarginLarger),
        TextDefaultStandart(
            text:
            'Od židovského hřbitova se vydejte zpět a pokračujte rovně. U křižovatky směrem na Trboušany můžete zahlédnout kříž . Od tohoto křížku pokračujte stále rovně po Trboušanské ulici (dolů z kopce).'),
        TextDefaultStandart(
            text:
            'Po pár minutách chůze dorazíte k Hradu a zámku.'),
        SizedBox(height: kDMarginLarger),
        ImageOnPageWithOnTap(
          assetImage: CastleAndChateau().imageGallery[0],
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SinglePhotoViewPage(
                    assetImage: CastleAndChateau().imageGallery[0]),
              ),
            );
          },
        ),
        SizedBox(height: kDMarginLarger),
        TextDefaultStandart(
            text:
            'Od hradu se vydejte doleva směrem na Masarykovo náměstí. Přibližně po 150 metrech dorazíte na křižovatku. Po přechodu přejděte na druhou stranu a pokračujte dolů po Růžové ulici. Po pár dalších metrech dorazíte na křižovatku. Zde odbočte doprava a poté stále rovně. Nyní jste dorazili k dominantě města, ke klášteru Rosa coeli.'),
        SizedBox(height: kDMarginLarger),
        ImageOnPageWithOnTap(
          assetImage: RosaCoeli().imageGallery[0],
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SinglePhotoViewPage(
                    assetImage: RosaCoeli().imageGallery[0]),
              ),
            );
          },
        ),
        SizedBox(height: kDMarginLarger),
        TextDefaultStandart(
            text:
            'Od kláštera se vydejte zpět na křižovatku a odbočte doleva. Po pár metrech uvidíte vpravo úzkou cestičku mezi 2 budovami. Projděte touto uličkou a pokračujte rovně. Nyní jste dorazili k chrámu sv. Barbory, Floriána a Šebestiána.'),
        SizedBox(height: kDMarginLarger),
        ImageOnPageWithOnTap(
          assetImage: StBarbaraChurch().imageGallery[1],
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SinglePhotoViewPage(
                    assetImage: StBarbaraChurch().imageGallery[1]),
              ),
            );
          },
        ),
        SizedBox(height: kDMarginLarger),
        TextDefaultStandart(
            text:
            'Od chrámu sv. Barbory (tzv. Barborky) se vydejte směrem dolů z kopce. Cestou budete procházek kolem kostela sv. Petra a Pavla.'),
        SizedBox(height: kDMarginLarger),
        TextDefaultStandart(
            text:
            'Od kostela pokračujte přes park na most. Za mostem odbočte doprava. Po pár metrech uvidíte pomník Mistra Jana Husa. Nyní přejděte po přechodu a pokračujte stále rovně. Po pár metrech dorazíte ke kapli sv. Jana Křtitele.'),
        SizedBox(height: kDMarginLarger),
        ImageOnPageWithOnTap(
          assetImage: ChapelOfStJohnTheBaptist().imageGallery[0],
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SinglePhotoViewPage(
                    assetImage: ChapelOfStJohnTheBaptist().imageGallery[0]),
              ),
            );
          },
        ),
        SizedBox(height: kDMarginLarger),
        SizedBox(height: kDMarginLarger),
        TextDefaultStandart(
            text:
            'Od této kaple přejděte na chodník u zelené budovy (restaurace u Gottwaldů) a na křižovatce odbočte doprava směrem do kopce. Po levé straně uvidíte první kapličku, neboli první zastavení pána, která je umístěna na soukromém pozemku. Na další křižovatce se vydejte doleva. Po několika metrech vyjdete na rozcestí - zde se vydejte doprava a zanedlouho uvidíte schody, které Vás vyvedou na křížovou cestu.'),
        SizedBox(height: kDMarginLarger),
        ImageOnPageWithOnTap(
          assetImage: ChapelOfStAntonine().imageGallery[3],
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SinglePhotoViewPage(
                    assetImage: ChapelOfStAntonine().imageGallery[3]),
              ),
            );
          },
        ),
        SizedBox(height: kDMarginLarger),
        TextDefaultStandart(
            text:
            'Po vyjití celého kopce se dostanete ke kapli sv. Antonína. Zde se Vám naskýtá panoramatický výhled na celé město a dokonce i za něj, například na Pálavské vrchy.'),
        SizedBox(height: kDMarginLarger),
        ImageOnPageWithOnTap(
          assetImage: ChapelOfStAntonine().imageGallery[5],
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SinglePhotoViewPage(
                    assetImage: ChapelOfStAntonine().imageGallery[5]),
              ),
            );
          },
        ),
        SizedBox(height: kDMarginLarger),
        Divider(
          height: 5,
          color: kDividerColor,
          thickness: 5,
        ),
        SizedBox(height: kDMarginLarger),
        TextDefaultStandart(
            text:
            'Výškový profil start 192 m.n.m. | stoupání 67 m | klesání 5 m | cíl 262 m.n.m.'),

        SizedBox(height: 70.0),
      ],
    );
  }
}
