class JevishCemetery{
  String id = '/monumentsJevishCemetery';
  String name = 'Židovský hřbitov';
  String url = 'https://www.dolnikounice.cz/zidovsky-hrbitov/ds-4780/p1=13316';
  String tag = 'monumentsJevishCemetery';
  String nameOfImageGallery = 'imageGalleryJevishCemetery';

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
    'assets/images/pamatky/zidovsky_hrbitov/zidovsky-hrbitov-1.jpg',
    'assets/images/pamatky/zidovsky_hrbitov/zidovsky-hrbitov-2.jpg',
    'assets/images/pamatky/zidovsky_hrbitov/zidovsky-hrbitov-3.jpg',
    'assets/images/pamatky/zidovsky_hrbitov/zidovsky-hrbitov-4.jpg',
    'assets/images/pamatky/zidovsky_hrbitov/zidovsky-hrbitov-5.jpg',
    'assets/images/pamatky/zidovsky_hrbitov/zidovsky-hrbitov-6.jpg',
    'assets/images/pamatky/zidovsky_hrbitov/zidovsky-hrbitov-7.jpg',
    'assets/images/pamatky/zidovsky_hrbitov/zidovsky-hrbitov-8.jpg',
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