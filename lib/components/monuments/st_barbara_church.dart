

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
    'assets/images/pamatky/klaster_rosa_coeli/klaster-pohled-brana.jpg',
    'assets/images/pamatky/klaster_rosa_coeli/klaster-pohled-zepredu.jpg',
    'assets/images/pamatky/klaster_rosa_coeli/klaster-portal.jpg',
    'assets/images/pamatky/klaster_rosa_coeli/klaster-chram-1.jpg',
    'assets/images/pamatky/klaster_rosa_coeli/klaster-chram-2.jpg',
    'assets/images/pamatky/klaster_rosa_coeli/klaster-chram-slunce.jpg',
    'assets/images/pamatky/klaster_rosa_coeli/klaster_krizova_chodba.jpg',
    'assets/images/pamatky/klaster_rosa_coeli/klasterni-zahrada.jpg',
    'assets/images/pamatky/klaster_rosa_coeli/klaster-rajska-zahrad.jpg',
    'assets/images/pamatky/klaster_rosa_coeli/klaster-zad.jpg',
    'assets/images/pamatky/klaster_rosa_coeli/klaster-kamenny-nahrobek.jpg',
    'assets/images/pamatky/klaster_rosa_coeli/klaster-1200.jpg',
    'assets/images/pamatky/klaster_rosa_coeli/klaster-1400.jpg',
    'assets/images/pamatky/klaster_rosa_coeli/klaster-1423.jpg',
    'assets/images/pamatky/klaster_rosa_coeli/klaster-1720.jpg',
    'assets/images/pamatky/klaster_rosa_coeli/klaster-letecky.jpg',
  ];

  ///List zbytků obrázků
  List<String> images = [
    'assets/images/pamatky/klaster_rosa_coeli/mapa_klaster.png',
    'assets/images/pamatky/klaster_rosa_coeli/klaster-portal-vstupni.jpg',
    'assets/images/pamatky/klaster_rosa_coeli/klaster_rosa_coeli_filmy_serialy.jpg',
    'assets/images/pamatky/klaster_rosa_coeli/photographic-film-wooden-background_compressed.jpg',
    'assets/images/pamatky/klaster_rosa_coeli/rosa_coeli_pudorys.png',
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