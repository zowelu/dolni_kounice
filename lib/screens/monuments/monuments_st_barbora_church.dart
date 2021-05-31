import 'package:dolni_kounice/components/monuments/st_barbara_church.dart';
import 'package:flutter/material.dart';
import 'package:dolni_kounice/screens/audio_guide_rosa_coeli/audio_guide_rosa_coeli.dart';
import 'package:flutter/cupertino.dart';
import 'package:dolni_kounice/components/gallery_photo_view_page.dart';
import 'package:dolni_kounice/components/monuments_page.dart';
import 'package:dolni_kounice/components/choice_container.dart';
import 'package:dolni_kounice/components/my_button.dart';
import 'package:dolni_kounice/components/single_photo_view_page.dart';
import 'package:dolni_kounice/constants/constants.dart';
import 'package:dolni_kounice/components/text_default_standart.dart';
import 'package:dolni_kounice/components/text_default_header.dart';
import 'package:dolni_kounice/components/image_on_page_with_ontap.dart';
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
            'Poutní kaple sv. Antonína se vypíná na stejnojmenném kopci nad řekou a je působivým objektem poutajícím ze široké vzdálenosti pozornost návštěvníků města.\n\nKaple je zavřená a přístupná pouze během pouti v červnu.'),
        SizedBox(height: kDMarginLarger),
        ChoiceContainer(
            assetImageOfChoice: stBarbaraChurch.imageGallery[1],
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
          'Kaple sv. Antonína jako dřevěná byla postavena v r. 1654. O sto let později pak byla nahrazena stavbou zděnou, neboť nestačila velkému počtu poutníků. Náklady na stavbu hradil kníže Karel Maxmilián z Dietrichsteina. Kaple byla postavena brněnským stavitelem Františkem Antonínem Grimmem, který žil v letech 1710 až 1784. Tento barokní stavitel a architekt projektoval např. Zábrdovický zámek a zámek v Napajedlech. Je pohřben i se svým otcem v brněnské kapucínské hrobce. Podle jeho projektu byl také stavěn zámek v Kupařovicích. Byl dvorním stavitelem knížat z Dietrichsteina v té době. Budova kaple má velkou klenutou kopuli a tři vchody - hlavní a dva boční.\n\nJak uvádí zakládací listina z 30. dubna 1654, její vybudování iniciovali dolnokouničtí občané k poctě patronů sv. Antonína Padovánského a sv. Floriána… „aby se přimluvili za obyvatele, kteří každoročně strádají různými ohni a záplavami“. Ke stavbě přispěly okolní obce Pravlov, Němčičky, Kupařovice, Malešovice, Odrovice a další z kounického knížecího panství.',
        ),
        SizedBox(
          height: kDMargin,
        ),
        ImageOnPageWithOnTap(
          assetImage: stBarbaraChurch.imageGallery[3],
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SinglePhotoViewPage(
                    assetImage: stBarbaraChurch.imageGallery[3]),
              ),
            );
          },
        ),
        ImageOnPageWithOnTap(
          assetImage: stBarbaraChurch.imageGallery[4],
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SinglePhotoViewPage(
                    assetImage: stBarbaraChurch.imageGallery[4]),
              ),
            );
          },
        ),
        SizedBox(
          height: kDMargin,
        ),
        TextDefaultStandart(
            text:
            'Kapličky - jednotlivá zastavení křížové cesty - byly vybudovány někdy na počátku 19. století. Roku 1899 byly do jednotlivých zastavení pořízeny z Blanska litinové plastiky, každá o hmotnosti padesát kilogramů. Původně tam byly obrazy staré křížové cesty z kostela u řeky, jenž byl po povodni roku 1862 zbourán. Staré obrazy ze zastavení se poděly neznámo kam.\n\nV roce 1948 byla kaple, poškozená válečnými událostmi, opravena. Další generální oprava začala roku 2013. Práce začaly vysekáním dřevin a od července probíhaly hlavní práce na střeše. Rekonstrukce kaple pokračovala v roce 2015 opravou fasády.\n\nTradiční pouť ke svatému Antonínovi se koná každoročně v červnu. Majitelem kaple je církev Římskokatolická.'),
      ],
    );
  }
}
