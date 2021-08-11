class JevishSynagogue {
  String id = '/monumentsJevishSynagogue';
  String name = 'Židovská synagoga';
  String url = 'https://dolnikounice.cz/synagoga/d-78785/p1=4778';
  String tag = 'monumentsSynagogue';
  String nameOfImageGallery = 'imageGalleryJevishSynagogue';

  ///List názvů kapitol
  List<String> chapter = [
    'Židovská synagoga',
  ];

  List<String> mp3 = [
    'audio/kaple_sv_antonina/kaple_sv_antonina.mp3',
  ];

  ///Map jednotlivých kapitol audioprůvodce a jejich přepisu
  Map<String, String> audioText = {
    'Židovská synagoga':  'Vítáme Vás v Dolních Kounicích a Klášteře Rosa coeli.\n\nKlášter se řadí k nejvýznamnějším středoevropským církevním stavbám vrcholné gotiky. Je nejstarší ženský premonstrátský klášter na Moravě i nejstarší šlechtickou fundací. Spolu s hradem tvoří harmonický celek, nemající v našich zemích obdoby.\n\nKlášter Rosa coeli (Růže nebeská) byl založen roku 1181 Vilémem z Pulína jako podmínka klatby, která na něho byla uvalena papežem za to, že plenil a pustošil rakouské kláštery a kostely. Musel učinit pokání a postavit klášter.\n\nŽenský premonstrátský klášter byl zasvěcený Panně Marii. První sestry premonstrátského řádu sem přišly o dva roky později v roce 1183 i se svým proboštem Petrem z Louňovic v Jižních Čechách.',
  };

  ///List obrázků pro použití nejen v galerii
  List<String> imageGallery = [
    'assets/images/pamatky/synagoga/synagoga-venek.jpg',
    'assets/images/pamatky/synagoga/synagoga-venek-3.jpg',
    'assets/images/pamatky/synagoga/synagoga-venek-2.jpg',
    'assets/images/pamatky/synagoga/synagoga-venek-5.jpg',
    'assets/images/pamatky/synagoga/synagoga-venek-4.jpg',
    'assets/images/pamatky/synagoga/synagoga-vnitrek-1.jpg',
    'assets/images/pamatky/synagoga/synagoga-vnitrek-4.jpg',
    'assets/images/pamatky/synagoga/synagoga-vnitrek-2.jpg',
    'assets/images/pamatky/synagoga/synagoga-vnitrek-3.jpg',
    'assets/images/pamatky/synagoga/synagoga-vnitrek-5.jpg',
    'assets/images/pamatky/synagoga/synagoga-vnitrek-6.jpg',
  ];

  ///List zbytků obrázků
  List<String> images = [
    'assets/images/pamatky/zidovska_ctvrt/dk-zid.ctvrt.jpeg',
  ];

  String getAudioTextOfMap(String keyOfMap){
    ///vezme text přepisu audioprůvodce na základě klíče
    return audioText[keyOfMap];
  }

  int getMapLength(){
    return audioText.length;
  }
}