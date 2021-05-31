import 'package:dolni_kounice/components/monuments/st_barbara_church.dart';
import 'package:flutter/material.dart';
import 'package:dolni_kounice/screens/audio_guide_rosa_coeli/audio_guide_rosa_coeli.dart';
import 'package:flutter/cupertino.dart';
import 'package:dolni_kounice/components/gallery_photo_view_page.dart';
import 'package:dolni_kounice/components/monuments_page.dart';
import 'package:dolni_kounice/components/choice_container.dart';
import 'package:dolni_kounice/components/my_button.dart';
import 'package:dolni_kounice/constants/constants.dart';
import 'package:dolni_kounice/components/text_default_standart.dart';
import 'package:dolni_kounice/components/text_default_header.dart';
import 'package:dolni_kounice/components/open_url_in_browser.dart';

class MonumentsStBarbaraChurch extends StatelessWidget {
  static String id = StBarbaraChurch().id;
  static StBarbaraChurch stBarbaraChurch = StBarbaraChurch();
  @override
  Widget build(BuildContext context) {
    return MonumentsPage(
      assetImage: stBarbaraChurch.imageGallery[0],
      textOfAppBar: 'Průvodce památkami',
      textHeader: stBarbaraChurch.name,
      tag: stBarbaraChurch.tag,
      isFloatingButton: false,
      onPressedFloatingButton: () {
        Navigator.pushNamed(context, AudioGuideRosaCoeli.id);
      },
      textOfFloatingButton: 'Přejít na audioprůvodce',
      listOfWidget: [
        TextDefaultStandart(
            text:
            'Zčásti skrytá lidskému zraku, přesto po několik století součást dolnokounické historie. To je malebná, nedávno zrekonstruovaná kaple, lidově zvaná Barborka.'),
        SizedBox(height: kDMarginLarger),
        ChoiceContainer(
            assetImageOfChoice: stBarbaraChurch.imageGallery[4],
            textOfChoice: 'Galerie',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => GalleryPhotoViewPage(
                    nameOfImageGallery: stBarbaraChurch.nameOfImageGallery,
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
              OpenUrlInBrowser().openUrl(stBarbaraChurch.url);
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
          'Kaple v dnešní podobě byla vystavěna Jiřím Richtrem z Brna za Ferdinanda Ditrichsteina v r. 1688. Gotické kněžiště z původního sboru v upravené podobě zůstalo zachováno a k němu byla přistavěna renesanční přístavba vlastní kaple, nad jejímž vchodem je znak Dietrichsteinů (vinařské nože) s uvedeným letopočtem. Původně zde měla sekta bratří Valdenských a Boleslavských svoji modlitebnu - sbor v gotickém slohu - které Jan ze Žerotína daroval svůj dům. V roce 1560 k němu daroval dům také Jiří ze Zástřizl, aby v něm správce sboru bydlel a bratří měli kde provozovat své řemeslo.\n\nPo zatopení a uzavření starého farního kostela u řeky v r. 1862 zde byly se souhlasem mikulovských Dietrichsteinů až do roku 1879 konány všechny katolické bohoslužby, křty, svatby a pohřby. Kaple ovšem tomuto účelu sloužila jen jako nevyhovující, malé provizorium a to jen do doby, než byl postaven a otevřen nový farní kostel.\n\nPo první světové válce v r. 1921 kapli sv. Fabiána a Šebestiána kounické obecní zastupitelstvo pronajalo nově vzniklé Církvi československé husitské na dobu 15 let. V devadesátých letech 20. století byla kaple za pomoci města důkladně opravena a pravidelně se zde konají nedělní pravoslavné bohoslužby. Bývají zde také pořádány výstavy nebo koncerty duchovní a vážné hudby, jako např. každoročně ve vánočním období nebo i při jiných příležitostech v průběhu roku. Kaple je majetkem Pravoslavné církevní obce.',
        ),
      ],
    );
  }
}
