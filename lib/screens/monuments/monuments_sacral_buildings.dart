import 'package:dolni_kounice/components/monuments/sacral_buildings.dart';
import 'package:flutter/material.dart';
import 'package:dolni_kounice/screens/audio_guides/audio_guide_rosa_coeli/audio_guide_rosa_coeli.dart';
import 'package:flutter/cupertino.dart';
import 'package:dolni_kounice/components/gallery_photo_view_page.dart';
import 'package:dolni_kounice/components/monuments_page.dart';
import 'package:dolni_kounice/components/choice_container.dart';
import 'package:dolni_kounice/components/my_button.dart';
import 'package:dolni_kounice/constants/constants.dart';
import 'package:dolni_kounice/components/text_default_standart.dart';
import 'package:dolni_kounice/components/open_url_in_browser.dart';

class MonumentsSacralBuildings extends StatelessWidget {
  static String id = SacralBuildings().id;
  static SacralBuildings sacralBuildings = SacralBuildings();
  @override
  Widget build(BuildContext context) {
    return MonumentsPage(
      assetImage: sacralBuildings.imageGallery[0],
      textOfAppBar: 'Průvodce památkami',
      textHeader: sacralBuildings.name,
      tag: sacralBuildings.tag,
      isFloatingButton: false,
      onPressedFloatingButton: () {
        Navigator.pushNamed(context, AudioGuideRosaCoeli.id);
      },
      textOfFloatingButton: 'Přejít na audioprůvodce',
      listOfWidget: [
        TextDefaultStandart(
            text:
            'Nejen proslavenými objekty jsou Dolní Kounice významné. Také menší stavební památky dokážou zaujmout oko turisty jak v centru města, tak v nejbližším okolí.'),
        SizedBox(height: kDMarginLarger),
        ChoiceContainer(
            assetImageOfChoice: sacralBuildings.imageGallery[1],
            textOfChoice: 'Galerie',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => GalleryPhotoViewPage(
                    nameOfImageGallery: sacralBuildings.nameOfImageGallery,
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
              OpenUrlInBrowser().openUrl(sacralBuildings.url);
            },
          ),
        ),
        SizedBox(
          height: kDMarginLarger,
        ),
        TextDefaultStandart(
          text:
          'Na konci stromové aleje vpravo od silnice na Trboušany stojí čtyřboká boží muka, postavená kolem r. 1770. Další boží muka - trojboká se nachází asi pět metrů severně od hrany čelní části u kaple sv. Antonína. Čtyřboká boží muka z roku 1770 stojí při cestě mezi Karlovem a obcí Mělčany nad vrchem Antoníček. Trojboká boží muka se nachází před Pravlovem na konci Strání, kde přechází v trať Hájky.\n\nKříž na křesťanském hřbitově původně stával před starým hřbitovem na náměstí Míru. Byl vyroben 9. července 1776 a podle nápisu na podstavci díky nadaci osoby M. N. Kříž s letopočtem 1783 stojí na křižovatce u samoty bývalého zájezdního hostince na Karlově. Dal jej postavit Frantz Hlatky roku 1783. U silnice na Karlov asi sto metrů vlevo před odbočkou na Kamenný vrch, můžeme spatřit křížek, na kterém je vyryt nápis: „Pán můj a bůh můj ku cti boha postavila Antonie Plechová roku 1910“. Na severním okraji kounického katastru na Řepné hoře stojí kříž, který roku 1906 věnovali manželé Šléglovi z Mělčan. U cesty nad Mělčanami se nachází tzv. Zechmeisterův kříž. Stojí na hranici pozemků v tratích Lesky a Veselá hora. Kříž býval železný, umístěný na kamenném podstavci. V padesátých letech dvacátého století byl poničen vandaly. Do současné podoby jej opravil neznámý dobrovolník. Původní kříž nechala postavit rodina Zechmeisterových z Mělčan č. p. 21. Rok postavení je neznámý.\n\nKříž, který dominuje křižovatce Trboušany – ke hřbitovu, byl zhotoven roku 1768. O 250 metrů dále směrem na Trboušany se vpravo u silnice nachází další kříž, nedatovaný. Kříž na rohu kostela sv. Petra a Pavla má datování 1788. Jedná se o pamětní kříž z pískovco – vápenného materiálu. Stojí na čtvercovém podnoží s hranolovým soklem s odstupňovanými bočními hranatými volutovými křídly. Posledním významným křížem je dřevěný Misijní kříž u kostela sv. Petra a Pavla zhotovený roku 1946. Vystaven nepřízni povětrnostních vlivů značně zchátral. V roce 2010 byl v rámci rekonstrukce prostoru Masarykova náměstí před kostelem odstraněn a nahrazen novým, který zhotovil stolař Ladislav Sattler z Ivančické ulice.\n\nJednou z dominant Masarykova náměstí je socha sv. Jana Nepomuckého z roku 1735. Původně stávala u městských jatek na Zámecké ulici č. 495/46. Přemístěna byla odsud po roce 1990. Socha sv. Jana Nepomuckého na náměstí Míru byla zhotovena kolem r. 1750. Dříve stávala u vchodu před hřbitovem na náměstí Míru, později před vchodem na křesťanský hřbitov na Trboušanské ulici.\n\nSocha sv. Jana Nepomuckého nalevo od kostela sv. Petra a Pavla stojí na vysokém zděném podstavci s vpadlými rámy členěným dvěma jednoduchými římsami. Ty tvoří současně pilíř ke vstupní bráně na čtvercové podnoži u kostelní zahrady. Na základně zpodobňující oblaka klečí socha světce v životní velikosti. Světec je oděn do kanovnického roucha. V pravé ruce drží kříž s korpusem, levá ruka přidržuje břevno kříže. Kříž je mírně zvednutý k pravému rameni. Tělem světce probíhá esovitý pohyb. Hlavu má skloněnou k ukřižovanému. Plastika je zhotovena z pískovce. Socha byla zhotovena roku 1740. Původně stávala na Masarykově náměstí v místě, kde obec dala postavit malou kašnu s trojramennou petrolejovou lampou, mezi dnešní budovou Městského úřadu a domem č. 132/19. Na současné místo u kostela byla socha přemístěna roku 1883.\n\nPomník Mistra Jana Husa u mostu na ulici Rybárna byl slavnostně odhalen roku 1925. Pomník nechala vyrobit místní Osvětová komise, plaketu darovala tělocvičná jednota Sokol.',
        ),
      ],
    );
  }
}
