class ChurchOfStPeterAndPavel{
  String id = '/monumentsChurchOfStPeterAndPavel';
  String name = 'Kostel sv. Petra a Pavla';
  String url = 'https://www.dolnikounice.cz/kostel-sv-petra-a-pavla/d-78786/p1=4758';
  String tag = 'monumentsChurchOfStPeterAndPavel';
  String nameOfImageGallery = 'imageGalleryChurchOfStPeterAndPavel';

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
    'assets/images/pamatky/kostel_sv_petra_a_pavla/kostel-venek-1.jpg',
    'assets/images/pamatky/kostel_sv_petra_a_pavla/kostel-venek-2.jpg',
    'assets/images/pamatky/kostel_sv_petra_a_pavla/kostel-vnitrek-1.jpg',
    'assets/images/pamatky/kostel_sv_petra_a_pavla/kostel-vnitrek-2.JPG',
    'assets/images/pamatky/kostel_sv_petra_a_pavla/kostel-vnitrek-3.JPG',
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