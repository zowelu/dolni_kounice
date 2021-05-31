import 'package:dolni_kounice/components/castle_and_chateau.dart';
import 'package:dolni_kounice/components/rosa_coeli.dart';
import 'package:dolni_kounice/screens/audio_guide_rosa_coeli/audio_guide_rosa_coeli.dart';
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

class MonumentsCastleAndChateau extends StatefulWidget {
  const MonumentsCastleAndChateau({Key key}) : super(key: key);
  static String id = CastleAndChateau().id;
  @override
  _MonumentsCastleAndChateauState createState() => _MonumentsCastleAndChateauState();
}

class _MonumentsCastleAndChateauState extends State<MonumentsCastleAndChateau> {
    CastleAndChateau castleAndChateau = CastleAndChateau();
    @override
    Widget build(BuildContext context) {
      return MonumentsPage(
        assetImage: castleAndChateau.imageGalleryCastleAndChateau[0],
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
              assetImageOfChoice: castleAndChateau.imageGalleryCastleAndChateau[2],
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
            'Stavba kounického zámku, původně hradu, probíhala v letech 1285 až 1330. Jádrem je protáhlý lichoběžník, téměř obdélník, o středních příčkách 27 x 47 metrů. Je situován podle hrany prudkého svahu k řece Jihlavě. Kolem dvoupatrové palácové budovy obíhá ze tří stran velké vnější nádvoří, dnes z části obestavěné hospodářskými budovami.Král Václav II. vzal kounický klášter roku 1284 pod svůj patronát, což prakticky znamenalo začátek budování charakteru městečka, později města Dolních Kounic. Nad klášterem byl tedy v té době patronát panovníka i papeže. To samozřejmě vedle řady povinností přinášelo klášteru i samotným Dolním Kounicím určité výhody. Spolu s růstem prestiže kláštera a ochrany i rozšiřování majetku posilovalo i mocenské postavení kláštera. Také z těchto důvodů mohl klášter přistoupit k vybudování klášterního hradu, který pak sloužil jako sídlo probošta.',
          ),
          SizedBox(
            height: kDMargin,
          ),
          ImageOnPageWithOnTap(
            assetImage: castleAndChateau.imageGalleryCastleAndChateau[7],
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SinglePhotoViewPage(
                      assetImage: castleAndChateau.imageGalleryCastleAndChateau[7]),
                ),
              );
            },
          ),
          ImageOnPageWithOnTap(
            assetImage: castleAndChateau.imageGalleryCastleAndChateau[1],
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SinglePhotoViewPage(
                      assetImage: castleAndChateau.imageGalleryCastleAndChateau[1]),
                ),
              );
            },
          ),
          SizedBox(
            height: kDMargin,
          ),
          TextDefaultStandart(
              text:
              'Po smrti probošta hraběte Jana VI. z Althanu v r. 1517 nastoupil Martin Göschel. Tento ambiciózní kněz přestoupil v roce 1521 na luteránskou víru a dokonce si vzal jednu z kounických jeptišek za manželku, domnívaje se, že doba je mu natolik příznivá, že dojde svých velikých cílů. Podle jeho vzoru pak i ostatní jeptišky vedly údajně neřestný život. To vše mělo za následek, že jej olomoucký biskup suspendoval a král Ludvík Jagellonský na něj vydal vyhošťovací rozkaz, ale  Göschel toho nedbal a zůstal v klášteře až do r. 1526. To vše mělo za následek rostoucí hněv poddaných kláštera.  V Praze na český trůn mezitím nastoupil Ferdinand I. Habsburský, o kterém se mnozí domnívali, že je tolerantní vůči nekatolickým církvím a že u něj tito snáze prorazí. Tak se domníval i Göschel, který potom, co se uchýlil do Mikulova k Novokřtěncům, byl povolán Ferdinandem do Prahy. Sem Göschel přišel, ale panovník jej nechal uvěznit, vyslýchat právem útrpným a hlavu mu zachránila pouze přímluva některé šlechty, která dosáhla toho, že nebyl upálen za živa, ale byl na jejich přímluvu předán olomouckému biskupovi Stanislavovi Pavlovskému. Ten Göschla nechal znovu uvěznit a ve vězení nakonec  Göschel umírá.\n\nMezi tím si zbylých jedenáct řeholnic zvolilo za nového probošta Jana, avšak pohoršlivý život, který byl v klášteře veden, přivedl okolní obyvatelstvo k přepadení kláštera. Jeptišky se rozutekly po království a chrám byl částečně zpustošen a zneuctěn. Po útěku jeptišek se celého majetku ujaly Moravské zemské stavy a ty předaly panství nakonec panovníkovi Ferdinandu I. Habsburskému, neboť se vlastně jednalo o královský klášter. Ferdinand nejprve na čas zastavil panství královně Marii – vdově po Ludvíku Jagelonském, pak dáno k doživotnímu užívání tridentskému biskupovi Bernardovi a nakonec po předcházející zástavě dne 3. října 1537 dědičně prodáno celé panství místokancléři českého královstvi  panu Jiřímu Žabkovi z Limberka.\n\nPo několika významných šlechtických rodech, přešlo panství roku 1622 rodu Dietrichsteinů. Ferdinand z Dietrichsteina prodal v roce 1698 areál kláštera Strahovskému klášteru. Strahov se rozhodl kounický klášter opravit a zastřešit. Mimo další úpravy byla obnovena klenba dolního ambitu křížové chodby křídla vedle kostela, nová dřevěná - došková střecha kostela a postavena nová klášterní obytná budova. Ovšem 4. července 1703 vypukl ve městě obrovský požár a ten se z Růžové ulice přes panský statek a ovčín, ve kterém uhořelo na 600 ovcí, přenesl na rekonstruovaný klášter. Zde padla za oběť tomuto ohni střecha nad klášterním chrámem, kaplí, křížovou chodbou a ložnicemi pro kněze. V opravách kláštera se pokračovalo ještě dalších patnáct let, pouze klášterní chrám již zůstal nezastřešen.'),
          SizedBox(
            height: kDMargin,
          ),
          ImageOnPageWithOnTap(
            assetImage: castleAndChateau.imageGalleryCastleAndChateau[1],
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SinglePhotoViewPage(
                      assetImage: castleAndChateau.imageGalleryCastleAndChateau[1]),
                ),
              );
            },
          ),
          TextDefaultStandart(
              text:
              'Přes postupné opravy jsou zprávy o kounickém klášteře většinou neradostné. Objekt pustoší procházející vojska, škody vznikají na klášterní budově v jejich otevřených částech vlivem deště a sněhu. Od roku 1804 začal klášter rychle propadat zkáze a po projednání a se souhlasem Strahova byl prodán knížeti Janu z Dietrichsteina a tím opět připojen ke kounickému panství. Od těch let byl klášter vystaven napospas povětrnostním vlivům a lidem, kteří využívali klášterních budov jako kamenného lomu. Panští úřednici rozdávali celé desítky povozů stavebního kamene, spolu s kamenem a cihlami byly bez jakéhokoliv výběru vyváženy i celé kusy klenebních žeber, klenební svorníky a jiné tesané kamenické prvky, součásti klášterní stavby. Tento stav trval přibližně do roku 1890, kdy se nový majitel panství, syn poslední kněžny z Dietrichsteina Josef Johan z Herbersteina rozhodl, že klášter zachrání před zkázou nejnaléhavější opravou.\n\nTeprve po roce 1927 bylo zastaveno devastování kláštera a postupně se ruina začala sanovat a udržovat. Právě v tomto roce přešel zámek i s klášterem do vlastnictví původně hraběcího správce Emila Tomce. Ten předal kostelní zříceninu do správy právě se tvořícího „Komitétu pro záchranu památek v Dolních Kounicích“, čímž se tato vzácná památka stala obecně přístupnou, neboť společnost v ní zajišťovala průvodcovskou činnost. Zásluhou „Komitétu“ byly již o rok později provedeny některé práce nevyžadující velkých finančních nákladů, neboť financí se zejména na počátku nedostávalo. Díky všem pracím byla památka uspokojivě na řadu let fixována. Problematická ovšem byla otázka vlastnictví. Po zániku feudálního panství získal budovy zámku a kláštera již zmiňovaný hraběcí správce Emil Tomec a jako soukromé vlastnictví klášter prodal Dr. Jaromíru Košťálovi. Objekt byl v jejich vlastnictví prakticky po celou dobu existence „Komitétu“, který samozřejmě mohl investovat jen málo financí a tak je soustředil na klášterní chrám. Po druhé světové válce vznikla roku 1952 tzv. Osvětová beseda, jejímž členem se stal i Vlastivědný kroužek Osvětové besedy, nástupce původního Komité pro záchranu památek.'),
          SizedBox(
            height: kDMargin,
          ),
          ImageOnPageWithOnTap(
            assetImage: castleAndChateau.imageGalleryCastleAndChateau[1],
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SinglePhotoViewPage(
                      assetImage: castleAndChateau.imageGalleryCastleAndChateau[1]),
                ),
              );
            },
          ),
          TextDefaultStandart(
              text:
              'Roku 1974 přešel klášter do vlastnictví Krajského ústavu státní památkové péče a ochrany přírody v Brně, jako státní památka I. kategorie. V tomto období byl využíván bytový objekt konventu k ubytování několika rodin. Okresní národní výbor Brno – venkov investoval asi 1, 6 milionu Kčs do oprav. Probíhalo zejména zpevnění a vyspárování korunního zdiva a oprava střech. Tyto práce probíhaly na konci osmdesátých let minulého století a posléze vedly v roce 1990 k novému slavnostnímu otevření a zpřístupnění památky pro veřejnost. V novém společenském systému, který ve státě nastal po roce 1989, připadl restituční nárok památky zpět na rodinu Košťálových. Rodina ji věnovala darem Biskupské konsistoři v Brně. Ta ve spolupráci s Městským úřadem v Dolních Kounicích zajišťuje v současnosti provoz kláštera.'),
          SizedBox(height: kDMarginLarger),
          TextDefaultHeader(text: 'Půdorys klášterního areálu Rosa coeli'),
          SizedBox(height: kDMargin),
          Container(
            decoration: BoxDecoration(color: Colors.white),
            child: ImageOnPageWithOnTap(
              assetImage: castleAndChateau.imageGalleryCastleAndChateau[1],
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SinglePhotoViewPage(
                        assetImage: castleAndChateau.imageGalleryCastleAndChateau[1]),
                  ),
                );
              },
            ),
          ),
          TextDefaultStandart(
              text:
              'I A presbyterium kostela\nI B transept kostela\nI C loď kostela\nI D portál kostela\nI E sakristie kostela\nII A rajský dvůr\nII B křížová chodba\nIII kapitulní síň\nIV klášterní budovy')
        ],
      );
  }
}
