import 'package:dolni_kounice/components/monuments/castle_and_chateau.dart';
import 'package:dolni_kounice/screens/audio_guides/audio_guide_rosa_coeli/audio_guide_rosa_coeli.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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

class MonumentsCastleAndChateau extends StatelessWidget {
  static String id = CastleAndChateau().id;
  static CastleAndChateau castleAndChateau = CastleAndChateau();
  @override
  Widget build(BuildContext context) {
    return MonumentsPage(
      assetImage: castleAndChateau.imageGallery[0],
      textOfAppBar: 'Průvodce památkami',
      textHeader: castleAndChateau.name,
      tag: castleAndChateau.tag,
      isFloatingButton: false,
      onPressedFloatingButton: () {
        Navigator.pushNamed(context, AudioGuideRosaCoeli.id);
      },
      textOfFloatingButton: 'Přejít na audioprůvodce',
      listOfWidget: [
        TextDefaultStandart(
            text:
                'Mohutná stavba původně klášterního hradu střeží město od západní strany. Rozsáhlý areál, léta chátrající, v posledních letech zažívá rozkvět.'),
        SizedBox(height: kDMarginLarger),
        ChoiceContainer(
          assetImageOfChoice: castleAndChateau.imageGallery[2],
          textOfChoice: 'Galerie',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => GalleryPhotoViewPage(
                  nameOfImageGallery: castleAndChateau.nameOfImageGallery,
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
              OpenUrlInBrowser().openUrl(castleAndChateau.url);
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
              'Stavba zámku, původně hradu, probíhala v letech v letech 1285 až 1330. Jádrem je protáhlý lichoběžník, téměř obdélník, o středních příčkách 27 x 47 metrů. Je situován podle hrany prudkého svahu k řece Jihlavě. V pozdějších letech byl hrad rozšiřován o další pásma hradeb, příkopů a padacích mostů a proto nebyl nikdy dobyt. To umožnilo zachování mnoha středověkých stavebních prvků do dnešní doby. Kolem třípodlažní palácové budovy obíhá ze tří stran velké vnější nádvoří, dnes z části obestavěné hospodářskými budovami. Král Václav II. vzal kounický klášter včetně klášterního hradu roku 1284 pod svůj patronát, což prakticky znamenalo začátek budování charakteru městečka, později města Dolních Kounic. Nad klášterem měl v té době patronát panovník i papež. To samozřejmě vedle řady povinností přinášelo klášteru, klášternímu hradu i samotným Dolním Kounicím výhody a prestiž.',
        ),
        SizedBox(
          height: kDMargin,
        ),
        ImageOnPageWithOnTap(
          assetImage: castleAndChateau.images[0],
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    SinglePhotoViewPage(assetImage: castleAndChateau.images[0]),
              ),
            );
          },
        ),
        SizedBox(
          height: kDMargin,
        ),
        TextDefaultStandart(
            text:
                'Roku 1537 získal kounické panství Jiří Žabka z Limberka a od té doby byla vlastníky celého panství světská šlechta. Postupně si zde Jiří Žabka vytvořil rozsáhlé dominium, a protože byl ekonomicky velice schopný, pustil se i do rozsáhlé přestavby hradu a kláštera. Jeho přestavba hradu, zejména snížení hradeb, zasypání hradních obraných příkopů kolem hradu, zrušení všech 4 padacích mostů a zapsání hradu do všech desek jako zámku, zachránilo tento hrad od zboření v době, kdy Habsburkové nařídili zbořit na Moravě všechny hrady, které by se mohly stát místem odporu. Přes tuto rozsáhlou přestavbu si hrad zachoval pevnostní charakter a proto je dnes označován za hrad i zámek. Dnes  tuto přestavbu upomíná kromě pozůstatků upravených pevnostních prvků hradu, především točité schodiště hlavního paláce, unikátní ve střední Evropě svou konstrukcí, jehož balustráda je zdobena plastikami hadů, želv, žab, ještěrek apod. Zámek byl vystavěn jako třípodlažní s rozsáhlým podkrovím. Tři původní nárožní věže byly vestavěny do hmoty zdiva hlavního paláce. Hrad tak získal na své mohutnosti. Žabka opravil i klášter, který si pak zvolil i za rodinnou hrobku.\n\nŽabkové drželi zámek s celým panstvím do roku 1561, kdy jej prodali pánům ze Zástřizl. Hynek a Jan ze Zástřizl jej prodali roku 1578 hejtmanovi Zdeňku Lvu z Rožmitálu a tito o deset let později Bernardu Drnovskému z Drnovic a na Rájci. Za něj došlo v letech 1588 –1618 k další fázi přestavby hradu a vznikla renesanční podoba, která se zachovala dodnes.'),
        SizedBox(
          height: kDMargin,
        ),
        ImageOnPageWithOnTap(
          assetImage: castleAndChateau.imageGallery[1],
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SinglePhotoViewPage(
                    assetImage: castleAndChateau.imageGallery[1]),
              ),
            );
          },
        ),
        TextDefaultStandart(
            text:
                'Před vstupní průčelí paláce nechali přistavit další trakt místnosti s Rytířským sálem a novým vstupním portálem. Celou budovu sjednotili sgrafitovou fasádou jako výzdobu stěn provedenou škrábáním ve vlhké omítce až na spodní vrstvu jiné barvy a opět rozšířili opevnění. Na východní baště nechali postavit kapli, ve které byla druhotně osazena dvě gotická hrotitá okna. Do kaple se vstupovalo nádherným pozdně renesančním portálem s erbem Drnovských z Drnovic. Některé místnosti prvního patra byly zaklenuty klenbami s geometrizujícími štukovými ornamenty. Z této doby pochází také mohutná vnější dělová bašta, později přestavěná na sýpku. Přestavbami Jiřího Žabky z Limberka a za Drnovských z Drnovic získal hrad podobu typického renesančního zámku, přičemž pevnostní charakter stavby zůstal zachován.\n\nPo pobělohorské konfiskaci zámek koupili roku 1622 Dietrichsteinové, kteří jej sice po požáru roku 1623 nechali v polovině 17. století opravit, ale nadále využívali pouze jako sídlo správy panství. Jediným vážnějším stavebním zásahem byly v průběhu 18. století úpravy hospodářských budov a stavba mohutné sýpky na jihovýchodní straně při dělové baště. Díky tomu se nám hlavní objekty původního hradu a pozdějšího zámku i s opevněním dochovaly ve své původní gotické a renesanční dispozici.\n\nKdyž v roce 1862 získali zámek sňatkem Herbersteinové, začal být využíván především k hospodářským účelům. Tím ovšem docházelo k postupné degradaci některých prostor, zejména druhého patra. Tato situace se nezměnila ani po roce 1918, kdy po První pozemkové reformě roku 1927 zámek získal bývalý správce hraběte Herbersteina Emil Tomec. Kolem roku 1935 Emil Tomec zemřel a majetek zdědil jeho bratr Bohuslav. Ten prodal zámek tehdejšímu obecnímu tajemníkovi Karlu Rubešovi. Na konci druhé světové války došlo k poškození hradu a zámku dělostřelbou, které bylo opraveno až v opravách současným soukromým majitelem hradu a zámku v letech 2006 až 2015.'),
        SizedBox(
          height: kDMargin,
        ),
        ImageOnPageWithOnTap(
          assetImage: castleAndChateau.imageGallery[0],
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SinglePhotoViewPage(
                    assetImage: castleAndChateau.imageGallery[0]),
              ),
            );
          },
        ),
        TextDefaultStandart(
            text:
                'Roku 1946 zakoupil zámek JUDr. Václav Edl. Po roce 1948 se spolumajitelem objektu stal Státní statek. Teprve roku 1963 byl zámek i s opevněním zapsán jako kulturní památka ČR. K definitivnímu znárodnění budov došlo až roku 1974. Tehdy celý areál převzalo tehdejší KSSPPOP (dnešní Památkový ústav) v Brně, jehož záměrem bylo zřídit zde své reprezentační, kulturní a společenské centrum. Dlouhá léta zanedbávaná údržba objektu si vyžádala generální rekonstrukci, v níž od roku 1986 pokračoval nový správce, tehdejší Státní vědecká knihovna (dnešní Moravská zemská knihovna) v Brně, která sem kromě svých depozitářů chtěla umístit Památník národního písemnictví. Tento záměr sice zničil některé klenby, ale významně zlepšil statiku celého paláce, potřebou unést zátěž těžkými knihami.\n\nRoku 1992 byl zámek v rámci restituce navrácen do vlastnictví rodiny Edlů a rekonstrukční práce byly zastaveny. Objekt chátral a měnil se v ruiny. Edlovi neprojevili o využití objektu žádný zájem a prodali jej brněnské společnosti L. V. P., spol s.r.o, vlastněnou rodinou Zoubků, která hrad a zámek vlastní dodnes. Zoubkové se hlásí ke starobylému Moravskému rodu Zoubků ze Zdětína.\n\nV posledních letech majitel pilně pracuje na obnově zašlé slávy zámku. Nákladná a časově náročná rekonstrukce přináší podstatné změny k lepšímu jak z hlediska stavu tak i možností využití této významné kulturní památky ČR. Byly obnoveny veškeré plochy uvnitř i vně zámku, obnoveny krovy a  střechy, opraveny narušené hradby, zajištěny budovy před zatékáním, zajištěno větrání promočených zdí a postupně instalována okna a dveře, obnoveny hospodářské budovy, vybudována hradní vinárna v hradních sklepích, zavedena voda, odpady, elektrifikace a mnoho dalšího, co stojí za shlédnutí. Budova sýpky s rozsáhlými sály je vytápěna a umožňuje celoroční provoz. Hrad a zámek je dnes vyhledáván až ze zahraničí  pro svatby, firemní akce a soukromé rodinné a společenské aktivity a mnohé další využití, včetně pravidelných komentovaných prohlídek veřejností.'),
        SizedBox(height: kDMarginLarger),
        TextDefaultHeader(text: 'Půdorys zámeckého areálu'),
        SizedBox(height: kDMargin),
        Container(
          color: Colors.white,
          child: ImageOnPageWithOnTap(
            assetImage: castleAndChateau.images[1],
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SinglePhotoViewPage(
                      assetImage: castleAndChateau.images[1]),
                ),
              );
            },
          ),
        ),
        SizedBox(height: kDMargin),
        TextDefaultStandart(
            text:
                '1 první brána\n2 druhá brána\n3 třetí brána\nB barbakán\nD vnitřní dělová bašta\nH hospodářské budovy\nK kaple\nL branka na cestu ke klášteru\nO bašty\nS sýpka s vnější dělovou baštou\nZ točité schodiště Jiřího Žabky')
      ],
    );
  }
}
