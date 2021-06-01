class HistoryOfTheTown {
  String id = '/monumentsHistoryOfTheTown';
  String name = 'Historie města';
  String url = 'https://www.dolnikounice.cz/historie-mesta/d-82079/p1=8701';
  String tag = 'monumentsHistoryOfTheTown';
  String nameOfImageGallery = 'imageGalleryHistoryOfTheTown';

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
    'assets/images/pamatky/mesto/mesto-letecky.jpg',
    'assets/images/pamatky/klaster_rosa_coeli/klaster-pohled-zepredu.jpg',
    'assets/images/pamatky/zamek/zamek-venek-zepredu.jpg',
    'assets/images/pamatky/chram_sv_barbory/chram-sv-barbory-venek-2.jpg',
    'assets/images/DK_znak_800px.png',
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