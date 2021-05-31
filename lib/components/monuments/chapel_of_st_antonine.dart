class ChapelOfStAntonine {
  String id = '/monumentsChapelOfStAntonine';
  String name = 'Kaple sv. Antonína';
  String url = 'https://www.dolnikounice.cz/kaple-sv-antonina/d-78783/p1=4776';
  String tag = 'monumentsChapelOfStAntonine';
  String nameOfImageGallery = 'imageGalleryChapelOfStAntonine';

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