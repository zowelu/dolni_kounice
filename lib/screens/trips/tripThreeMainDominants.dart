import 'package:dolni_kounice/components/image_on_page_with_ontap.dart';
import 'package:dolni_kounice/components/monuments/castle_and_chateau.dart';
import 'package:dolni_kounice/components/monuments/rosa_coeli.dart';
import 'package:dolni_kounice/components/text_default_standart.dart';
import 'package:dolni_kounice/components/text_default_standart_bold.dart';
import 'package:dolni_kounice/screens/monuments/monuments_rosa_coeli.dart';
import 'package:flutter/material.dart';
import 'package:dolni_kounice/constants/constants.dart';
import 'package:dolni_kounice/components/monuments_page.dart';
import 'package:dolni_kounice/components/open_url_in_browser.dart';
import 'package:dolni_kounice/components/my_button.dart';
import 'package:dolni_kounice/components/monuments/jevish_synagogue.dart';
import 'package:dolni_kounice/components/single_photo_view_page.dart';
import 'package:dolni_kounice/screens/monuments/monuments_jevish_synagogue.dart';

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
      textOfFloatingButton: 'Mapa trasy',
      listOfWidget: [
        TextDefaultStandartBold(text: 'Trasa 1,5 km (cca 3 hodiny)'),
        SizedBox(height: kDMarginLarger),
        TextDefaultStandart(
            text:
                'Pokud se chystáte navštívit klášter Rosa coeli, synagogu nebo hrad a zámek máme pro vás několik tipů, jak strávit čas v Dolních Kounicích efektivněji a zažít tak z tohoto nádherného města MAXIMUM!'),
        SizedBox(height: kDMarginLarger),
        Divider(
          height: 5,
          color: kDividerColor,
          thickness: 5,
        ),
        SizedBox(height: kDMarginLarger),
        TextDefaultStandartBold(text: '1. Židovská synagoga \(cca 30 minut\)'),
        SizedBox(height: kDMargin),
        ImageOnPageWithOnTap(
          assetImage: JevishSynagogue().imageGallery[7],
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SinglePhotoViewPage(
                    assetImage: JevishSynagogue().imageGallery[7]),
              ),
            );
          },
        ),
        SizedBox(
          height: kDMarginLarger,
        ),
        TextDefaultStandart(
            text:
                'Možnost samostatné prohlídky s tištěným průvodcem nebo s komentářem průvodce, dle počtu návštěvníků a vytíženosti průvodce.\n\nMožnost soukromé prohlídky mimo otevírací dobu.'),
        SizedBox(
          height: kDMarginLarger,
        ),
        Center(
          child: Container(
            width: double.infinity,
            child: MyButton(
              textOfButton: 'Přejít na stránku památky',
              onPressed: () {
                Navigator.pushNamed(context, MonumentsJevishSynagogue.id);
              },
            ),
          ),
        ),
        SizedBox(
          height: kDMargin,
        ),
        Center(
          child: Container(
            width: double.infinity,
            child: MyButton(
              textOfButton:
                  'Informace o vstupném, otevírací době a dalších naleznete zde',
              onPressed: () async {
                //po stisknutí otevře stránku v externím prohlížeči
                OpenUrlInBrowser().openUrl(JevishSynagogue().url);
              },
            ),
          ),
        ),
        SizedBox(height: kDMarginLarger),
        Divider(
          height: 5,
          color: kDividerColor,
          thickness: 5,
        ),
        SizedBox(height: kDMarginLarger),
        TextDefaultStandartBold(text: '2. Klášter Rosa coeli \(cca 45 minut\)'),
        SizedBox(height: kDMargin),
        ImageOnPageWithOnTap(
          assetImage: RosaCoeli().imageGallery[15],
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SinglePhotoViewPage(
                    assetImage: RosaCoeli().imageGallery[15]),
              ),
            );
          },
        ),
        SizedBox(
          height: kDMarginLarger,
        ),
        TextDefaultStandart(
            text:
                'Možnost samostatné prohlídky s tištěným průvodcem nebo s komentářem průvodce, dle počtu návštěvníků a vytíženosti průvodce.\n\nMožnost soukromé prohlídky mimo otevírací dobu.'),
        SizedBox(
          height: kDMarginLarger,
        ),
        Center(
          child: Container(
            width: double.infinity,
            child: MyButton(
              textOfButton: 'Přejít na stránku památky',
              onPressed: () {
                Navigator.pushNamed(context, MonumentsRosaCoeli.id);
              },
            ),
          ),
        ),
        SizedBox(
          height: kDMargin,
        ),
        Center(
          child: Container(
            width: double.infinity,
            child: MyButton(
              textOfButton:
                  'Informace o vstupném, otevírací době a dalších naleznete zde',
              onPressed: () async {
                //po stisknutí otevře stránku v externím prohlížeči
                OpenUrlInBrowser().openUrl(RosaCoeli().url);
              },
            ),
          ),
        ),
        SizedBox(
          height: kDMarginLarger,
        ),
        SizedBox(height: kDMarginLarger),
        TextDefaultStandartBold(text: '3. Hrad a zámek \(cca 75 minut\)'),
        SizedBox(height: kDMargin),
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
        SizedBox(
          height: kDMarginLarger,
        ),
        TextDefaultStandart(
            text:
            'Prohlídka s komentářem průvodce\n\nMožnost soukromé prohlídky mimo otevírací dobu.'),
        SizedBox(
          height: kDMarginLarger,
        ),
        Center(
          child: Container(
            width: double.infinity,
            child: MyButton(
              textOfButton: 'Přejít na stránku památky',
              onPressed: () {
                Navigator.pushNamed(context, CastleAndChateau().id);
              },
            ),
          ),
        ),
        SizedBox(
          height: kDMargin,
        ),
        Center(
          child: Container(
            width: double.infinity,
            child: MyButton(
              textOfButton:
              'Informace o vstupném, otevírací době a dalších naleznete zde',
              onPressed: () async {
                //po stisknutí otevře stránku v externím prohlížeči
                OpenUrlInBrowser().openUrl(CastleAndChateau().url);
              },
            ),
          ),
        ),
        SizedBox(
          height: kDMarginLarger,
        ),
      ],
    );
  }
}
