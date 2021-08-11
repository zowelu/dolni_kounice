import 'package:dolni_kounice/components/monuments/jevish_cemetery.dart';
import 'package:flutter/material.dart';
import 'package:dolni_kounice/screens/audio_guides/audio_guide_rosa_coeli/audio_guide_rosa_coeli.dart';
import 'package:flutter/cupertino.dart';
import 'package:dolni_kounice/components/gallery_photo_view_page.dart';
import 'package:dolni_kounice/components/monuments_page.dart';
import 'package:dolni_kounice/components/choice_container.dart';
import 'package:dolni_kounice/components/my_button.dart';
import 'package:dolni_kounice/constants/constants.dart';
import 'package:dolni_kounice/components/text_default_standart.dart';
import 'package:dolni_kounice/components/text_default_header.dart';
import 'package:dolni_kounice/components/open_url_in_browser.dart';

class MonumentsJevishCemetery extends StatelessWidget {
  static String id = JevishCemetery().id;
  static JevishCemetery jevishCemetery = JevishCemetery();
  @override
  Widget build(BuildContext context) {
    return MonumentsPage(
      assetImage: jevishCemetery.imageGallery[0],
      textOfAppBar: 'Průvodce památkami',
      textHeader: jevishCemetery.name,
      tag: jevishCemetery.tag,
      isFloatingButton: false,
      onPressedFloatingButton: () {
        Navigator.pushNamed(context, AudioGuideRosaCoeli.id);
      },
      textOfFloatingButton: 'Přejít na audioprůvodce',
      listOfWidget: [
        TextDefaultStandart(
            text:
                'Byl založen v roce 1680 ve svahu nad ghettem na jižním okraji města po zrušení staršího hřbitova, který stál na jiném místě. Původně byl přístupný ze severní strany pěší cestou. Nynější vchod je z jihu z ulice Trboušanské. Hřbitov je ohrazen masivní kamennou zdí. Nalézá se zde asi 1500 náhrobků nepravidelně rozmístěných. Řada z nich pochází z období baroka a klasicizmu, přičemž nejstarší se datuje k roku 1688.\n\nHřbitov je pro návštěvníky otevřen celoročně.'),
        SizedBox(height: kDMarginLarger),
        ChoiceContainer(
          assetImageOfChoice: jevishCemetery.imageGallery[2],
          textOfChoice: 'Galerie',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => GalleryPhotoViewPage(
                  nameOfImageGallery: jevishCemetery.nameOfImageGallery,
                ),
              ),
            );
          },
          isAudio: false,
        ),
        SizedBox(
          height: kDMarginLarger,
        ),
        Center(
          child: MyButton(
            textOfButton:
                'Informace o vstupném, otevírací době a dalších naleznete zde',
            onPressed: () async {
              //po stisknutí otevře stránku v externím prohlížeči
              OpenUrlInBrowser().openUrl(jevishCemetery.url);
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
              'V období tvorby nové židovské obce, získala komunita Židů v Dolních Kounicích vhodný pozemek na vybudování nového hřbitova pod Šibeničnou horou. Hřbitov leží vlastně hned nad židovskou čtvrtí, vzdálen sotva 200 metrů od synagogy jižně, na svahu nad obcí a je z něj nádherný pohled na celé město i řeku.\n\nNáhrobní kameny jsou rozmístěny po celé ploše hřbitova. Nejstarší ze 17. a 18. století se nachází v severní části hřbitova. Celkově se na ploše hřbitova nalézá 1 500 náhrobků. Všechny jsou obráceny svými nápisy směrem na východ. Nejstarší je z r. 1688 a patří muži jménem Josua Selig ben Jacob Braunschweig. Do poloviny devatenáctého století byly nápisy vysekávány v hebrejštině, později v jazyce německém. Několik náhrobků nese příjmení Kreisky. Patří rodině rakouského spolkového kancléře Bruno Kreiského.',
        ),
      ],
    );
  }
}
