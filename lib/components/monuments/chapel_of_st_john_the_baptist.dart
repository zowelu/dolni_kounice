class ChapelOfStJohnTheBaptist{
  String id = '/monumentsChapelOfStJohnTheBaptist';
  String name = 'Kaple sv. Jana Křtitele';
  String url = 'https://www.dolnikounice.cz/kaple-sv-jana-krtitele/ds-4778/archiv=0';
  String tag = 'monumentsChapelOfStJohnTheBaptist';
  String nameOfImageGallery = 'imageGalleryChapelOfStJohnTheBaptist';

  ///List názvů kapitol
  List<String> chapter = [

  ];

  List<String> mp3 = [

  ];

  ///Map jednotlivých kapitol audioprůvodce a jejich přepisu
  Map<String, String> audioText = {

  };

  ///List obrázků pro použití nejen v galerii
  List<String> imageGallery = [
    'assets/images/pamatky/kaple_sv_jana_krtitele/kaple-sv-jana-krtitele-venek-1.JPG',
    'assets/images/pamatky/kaple_sv_jana_krtitele/kaple-sv-jana-krtitele-venek-2.JPG',
    'assets/images/pamatky/kaple_sv_jana_krtitele/kaple-sv-jana-krtitele-venek-3.jpg',
    'assets/images/pamatky/kaple_sv_jana_krtitele/kaple-sv-jana-krtitele-vnitrek-1.jpg',
    'assets/images/pamatky/kaple_sv_jana_krtitele/kaple-sv-jana-krtitele-zstare.jpg',
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