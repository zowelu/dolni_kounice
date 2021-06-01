import 'package:dolni_kounice/components/image_on_page_with_ontap.dart';
import 'package:dolni_kounice/components/monuments/history_of_the_town.dart';
import 'package:dolni_kounice/components/single_photo_view_page.dart';
import 'package:flutter/material.dart';
import 'package:dolni_kounice/screens/audio_guide_rosa_coeli/audio_guide_rosa_coeli.dart';
import 'package:flutter/cupertino.dart';
import 'package:dolni_kounice/components/gallery_photo_view_page.dart';
import 'package:dolni_kounice/components/monuments_page.dart';
import 'package:dolni_kounice/components/choice_container.dart';
import 'package:dolni_kounice/components/my_button.dart';
import 'package:dolni_kounice/constants/constants.dart';
import 'package:dolni_kounice/components/text_default_standart.dart';
import 'package:dolni_kounice/components/open_url_in_browser.dart';

class MonumentsHistoryOfTheTown extends StatelessWidget {
  static String id = HistoryOfTheTown().id;
  static HistoryOfTheTown historyOfTheTown = HistoryOfTheTown();
  @override
  Widget build(BuildContext context) {
    return MonumentsPage(
      assetImage: historyOfTheTown.imageGallery[0],
      textOfAppBar: 'Průvodce památkami',
      textHeader: historyOfTheTown.name,
      tag: historyOfTheTown.tag,
      isFloatingButton: false,
      onPressedFloatingButton: () {
        Navigator.pushNamed(context, AudioGuideRosaCoeli.id);
      },
      textOfFloatingButton: 'Přejít na audioprůvodce',
      listOfWidget: [
        TextDefaultStandart(
            text:
            'První oficiální zmínka o Dolních Kounicích je z r. 1183. Toho roku byl v Dolních Kounicích vybudován panenský premonstrátský klášter zasvěcený P. Marii, proto později nazývaný „Rosa coeli“ neboli „Růže nebeská“.'),
        SizedBox(height: kDMarginLarger),
        ChoiceContainer(
            assetImageOfChoice: historyOfTheTown.imageGallery[1],
            textOfChoice: 'Galerie',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => GalleryPhotoViewPage(
                    nameOfImageGallery: historyOfTheTown.nameOfImageGallery,
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
              OpenUrlInBrowser().openUrl(historyOfTheTown.url);
            },
          ),
        ),
        SizedBox(
          height: kDMarginLarger,
        ),
        TextDefaultStandart(
          text:
          'Již před mnoha desítkami tisíc let zanechal pravěký člověk svoji pomyslnou šlépěj na půdě budoucího města. Nejstarší přítomnost člověka na území okolí Dolních Kounic datujeme až do období před 400 000 lety. Potvrzují to nálezy pěstních klínů – prvních nástrojů pravěkých lidí, které přinesli pedagog a mineralog Oldřich Svoboda a Antonín Otta, specialista na období starého paleolitu. Další důkazy, tentokrát o skutečném osídlení, máme z období 1 500 let př. n. l. Na vrchu Antoníček se rozkládalo sídliště Kultury Věteřovské z rozhraní starší a střední doby Bronzové. Bylo zde objeveno množství nádob, zbytky chat, hrnčířské pece a nálezy přeslenů – doklad tkalcovství.\n\nPrvní zmínka o Kounicích se nachází ve falsu zakládací listiny staroboleslavské kapituly z roku 1046. Pozdější informace a doklady hovoří k roku 1183 o vsi Kounice, kde je i kostel. Listina byla psána kolem roku 1276 a zde je psáno o vsi Chunicz.',
        ),
        SizedBox(height: kDMargin),
        TextDefaultStandart(text: 'Další názvy města, jak se měnily během staletí: \n\n• 1275 - Cvoniz\n• 1351 - Cmutz\n• 1276, 1361 - Chunicz\n• 1385, 1417 - Inferior Cunicz\n• 1459, 1576, 1609 - Dolní Kounice\n• 1660 - Kanitz\n• 1696, 1737, 1878 - Unter Kanitz\n• 1904 - Stadt Kanitz\n• 1918 až 1945 – Kanitz, Dolní Kounice (oba názvy)\n • 1945 až dodnes - Dolní Kounice'),
        SizedBox(height: kDMargin),
        TextDefaultStandart(text: 'Další dějiny města jsou úzce spjaty s klášterem Rosa coeli, postaveným v letech 1181 až 1183 Vilémem z Pulína (nebo také z Kounic?). Klášter prožil tři a půl století vzestupů a úpadků až po krizi začátkem šestnáctého století zanikl. Roku 1702 byl učiněn pokus o jeho obnovení, ovšem o rok později vypukl ve městě obrovský požár, který se přenesl na rekonstruovaný klášter. Ohni padla za oběť střecha nad klášterním chrámem, kaplí, křížovou chodbou a ložnicemi pro kněze. Po požáru již střecha klášterního chrámu nebyla nikdy obnovena.'),
        SizedBox(height: kDMargin),
        ImageOnPageWithOnTap(
          assetImage: historyOfTheTown.imageGallery[1],
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SinglePhotoViewPage(
                    assetImage: historyOfTheTown.imageGallery[1]),
              ),
            );
          },
        ),
        SizedBox(height: kDMargin),
        TextDefaultStandart(text: 'Klášterní areál stráží zámek, původně klášterní hrad, postavený v letech 1284 až 1330'),
        SizedBox(height: kDMargin),
        ImageOnPageWithOnTap(
          assetImage: historyOfTheTown.imageGallery[1],
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SinglePhotoViewPage(
                    assetImage: historyOfTheTown.imageGallery[1]),
              ),
            );
          },
        ),
        TextDefaultStandart(text: 'Zámek společně s dolnokounickým panstvím byl ve vlastnictví těchto šlechtických rodů a dalších majitelů:\n\n• 1537 – 1562 Žabkové z Limberka\n• 1562 – 1579 páni ze Zástřizl\n• 1579 – 1588 páni z Rožmitálu\n• 1588 – 1622 Drnovští z Drnovic\n• 1622 – 1862 Ditrichsteinové\n• 1862 – 1919 Herbersteinové\n• 1919 – 1937 Emil Tomec, správce panství Herbersteinů\n• 1937 – 1945 Karel Rubeš\n•1945 – 1948 Václav Edel\n\nPo několika desítkách let chátrání jej v současnosti vlastní soukromá společnost, která se snaží s velkým úsilím navrátit objektu původní lesk.')

      ],
    );
  }
}
