

class CastleAndChateau {
  String id = '/monumentsCastleAndChateau';
  String name = 'Hrad a zámek';
  String url = 'https://www.dolnikounice.cz/hrad-a-zamek/d-78883/p1=5044';
  String tag = 'monumentsCastleAndChateau';
  String nameOfImageGallery = 'imageGalleryCastleAndChateau';

  ///List názvů kapitol
  List<String> chapter = [

  ];

  List<String> mp3 = [

  ];

  ///Map jednotlivých kapitol audioprůvodce a jejich přepisu
  Map<String, String> audioText = {

  };

  ///List obrázků pro použití nejen v galerii
  List<String> imageGalleryCastleAndChateau = [
    'assets/images/pamatky/zamek/zamek-letecky.jpg',
    'assets/images/pamatky/zamek/zamek-venek-brana.jpg',
    'assets/images/pamatky/zamek/zamek-venek-zepredu.jpg',
    'assets/images/pamatky/zamek/zamek-venek-dvur.jpg',
    'assets/images/pamatky/zamek/zamek-venek-vstup.jpg',
    'assets/images/pamatky/zamek/zamek-vnitrek-sal.jpg',
    'assets/images/pamatky/zamek/zamek-vnitrek-obradni-sin.jpg',
    'assets/images/pamatky/zamek/zamek-skica.jpg',
  ];

  ///List zbytků obrázků
  List<String> imageRosaCoeli = [
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