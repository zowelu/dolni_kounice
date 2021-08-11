import 'package:dolni_kounice/components/image_on_page_with_ontap.dart';
import 'package:dolni_kounice/components/monuments/history_of_the_town.dart';
import 'package:dolni_kounice/components/single_photo_view_page.dart';
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
        SizedBox(height: kDMarginLarger),
        //TextDefaultStyledText(text: '<bold>Další názvy města, jak se měnily během staletí:</bold> \n\n• 1275 - Cvoniz\n• 1351 - Cmutz\n• 1276, 1361 - Chunicz\n• 1385, 1417 - Inferior Cunicz\n• 1459, 1576, 1609 - Dolní Kounice\n• 1660 - Kanitz\n• 1696, 1737, 1878 - Unter Kanitz\n• 1904 - Stadt Kanitz\n• 1918 až 1945 – Kanitz, Dolní Kounice (oba názvy)\n • 1945 až dodnes - Dolní Kounice'),
        SizedBox(height: kDMargin),
        TextDefaultStandart(
            text:
                'Další názvy města, jak se měnily během staletí: \n\n• 1275 - Cvoniz\n• 1351 - Cmutz\n• 1276, 1361 - Chunicz\n• 1385, 1417 - Inferior Cunicz\n• 1459, 1576, 1609 - Dolní Kounice\n• 1660 - Kanitz\n• 1696, 1737, 1878 - Unter Kanitz\n• 1904 - Stadt Kanitz\n• 1918 až 1945 – Kanitz, Dolní Kounice (oba názvy)\n • 1945 až dodnes - Dolní Kounice'),
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
        TextDefaultStandart(
            text:
                'Další dějiny města jsou úzce spjaty s klášterem Rosa coeli, postaveným v letech 1181 až 1183 Vilémem z Pulína (nebo také z Kounic?). Klášter prožil tři a půl století vzestupů a úpadků až po krizi začátkem šestnáctého století zanikl. Roku 1702 byl učiněn pokus o jeho obnovení, ovšem o rok později vypukl ve městě obrovský požár, který se přenesl na rekonstruovaný klášter. Ohni padla za oběť střecha nad klášterním chrámem, kaplí, křížovou chodbou a ložnicemi pro kněze. Po požáru již střecha klášterního chrámu nebyla nikdy obnovena.'),
        SizedBox(height: kDMargin),
        //TextDefaultStyledText(text: '<bold>Klášterní areál stráží zámek</bold>, původně klášterní hrad, postavený v letech 1284 až 1330'),
        TextDefaultStandart(
            text:
                'Klášterní areál stráží zámek, původně klášterní hrad, postavený v letech 1284 až 1330'),
        SizedBox(height: kDMargin),
        ImageOnPageWithOnTap(
          assetImage: historyOfTheTown.imageGallery[2],
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SinglePhotoViewPage(
                    assetImage: historyOfTheTown.imageGallery[2]),
              ),
            );
          },
        ),
        SizedBox(height: kDMargin),
        TextDefaultStandart(
            text:
                'Zámek společně s dolnokounickým panstvím byl ve vlastnictví těchto šlechtických rodů a dalších majitelů:\n\n• 1537 – 1562 Žabkové z Limberka\n• 1562 – 1579 páni ze Zástřizl\n• 1579 – 1588 páni z Rožmitálu\n• 1588 – 1622 Drnovští z Drnovic\n• 1622 – 1862 Ditrichsteinové\n• 1862 – 1919 Herbersteinové\n• 1919 – 1937 Emil Tomec, správce panství Herbersteinů\n• 1937 – 1945 Karel Rubeš\n•1945 – 1948 Václav Edel\n\nPo několika desítkách let chátrání jej v současnosti vlastní soukromá společnost, která se snaží s velkým úsilím navrátit objektu původní lesk.'),
        SizedBox(height: kDMargin),
        ImageOnPageWithOnTap(
          assetImage: historyOfTheTown.imageGallery[3],
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SinglePhotoViewPage(
                    assetImage: historyOfTheTown.imageGallery[3]),
              ),
            );
          },
        ),
        SizedBox(height: kDMargin),
        //TextDefaultStyledText(text: '<bold>S historickými objekty a památkami se můžeme setkat v katastru Dolních Kounic doslova na každém kroku</bold>. Mimo klášter a zámek mohou návštěvníci shlédnout , lidově zvaný Barborka (Původně protestanstský kostel, v 17. stol. přestavěný do nynější podoby), Kostel sv. Petra a Pavla na Masarykově náměstí (Novorenesanční stavba z let 1877–1879, která nahradila starší kostel, zrušený po povodni v roce 1862), Kapli sv. Jana Křtitele (pozdně gotická stavba z 16. stol., nacházející se na Náměstí míru, kde se až do roku 1947 rozprostíral hřbitov), Měšťanské renesanční a barokní domy, Římskokatolickou faru z 18. století, několik barokních soch (např. socha sv. Jana Nepomuckého na Masarykově náměstí a socha téhož světce u kostela sv. Petra a Pavla), Boží muka a kříže. Nedílnou součástí města jsou pozůstatky kdysi rozsáhlé židovské obce - Synagoga, postavená v roce 1652–1655 v raně barokním slohu, patřící k nejstarším synagogám na Moravě a Židovský hřbitov, založený v roce 1680 ve svahu nad ghettem na jižním okraji města.'),
        TextDefaultStandart(
            text:
                'S historickými objekty a památkami se můžeme setkat v katastru Dolních Kounic doslova na každém kroku. Mimo klášter a zámek mohou návštěvníci shlédnout , lidově zvaný Barborka (Původně protestanstský kostel, v 17. stol. přestavěný do nynější podoby), Kostel sv. Petra a Pavla na Masarykově náměstí (Novorenesanční stavba z let 1877–1879, která nahradila starší kostel, zrušený po povodni v roce 1862), Kapli sv. Jana Křtitele (pozdně gotická stavba z 16. stol., nacházející se na Náměstí míru, kde se až do roku 1947 rozprostíral hřbitov), Měšťanské renesanční a barokní domy, Římskokatolickou faru z 18. století, několik barokních soch (např. socha sv. Jana Nepomuckého na Masarykově náměstí a socha téhož světce u kostela sv. Petra a Pavla), Boží muka a kříže. Nedílnou součástí města jsou pozůstatky kdysi rozsáhlé židovské obce - Synagoga, postavená v roce 1652–1655 v raně barokním slohu, patřící k nejstarším synagogám na Moravě a Židovský hřbitov, založený v roce 1680 ve svahu nad ghettem na jižním okraji města.'),
        SizedBox(height: kDMarginLarger),
        //TextDefaultStyledText(
        //text:
        //'<bold>Šibeniční hora</bold>, vypínající se nad údolím řeky Jihlavy, bývala ve středověku místem rozsudků smrti nad nejhoršími hříšníky. Poslední poprava upálením zaživa zde byla vykonána 21. srpna 1754 na služce Marianě Kvapilové z Neslovic, obviněné ze žhářství.'),
        TextDefaultStandart(
            text:
                'Šibeniční hora, vypínající se nad údolím řeky Jihlavy, bývala ve středověku místem rozsudků smrti nad nejhoršími hříšníky. Poslední poprava upálením zaživa zde byla vykonána 21. srpna 1754 na služce Marianě Kvapilové z Neslovic, obviněné ze žhářství.'),
        SizedBox(height: kDMargin),
        ImageOnPageWithOnTap(
          assetImage: historyOfTheTown.imageGallery[4],
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SinglePhotoViewPage(
                    assetImage: historyOfTheTown.imageGallery[4]),
              ),
            );
          },
        ),
        SizedBox(height: kDMargin),
        //TextDefaultStyledText(
        //text:
        //'<bold>Roku 1571 byla Dolním Kounicím císařským patentem udělena pečeť s krahujcem ve znaku</bold>. Dále nový znak udělený panovníkem Maxmiliánem II. dne 10. dubna 1571. Popis: „Štít červené, aneb rubínové barvy, v němžto krahujec pták své přirozené barvy s rozletitými křídly, majíc nohy rozhozené a držíc v ústech neboližto v pyscích hrozen vinný modrý, v spodku pak téhož štítu jeden list zelený z křoví vinného rozložený a u vrchu v každém rohu téhož štítu týmž způsobem“. Tento městský znak Dolní Kounice užívají dodnes.'),
        TextDefaultStandart(
            text:
                'Roku 1571 byla Dolním Kounicím císařským patentem udělena pečeť s krahujcem ve znaku. Dále nový znak udělený panovníkem Maxmiliánem II. dne 10. dubna 1571. Popis: „Štít červené, aneb rubínové barvy, v němžto krahujec pták své přirozené barvy s rozletitými křídly, majíc nohy rozhozené a držíc v ústech neboližto v pyscích hrozen vinný modrý, v spodku pak téhož štítu jeden list zelený z křoví vinného rozložený a u vrchu v každém rohu téhož štítu týmž způsobem“. Tento městský znak Dolní Kounice užívají dodnes.'),
        SizedBox(height: kDMargin),
        //TextDefaultStyledText(
        //text:
        //'Péče o obyvatelstvo je zajištěna jak množstvím obchodů a služeb, tak zdravotnickou péčí. <bold>Patrně nejstarším průmyslovým objektem na území Dolních Kounic byl klášterní, panský a později soukromý mlýn</bold>. První typický obchod v Dolních Kounicích byl otevřen již roku 1797. Jednalo se o Krupařství rodiny Bartoňkovy na náměstí Míru č. p. 217. První nejstarší továrnou ve městě byl komplex, sestávající textilky, škrobárny a bělidla, založený v roce 1806 pod názvem Továrna na modrotisk, neboli pod německým názvem Blaudruck Fabrik Frantz Baltzar. Mezi další významné podniky města, z nichž některé již zanikly, můžeme jmenovat např. cihelny, Retex, kamenolom, cementárnu a Drukocel. Ve druhé polovině devatenáctého století bylo velmi rozšířeno perleťářství. Dostatek suroviny - perletě, poskytovala zpočátku řeka Jihlava, díky existenci škeble rybničné. Také zemědělství a ovocnářství bylo významným článkem obživy obyvatel. Do dnešních dnů přetrvalo převážně vinohradnictví, jež má v Dolních Kounicích bohatou tradici. První písemná zpráva o kounických vinicích je z roku 1361. V roce 1737 vzniklo Počestné bratrstvo vinařů aneb kopáčů v městě Dolních Kounicích. Svou strukturou se bratrstvo podobalo cechu. Jeho nástupci – Bratrstvo vinařů a kopáčů 1737 působí ve městě dodnes.'),
        TextDefaultStandart(
            text:
                'Péče o obyvatelstvo je zajištěna jak množstvím obchodů a služeb, tak zdravotnickou péčí. Patrně nejstarším průmyslovým objektem na území Dolních Kounic byl klášterní, panský a později soukromý mlýn. První typický obchod v Dolních Kounicích byl otevřen již roku 1797. Jednalo se o Krupařství rodiny Bartoňkovy na náměstí Míru č. p. 217. První nejstarší továrnou ve městě byl komplex, sestávající textilky, škrobárny a bělidla, založený v roce 1806 pod názvem Továrna na modrotisk, neboli pod německým názvem Blaudruck Fabrik Frantz Baltzar. Mezi další významné podniky města, z nichž některé již zanikly, můžeme jmenovat např. cihelny, Retex, kamenolom, cementárnu a Drukocel. Ve druhé polovině devatenáctého století bylo velmi rozšířeno perleťářství. Dostatek suroviny - perletě, poskytovala zpočátku řeka Jihlava, díky existenci škeble rybničné. Také zemědělství a ovocnářství bylo významným článkem obživy obyvatel. Do dnešních dnů přetrvalo převážně vinohradnictví, jež má v Dolních Kounicích bohatou tradici. První písemná zpráva o kounických vinicích je z roku 1361. V roce 1737 vzniklo Počestné bratrstvo vinařů aneb kopáčů v městě Dolních Kounicích. Svou strukturou se bratrstvo podobalo cechu. Jeho nástupci – Bratrstvo vinařů a kopáčů 1737 působí ve městě dodnes.'),
        SizedBox(height: kDMargin),
        //TextDefaultStyledText(
        //text:
        //'<bold>V roce 1862 postihla Dolní Kounice největší povodeň v dějinách</bold>. Řeka Jihlava se vylila z břehů, a protože voda sebou nesla obrovské množství ledových ker, dřeva a různých trosek, strhávala vše, co jí stálo v cestě. Za oběť padl most, splav, byl poničen mlýn a strženo bylo celkem 180 domů. Musel být uzavřen a o několik let později zbořen, starý gotický kostel u řeky.'),
        TextDefaultStandart(
            text:
                'V roce 1862 postihla Dolní Kounice největší povodeň v dějinách. Řeka Jihlava se vylila z břehů, a protože voda sebou nesla obrovské množství ledových ker, dřeva a různých trosek, strhávala vše, co jí stálo v cestě. Za oběť padl most, splav, byl poničen mlýn a strženo bylo celkem 180 domů. Musel být uzavřen a o několik let později zbořen, starý gotický kostel u řeky.'),
        SizedBox(height: kDMargin),
        //TextDefaultStyledText(
        //text:
        //'Vzdělanost obyvatel zajišťovaly školy již od vzniku kláštera. Během staletí se vyskytovala škola klášterní, bratrská, obecná, židovská a německá. Roku 1910 byla otevřena nová měšťanská škola.\n\nRok 1920 znamenal významný mezník zvýšení komfortu života obyvatel, neboť bylo do Dolních Kounic <bold>zavedeno elektrické osvětlení</bold. a o pět let později první autobusová doprava, která postupně nahradila dopravu pošty a osob dostavníkem.\n\n<bold>Prezident Tomáš Garrigue Masaryk</bold> projížděl 13. června 1928 Dolními Kounicemi na své cestě po Moravě.'),
        TextDefaultStandart(
            text:
                'Vzdělanost obyvatel zajišťovaly školy již od vzniku kláštera. Během staletí se vyskytovala škola klášterní, bratrská, obecná, židovská a německá. Roku 1910 byla otevřena nová měšťanská škola.\n\nRok 1920 znamenal významný mezník zvýšení komfortu života obyvatel, neboť bylo do Dolních Kounic zavedeno elektrické osvětlení. a o pět let později první autobusová doprava, která postupně nahradila dopravu pošty a osob dostavníkem.\n\nPrezident Tomáš Garrigue Masaryk projížděl 13. června 1928 Dolními Kounicemi na své cestě po Moravě.'),
        SizedBox(height: kDMargin),
        //TextDefaultStyledText(
        //text:
        //'V době mobilizace roku 1938 se v Dolních Kounicích nacházel štáb 1. praporu 53. pluku, jehož velitelem byl Ludvík Svoboda. 15. března 1939 zahájila německá vojska obsazování našeho města. Okupace vyvrcholila 18. dubna 1945, kdy <bold>německé vojsko vyhodilo do povětří most a město tak bylo rozděleno na dvě části</bold>. V ten dorazili i první sovětští vojáci, přesto si po několikadenních bojích museli obyvatelé počkat na definitivní osvobození až do 8. května. Při osvobozování Dolních Kounic <bold>zahynulo 23 obyvatel</bold> a šest vojáků Rudé armády. V <bold>koncentračních táborech</bold> zemřelo 66 osob, z toho 56 místních Židů.'),
        TextDefaultStandart(
            text:
                'V době mobilizace roku 1938 se v Dolních Kounicích nacházel štáb 1. praporu 53. pluku, jehož velitelem byl Ludvík Svoboda. 15. března 1939 zahájila německá vojska obsazování našeho města. Okupace vyvrcholila 18. dubna 1945, kdy německé vojsko vyhodilo do povětří most a město tak bylo rozděleno na dvě části. V ten dorazili i první sovětští vojáci, přesto si po několikadenních bojích museli obyvatelé počkat na definitivní osvobození až do 8. května. Při osvobozování Dolních Kounic zahynulo 23 obyvatel a šest vojáků Rudé armády. V koncentračních táborech zemřelo 66 osob, z toho 56 místních Židů.'),
        SizedBox(height: kDMargin),
        //TextDefaultStyledText(
        //text:
        //'<bold>Nový most</bold> byl společně s přilehlou komunikací směrem na Ivančice vybudován v šedesátých letech dvacátého století. Roku 1964 odebraly státní orgány Dolním Kounicím statut města. Navrácen byl na základě dekretu tehdejšího předsedy Poslanecké sněmovny Parlamentu České republiky Miloše Zemana.'),
        TextDefaultStandart(
            text:
                'Nový most byl společně s přilehlou komunikací směrem na Ivančice vybudován v šedesátých letech dvacátého století. Roku 1964 odebraly státní orgány Dolním Kounicím statut města. Navrácen byl na základě dekretu tehdejšího předsedy Poslanecké sněmovny Parlamentu České republiky Miloše Zemana.'),
        SizedBox(height: kDMargin),
      ],
    );
  }
}
