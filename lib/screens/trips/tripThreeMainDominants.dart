import 'package:dolni_kounice/components/gallery_photo_view_page.dart';
import 'package:dolni_kounice/components/monuments/rosa_coeli.dart';
import 'package:dolni_kounice/components/text_default_header.dart';
import 'package:dolni_kounice/components/text_default_standart.dart';
import 'package:dolni_kounice/components/text_default_standart_bold.dart';
import 'package:flutter/material.dart';
import 'package:dolni_kounice/constants/constants.dart';
import 'package:dolni_kounice/components/monuments_page.dart';
import 'package:dolni_kounice/components/open_url_in_browser.dart';
import 'package:dolni_kounice/components/choice_container.dart';
import 'package:dolni_kounice/components/my_button.dart';


class TripThreeMainDominants extends StatelessWidget {
  static String id = '/tripThreeMainDominants';
  static String tag = 'tripThreeMainDominants';
  static String name = 'Tři hlavní dominanty';
  @override
  Widget build(BuildContext context) {
    return MonumentsPage(
      assetImage: RosaCoeli().imageGallery[15],
      textOfAppBar: 'Trasy',
      textHeader: name,
      tag: tag,
      isFloatingButton: false,
      onPressedFloatingButton: () {
        Navigator.pushNamed(context, TripThreeMainDominants.id);
      },
      textOfFloatingButton: 'Přejít na audioprůvodce',
      listOfWidget: [
        TextDefaultStandartBold(text: 'Trasa 1,5 km (cca 3 hodiny)'),
        SizedBox(height: kDMarginLarger),
        TextDefaultStandart(
            text:
            'Pokud se chystáte navštívit klášter Rosa coeli, synagogu nebo hrad a zámek máme pro vás několik tipů, jak strávit čas v Dolních Kounicích efektivněji a zažít tak z tohoto nádherného města MAXIMUM!'),
        SizedBox(height: kDMarginLarger),
        ChoiceContainer(
            assetImageOfChoice:  RosaCoeli().imageGallery[15],
            textOfChoice: 'Galerie',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => GalleryPhotoViewPage(
                    nameOfImageGallery:  RosaCoeli().imageGallery[15],
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
              OpenUrlInBrowser().openUrl('www');
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
          'O kostelu v Dolních Kounicích se píše již na jejich samém počátku. V donační listině Viléma z Kounic se hovoří o tom, že nově postavenému klášteru daruje pan Vilém mimo jiné i ves Kounice s kostelem. K roku 1185 uvádí letopisec Jarloch (Gerlach), že česká vojska vypálila Kounice až na klášter a kostel. Kde však tento původní kostelík stával, dnes nevíme. Jistě víme jen to, že další gotický kostel postavený v roce 1411 stál u řeky a byl zbořen po povodni 2. února 1862. Nacházel se za domy č. p. 135, 480, 134, 481 a 133 na Masarykově náměstí. Po povodni byl úředně uzavřen kvůli nebezpečí zřícení a bohoslužby byly konány v kapli sv. Fabiána a Sebestiána, dnes kaple sv. Barbory.\n\nKostel byl zbourán v roce 1880. V objektu se nacházelo množství náhrobních kamenů, neboť kolem kostela se nacházel hřbitov. Ostatky byly postupně vyjmuty a pohřbeny na hřbitově na náměstí Míru. Dvě náhrobní desky jsou umístěny v kapli sv. Barbory, deska Matyášova je v Trboušanech, deska z Valdštejnské hrobky je zazděna ve dvoře č. 73/10, deska písaře Kryštofa Jičínského v průjezdu domu č. 70/4.\n\nZe starého farního kostela pochází také nádherná mramorová kazatelna, krásná kamenická práce ze sedmnáctého, podle některých pramenů dokonce ze šestnáctého století. Kazatelna byla přenesena do nového farního kostela.\n\nZároveň se starým kostelem, se obecní zastupitelstvo rozhodlo zbořit i původní objekt radnice. Ta pocházela z roku 1604. Radnice byla přemístěna na Tovární ulici č. 128/1. V sousedství radnice stával dům Františka Kölbla. I tato budova byla zbořena. Právě v místě těchto dvou budov dnes stojí nový kostel.\n\nRozhodnutí o stavbě kostela padlo v roce 1865. Plány byly svěřeny staviteli Františku Schlepsovi z Valtic. Prusko – rakouská válka roku 1866 zanechala bohužel mnoho škod, proto byla stavba pozastavena. K posunu událostí došlo o sedm let později. Hraběnka Terezie z Herbersteina, majitelka kounického panství, věnovala na stavbu kostela 15 000 zlatých.\n\nZákladní kámen byl položen 30. října 1877. Stavba vytvořená ve stylu italské renesance stavitelem Josefem Jelínkem ze Židlochovic, byla dokončena o dva roky později. Délka kostela je 45 m, šířka 21 m, výška 20 m a výška věže 41, 6 m. Původně se ve výklencích na čelní straně nacházely dřevěné sochy světců. V současné době je kostel v majetku církve Římskokatolické.',
        ),
      ],
    );
  }
}
