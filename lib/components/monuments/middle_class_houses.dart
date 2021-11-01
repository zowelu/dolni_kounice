class MiddleClassHouses{
  String id = '/monumentsMiddleClassHouses';
  String name = 'Měšťanské domy';
  String url = 'https://www.dolnikounice.cz/mestanske-domy/ds-4782/archiv=0';
  String tag = 'monumentsMiddleClassHouses';
  String nameOfImageGallery = 'imageGalleryMiddleClassHouses';

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
    'assets/images/pamatky/mestanske_domy/1mestansky-dum-masarykovo-namesti-2.jpg',
    'assets/images/pamatky/mestanske_domy/2mestansky-dum-masarykovo-namesti-3.jpg',
    'assets/images/pamatky/mestanske_domy/3mestansky-dum-masarykovo-namesti-4.jpg',
    'assets/images/pamatky/mestanske_domy/4mestansky-dum-masarykovo-namesti-5.jpg',
    'assets/images/pamatky/mestanske_domy/5mestansky-dum-masarykovo-namesti-20.jpg',
    'assets/images/pamatky/mestanske_domy/6mestansky-dum-hlavni-16.jpg',
    'assets/images/pamatky/mestanske_domy/7mestansky-dum-hlavni-6.jpg',
    'assets/images/pamatky/mestanske_domy/8mestansky-dum-hlavni-4.jpg',
    'assets/images/pamatky/mestanske_domy/9mestansky-dum-tovarni-1.jpg',
    'assets/images/pamatky/mestanske_domy/10mestansky-dum-tovarni-3.jpg',
    'assets/images/pamatky/mestanske_domy/11mestansky-dum-tovarni-7.jpg',
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