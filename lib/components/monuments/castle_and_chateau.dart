class CastleAndChateau {
  String id = '/monumentsCastleAndChateau';
  String name = 'Hrad a zámek';
  String url = 'https://dolnikounice.cz/hrad-a-zamek/ds-4775/p1=13316';
  String tag = 'monumentsCastleAndChateau';
  String nameOfImageGallery = 'imageGalleryCastleAndChateau';

  ///List názvů kapitol
  List<String> chapter = [];

  List<String> mp3 = [];

  ///Map jednotlivých kapitol audioprůvodce a jejich přepisu
  Map<String, String> audioText = {};

  ///List obrázků pro použití nejen v galerii
  List<String> imageGallery = [
    'assets/images/pamatky/zamek/zamek-letecky.jpg',
    'assets/images/pamatky/zamek/zamek-letecky_2.jpg',
    'assets/images/pamatky/zamek/zamek-venek-brana.jpg',
    'assets/images/pamatky/zamek/zamek-venek-zepredu.jpg',
    'assets/images/pamatky/zamek/zamek-venek-dvur.jpg',
    'assets/images/pamatky/zamek/zamek-venek-dvur_2.jpg',
    'assets/images/pamatky/zamek/zamek-venek-dvur_3.jpg',
    'assets/images/pamatky/zamek/zamek-venek-dvur_4.jpg',
    'assets/images/pamatky/zamek/zamek-venek-dvur_5.jpg',
    'assets/images/pamatky/zamek/zamek-venek-vstup.jpg',
    'assets/images/pamatky/zamek/zamek-vnitrek-sal.jpg',
    'assets/images/pamatky/zamek/zamek-vnitrek_sal.jpg',
    'assets/images/pamatky/zamek/zamek-vnitrek-obradni-sin.jpg',
  ];

  ///List zbytků obrázků
  List<String> images = [
    'assets/images/pamatky/zamek/zamek-skica.jpg',
    'assets/images/pamatky/zamek/zamek-pudorys.png',
  ];

  ///vezme text přepisu audioprůvodce na základě klíče
  String getAudioTextOfMap(String keyOfMap) {
    return audioText[keyOfMap];
  }

  ///zjistí počet textů přepisů
  int getMapLength() {
    return audioText.length;
  }
}
