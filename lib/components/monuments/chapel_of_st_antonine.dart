class ChapelOfStAntonine {
  String id = '/monumentsChapelOfStAntonine';
  String name = 'Kaple sv. Antonína';
  String url = 'https://www.dolnikounice.cz/kaple-sv-antonina/ds-4776/p1=13316';
  String tag = 'monumentsChapelOfStAntonine';
  String nameOfImageGallery = 'imageGalleryChapelOfStAntonine';

  ///List názvů kapitol
  List<String> chapter = [
    'Kaple sv. Antonína',
  ];

  List<String> mp3 = [
    'audio/kaple_sv_antonina/kaple_sv_antonina.mp3',
  ];

  ///Map jednotlivých kapitol audioprůvodce a jejich přepisu
  Map<String, String> audioText = {
    'Kaple sv. Antonína':'Poutní kaple sv. Antonína se vypíná na stejnojmenném kopci nad řekou a je působivým objektem poutajícím ze široké vzdálenosti pozornost návštěvníků města.\n\nKaple je zavřená a přístupná pouze během pouti v červnu.\n\n\nHistorie kaple sv. Antonína\n\nKaple sv. Antonína jako dřevěná byla postavena v roce 1654. O sto let později pak byla nahrazena stavbou zděnou, neboť nestačila velkému počtu poutníků. Náklady na stavbu hradil kníže Karel Maxmilián z Dietrichsteina. Kaple byla postavena brněnským stavitelem Františkem Antonínem Grimmem, který žil v letech 1710 až 1784. Tento barokní stavitel a architekt projektoval např. Zábrdovický zámek a zámek v Napajedlech. Je pohřben i se svým otcem v brněnské kapucínské hrobce. Podle jeho projektu byl také stavěn zámek v Kupařovicích. Byl dvorním stavitelem knížat z Dietrichsteina v té době. Budova kaple má velkou klenutou kopuli a tři vchody - hlavní a dva boční.\n\nJak uvádí zakládací listina z 30. dubna 1654, její vybudování iniciovali dolnokouničtí občané k poctě patronů sv. Antonína Paduánského a sv. Floriána… „aby se přimluvili za obyvatele, kteří každoročně strádají různými ohni a záplavami“. Ke stavbě přispěly okolní obce Pravlov, Němčičky, Kupařovice, Malešovice, Odrovice a další z kounického knížecího panství.\n\nKapličky - jednotlivá zastavení křížové cesty - byly vybudovány někdy na počátku 19. století. Roku 1899 byly do jednotlivých zastavení pořízeny z Blanska litinové plastiky, každá o hmotnosti padesát kilogramů. Původně tam byly obrazy staré křížové cesty z kostela u řeky, jenž byl po povodni roku 1862 zbourán. Staré obrazy ze zastavení se poděly neznámo kam.\n\nV roce 1948 byla kaple, poškozená válečnými událostmi, opravena. Další generální oprava začala roku 2013. Práce začaly vysekáním dřevin a od července probíhaly hlavní práce na střeše. Rekonstrukce kaple pokračovala v roce 2015 opravou fasády.\n\nTradiční pouť ke svatému Antonínovi se koná každoročně v červnu. Majitelem kaple je církev Římskokatolická.',
  };

  ///List obrázků pro použití nejen v galerii
  List<String> imageGallery = [
    'assets/images/pamatky/kaple_sv_antonina/antonin-venek-1.jpg',
    'assets/images/pamatky/kaple_sv_antonina/antonin-venek-2.jpg',
    'assets/images/pamatky/kaple_sv_antonina/antonin-venek-3.jpg',
    'assets/images/pamatky/kaple_sv_antonina/antonin-venek-5.jpg',
    'assets/images/pamatky/kaple_sv_antonina/antonin-venek-6.jpg',
    'assets/images/pamatky/kaple_sv_antonina/antonin-venek-7.jpg',
    'assets/images/pamatky/kaple_sv_antonina/antonin-vnitrek-1.jpg',
    'assets/images/pamatky/kaple_sv_antonina/antonin-vnitrek-2.jpg',
  ];

  ///List zbytků obrázků
  List<String> images = [

  ];

  ///vezme text přepisu audioprůvodce na základě klíče
  String getAudioTextOfMap(String keyOfMap){

    return audioText[keyOfMap];
  }
  ///zjistí počet textů přepisů
  int getMapLength(){
    return audioText.length;
  }
}