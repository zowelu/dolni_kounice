

class StBarbaraChurch{
  String id = '/monumentsStBarbaraChurch';
  String name = 'Chrám sv. Barbory';
  String url = 'https://www.dolnikounice.cz/chram-sv-barbory-barborka/d-78884/p1=5209';
  String tag = 'monumentsStBarbaraChurch';
  String nameOfImageGallery = 'imageGalleryStBarbaraChurch';

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
    'assets/images/pamatky/kaple_sv_barbory/kaple-sv-barbory-venek-1.jpg',
    'assets/images/pamatky/kaple_sv_barbory/kaple-sv-barbory-venek-2.jpg',
    'assets/images/pamatky/kaple_sv_barbory/kaple-sv-barbory-venek-3.jpg',
    'assets/images/pamatky/kaple_sv_barbory/kaple-sv-barbory-vnitrek-1.jpg',
    'assets/images/pamatky/kaple_sv_barbory/kaple-sv-barbory-vnitrek-2.jpg',
    'assets/images/pamatky/kaple_sv_barbory/kaple-sv-barbory-vnitrek-3.jpg',
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