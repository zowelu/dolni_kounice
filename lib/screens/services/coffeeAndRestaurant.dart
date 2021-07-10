import 'package:dolni_kounice/components/image_on_page_with_ontap.dart';
import 'package:dolni_kounice/components/monuments/castle_and_chateau.dart';
import 'package:dolni_kounice/components/monuments/rosa_coeli.dart';
import 'package:dolni_kounice/components/open_phone_url.dart';
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

class CoffeeAndRestaurant extends StatelessWidget {
  static String id = '/cofeeAndRestaurant';
  static String tag = 'cofeeAndRestaurant';
  static String name = 'Kavárny, Restaurace';
  @override
  Widget build(BuildContext context) {
    return MonumentsPage(
      assetImage:
          'assets/images/pamatky/services/pexels-lisa-907142_compressed.jpg',
      textOfAppBar: 'Služby',
      textHeader: name,
      tag: tag,
      isFloatingButton: false,
      onPressedFloatingButton: () {
        Navigator.pushNamed(context, CoffeeAndRestaurant.id);
      },
      textOfFloatingButton: 'Mapa trasy',
      listOfWidget: [
        CardOfSubject(
          name: 'Cukrárna U Dvořáků',
          phoneNumber: '546 421 253',
          webPage: 'www.studena-kuchyne.cz',
          webPageURL: 'http://www.studena-kuchyne.cz/',
          address: 'Hlavní 6',
          addressURL:
              'http://www.google.com/maps?q=49.0694522,16.4662409&z=14&t=m',
          label:
              'Platba kartou, Se psem, Bezbariérové, Dětský koutek, Zahrádka',
        ),
        SizedBox(height: kDMarginLarger),
        Divider(
          height: 5,
          color: kDividerColor,
          thickness: 5,
        ),
        SizedBox(height: kDMarginLarger),
        CardOfSubject(
            name: 'Hotel Vinum coeli',
            phoneNumber: '730 825 882',
            webPage: 'www.vinumcoeli.cz',
            webPageURL: 'http://www.vinumcoeli.cz/',
            address: 'Masarykovo náměstí 5',
            addressURL:
                'http://www.google.com/maps?q=49.0700406,16.464826&z=14&t=m',
            label: 'Platba kartou, Denní menu, Zahrádka'),
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

class CardOfSubject extends StatelessWidget {
  const CardOfSubject(
      {@required this.name,
      @required this.phoneNumber,
      @required this.webPage,
      @required this.webPageURL,
      @required this.address,
      @required this.addressURL,
      @required this.label});
  final String name;
  final String phoneNumber;
  final String webPage;
  final String webPageURL;
  final String address;
  final String addressURL;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: TextDefaultStandartBold(
            text: name,
            textAlign: TextAlign.start,
          ),
        ),
        SizedBox(height: kDMarginLarger),
        Row(
          children: [
            TextDefaultStandart(text: 'Telefon:'),
            SizedBox(
              width: 20,
            ),
            MyButton(textOfButton: phoneNumber, onPressed: () async {
              //po stisknutí otevře dialer pro volání
              OpenPhoneURL().makePhoneCall(phoneNumber);
            },),
            GestureDetector(
              onTap: () async {
                //po stisknutí otevře dialer pro volání
                OpenPhoneURL().makePhoneCall(phoneNumber);
              },
              child: TextDefaultStandartBold(
                text: phoneNumber,
              ),
            ),
          ],
        ),
        Row(
          children: [
            TextDefaultStandart(text: 'Web:'),
            SizedBox(
              width: 20,
            ),
            GestureDetector(
              onTap: () async {
                //po stisknutí otevře stránku v externím prohlížeči
                OpenUrlInBrowser().openUrl(webPageURL);
              },
              child: TextDefaultStandartBold(
                text: webPage,
              ),
            ),
          ],
        ),
        Row(
          children: [
            TextDefaultStandart(text: 'Adresa:'),
            SizedBox(
              width: 20,
            ),
            GestureDetector(
              onTap: () async {
                //po stisknutí otevře stránku v externím prohlížeči
                OpenUrlInBrowser().openUrl(addressURL);
              },
              child: TextDefaultStandartBold(
                text: address,
              ),
            ),
          ],
        ),
        SizedBox(height: kDMarginLarger),
        TextDefaultStandart(
          text: label,
        ),
      ],
    );
  }
}
