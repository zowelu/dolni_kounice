import 'package:dolni_kounice/components/monuments/castle_and_chateau.dart';
import 'package:dolni_kounice/screens/audio_guide_rosa_coeli/audio_guide_rosa_coeli.dart';
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
                'Roku 1537 získal kounické panství Jiří Žabka z Limberka. Postupně si Jiří Žabka vytvořil rozsáhlé dominium, a protože byl ekonomicky velice schopný, pustil se i do několika významných akcí. Začal s opravou kláštera, který si pak zvolil i za rodinnou hrobku a započal přestavbu hradu na zámek. Dnes na tuto přestavbu upomíná především točité schodiště hlavního paláce, unikátní na Moravě, jehož balustráda je zdobena plastikami hadů, želv, žab, ještěrek apod. Zámek byl vystavěn jako dvoupatrový, tři původní nárožní věže byly vestavěny do hmoty zdiva hlavního paláce. Hrad sice ztratil na malebnosti, ale získal na své mohutnosti.\n\nŽabkové drželi zámek s celým panstvím do roku 1561, kdy jej prodali pánům ze Zástřizl. Hynek a Jan ze Zástřizl jej prodali roku 1578 hejtmanovi Zdeňku Lvu z Rožmitálu a tito o deset let později Bernardu Drnovskému z Drnovic a na Rájci. Za něj došlo v letech 1588 –1618 k další fázi přestavby hradu a vznikla renesanční podoba, která se zachovala dodnes.'),
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
                'Před vstupní průčelí paláce nechali přistavit další trakt místnosti s Rytířským sálem a novým vstupním portálem. Celou budovu sjednotili sgrafitovou fasádou jako výzdobu stěn provedenou škrábáním ve vlhké omítce až na spodní vrstvu jiné barvy a opět rozšířili opevnění. Na východní baště nechali postavit kapli, ve které byla druhotně osazena dvě gotická hrotitá okna. Do kaple se vstupovalo nádherným pozdně renesančním portálem s erbem Drnovských z Drnovic. Některé místnosti prvního patra byly zaklenuty klenbami s geometrizujícími štukovými ornamenty. Z této doby pochází také mohutná vnější dělová bašta, později přestavěná na sýpku. Přestavbami Jiřího Žabky z Limberka a za Drnovských z Drnovic získal hrad podobu typického renesančního zámku, přičemž pevnostní charakter stavby zůstal zachován.\n\nPo pobělohorské konfiskaci zámek koupili roku 1622 Dietrichsteinové, kteří jej sice po požáru roku 1623 nechali v polovině 17. století opravit, ale nadále využívali pouze jako sídlo správy panství. Jediným vážnějším stavebním zásahem byly v průběhu 18. století úpravy hospodářských budov a stavba mohutné sýpky na jihovýchodní straně při dělové baště. Díky tomu se nám hlavní objekty původního hradu a pozdějšího zámku i s opevněním dochovaly ve své původní gotické a renesanční dispozici.\n\nKdyž v roce 1862 získali zámek sňatkem Herbersteinové, začal být využíván především k hospodářským účelům. Tím ovšem docházelo k postupné degradaci některých prostor, zejména druhého patra. Tato situace se nezměnila ani po roce 1918, kdy po První pozemkové reformě roku 1927 zámek získal bývalý správce hraběte Herbersteina Emil Tomec. Kolem roku 1935 Emil Tomec zemřel a majetek zdědil jeho bratr Bohuslav. Ten prodal zámek tehdejšímu obecnímu tajemníkovi Karlu Rubešovi. Po II. světové válce a různých právních záležitostech byl Rubeš označen za kolaboranta s říší. Ve městě se necítil mezi lidmi bezpečně a tak nakonec inzerátem zaměnil kounický zámek s Judr. Edlem za jeho vilu v Čechách a z Dolních Kounic se odstěhoval. Na konci druhé světové války došlo k vybourání gotického ostění druhé brány a k jejímu dosavadnímu provizornímu zabezpečení. V roce 1945 zámek poškodilo několik dělostřeleckých granátů.'),
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
                'Roku 1946 zámek zakoupil JUDr. Václav Edl a po roce 1948 se spolumajitelem objektu stal Státní statek. Teprve roku 1963 byl zámek i s opevněním zapsán jako kulturní památka. K definitivnímu znárodnění budov došlo až roku 1974. Tehdy celý areál převzalo tehdejší KSSPPOP (dnešní Památkový ústav) v Brně, jehož záměrem bylo zřídit zde své reprezentační, kulturní a společenské centrum. Dlouhá léta zanedbávaná údržba objektu si vyžádala generální rekonstrukci, v níž od roku 1986 pokračoval nový správce, tehdejší Státní vědecká knihovna (dnešní Moravská zemská knihovna) v Brně, která sem kromě svých depozitářů chtěla umístit Památník národního písemnictví.\n\nRoku 1992 byl zámek v rámci restituce navrácen do vlastnictví rodiny Edlů a rekonstrukční práce byly zastaveny. Objekt chátral a měnil se v ruiny. Edlovi neprojevili o využití objektu žádný zájem a prodali jej brněnské společnosti L. V. P., která zámek vlastní dodnes. V posledních letech majitel pilně pracuje na obnově zašlé slávy zámku. Nákladná a časově náročná rekonstrukce přináší velmi znatelné výsledky. Byly vykáceny náletové dřeviny a upravena příjezdová cesta. Během dubna až září probíhají prohlídky areálu a každý měsíc tzv. Hradní radovánky s programem pro rodiny s dětmi. Ve stanu za sýpkou jsou pořádány večerní diskotéky. Ve zrekonstruovaných prostorách reprezentačního sálu vlevo za vstupní bránou je oddací místnost pro svatebčany. Možnost pořádání narozenin, firemních akcí apod. nabízí opravené sklepení a první patro sýpky. V roce 2014 probíhala velmi náročná oprava střechy zámku.'),
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
