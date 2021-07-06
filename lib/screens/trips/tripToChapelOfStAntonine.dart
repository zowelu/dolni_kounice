import 'package:dolni_kounice/components/image_on_page_with_ontap.dart';
import 'package:dolni_kounice/components/monuments/chapel_of_st_antonine.dart';
import 'package:dolni_kounice/components/monuments/chapel_of_st_john_the_baptist.dart';
import 'package:dolni_kounice/components/text_default_standart.dart';
import 'package:dolni_kounice/components/text_default_standart_bold.dart';
import 'package:flutter/material.dart';
import 'package:dolni_kounice/constants/constants.dart';
import 'package:dolni_kounice/components/monuments_page.dart';
import 'package:dolni_kounice/components/open_url_in_browser.dart';
import 'package:dolni_kounice/components/single_photo_view_page.dart';

class TripToChapelOfStAntonine extends StatelessWidget {
  static String id = '/tripToChapelOfStAntonine';
  static String tag = 'tripToChapelOfStAntonine';
  static String name = 'Ke kapli sv. Antonína';
  @override
  Widget build(BuildContext context) {
    return MonumentsPage(
      assetImage: ChapelOfStAntonine().imageGallery[0],
      textOfAppBar: 'Trasy',
      textHeader: name,
      tag: tag,
      isFloatingButton: true,
      onPressedFloatingButton: () async {
        //po stisknutí otevře stránku v externím prohlížeči
        OpenUrlInBrowser().openUrl(
            'https://www.google.com/maps/d/u/0/viewer?mid=1UEdcGhCVPeinLPdPPD_azaxkHmM1QnLz&ll=49.07177133860773%2C16.4671231&z=17');
      },
      textOfFloatingButton: 'Mapa trasy',
      listOfWidget: [
        TextDefaultStandartBold(text: 'Trasa 760 m (cca 20 minut)'),
        SizedBox(height: kDMarginLarger),
        TextDefaultStandart(
            text:
                'Start u turisticko-informačního centra na Masarykově nám. Přes most – řeku Jihlavu na nám. Míru, míjíme kapli Jana Křtitele (Kaple Jana Křtitele - pozdně gotická stavba z roku 1590 postavena jako  hřbitovní kaple na místě bývalého hřbitova. Stojí na Náměstí míru, kde se až do roku 1947 rozprostíral hřbitov).'),
        SizedBox(height: kDMarginLarger),
        ImageOnPageWithOnTap(
          assetImage: ChapelOfStJohnTheBaptist().imageGallery[1],
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SinglePhotoViewPage(
                    assetImage: ChapelOfStJohnTheBaptist().imageGallery[1]),
              ),
            );
          },
        ),
        SizedBox(height: kDMarginLarger),
        TextDefaultStandart(
            text:
                'Pokračujeme kolem restaurace u Gottwaldů na Antonínskou ulici. Nyní začíná 14 zastavení křížové cesty, která nás dovede ke kapli sv. Antonína. (Křížová cesta  byla zbudována na počátku 19. století. První kapličku naleznete na ulici Antonínská v předzahrádce rodinného domku. Kamenné sochy z původních kapliček jsou v kostele sv. Petra a Pavla a byly nahrazeny kovovými plastikami.)'),
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
                'Nyní se nacházíme u nepřehlédnutelné dominanty města - poutní kaple svatého Antonína na levém břehu řeky Jihlavy na kopci 262 m.n.m.( Postavená roku 1757 stavitelem Františkem Antonínem Grimem. První, dřevěná kaple byla vystavena v roce 1654 a sloužila jako poutní kaple ale byla využívána i jako úkryt před povodněmi, kterým Dolní Kounice podléhaly. Každou neděli po svátku sv. Antonína připutovalo 12-15 procesí. Tehdy bylo v tento den slouženo 12-32 mší svatých a ke sv. přijímání přišlo až 1700 poutníků. Další poutě se konaly na svátek sv. Floriána a sv. Jana Křtitele. Dělo se tak 120 let. Kaple měla být zrušena, ale na žádost občanu ze závodí se zrušení neuskutečnilo. Nebyla tedy zrušena, ale byli zde zakázány veškeré bohoslužby pro přespolní poutníky. Ve věži se nachází zvon ulitý v roce 1586 ve Vídni.\n\nNaskýtá se nám  překrásný výhled na malebné městečko i do celého okolí včetně Pálavy.'),
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
