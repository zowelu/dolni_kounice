class SacralBuildings {
  String id = '/monumentsSacralBuildings';
  String name = 'Menší sakrální stavby';
  String url = 'https://www.dolnikounice.cz/mensi-sakralni-stavby/d-78885/p1=5210';
  String tag = 'monumentsSacralBuildings';
  String nameOfImageGallery = 'imageGallerySacralBuildings';

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
    'assets/images/pamatky/mensi_sakralni_stavby/bozi_muka.JPG',
    'assets/images/pamatky/mensi_sakralni_stavby/DSCN3037.JPG',
    'assets/images/pamatky/mensi_sakralni_stavby/Image.jpg',
    'assets/images/pamatky/mensi_sakralni_stavby/Image (2).jpg',
    'assets/images/pamatky/mensi_sakralni_stavby/IMG_4045.JPG',
    'assets/images/pamatky/mensi_sakralni_stavby/IMG_5497.JPG',
    'assets/images/pamatky/mensi_sakralni_stavby/IMG_5506.JPG',
    'assets/images/pamatky/mensi_sakralni_stavby/melcansky_kriz.jpg',
    'assets/images/pamatky/mensi_sakralni_stavby/misijní kříž.JPG',
    'assets/images/pamatky/mensi_sakralni_stavby/Nepomucký n. míru.JPG',
    'assets/images/pamatky/mensi_sakralni_stavby/pomník J.Husa.JPG',
    'assets/images/pamatky/mensi_sakralni_stavby/Trboušanský a.JPG',
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