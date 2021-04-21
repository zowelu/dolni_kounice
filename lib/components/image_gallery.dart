import 'package:flutter/material.dart';

class ImageGallery extends StatelessWidget {
  final List<String> imageGalleryRosaCoeli = [
    'assets/images/pamatky/klaster_rosa_coeli/klaster-pohled-brana.jpg',
    'assets/images/pamatky/klaster_rosa_coeli/klaster-pohled-zepredu.jpg',
    'assets/images/pamatky/klaster_rosa_coeli/klaster-portal.jpg',
    'assets/images/pamatky/klaster_rosa_coeli/klaster-chram-1.jpg',
    'assets/images/pamatky/klaster_rosa_coeli/klaster-chram-2.jpg',
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

  final List<String> imageGalleryJevishSynagogue = [
    'assets/images/pamatky/synagoga/synagoga-venek.jpg',
    'assets/images/pamatky/synagoga/synagoga-venek-3.jpg',
    'assets/images/pamatky/synagoga/synagoga-venek-2.jpg',
    'assets/images/pamatky/synagoga/synagoga-venek-5.jpg',
    'assets/images/pamatky/synagoga/synagoga-venek-4.jpg',
    'assets/images/pamatky/synagoga/synagoga-vnitrek-1.jpg',
    'assets/images/pamatky/synagoga/synagoga-vnitrek-4.jpg',
    'assets/images/pamatky/synagoga/synagoga-vnitrek-2.jpg',
    'assets/images/pamatky/synagoga/synagoga-vnitrek-3.jpg',
    'assets/images/pamatky/synagoga/synagoga-vnitrek-5.jpg',
    'assets/images/pamatky/synagoga/synagoga-vnitrek-6.jpg',
  ];

  ///porovná zadaný text s názvem Listu galerie památky a vrátí ho
  // ignore: missing_return
  List getImageGallery(String nameOfImageGallery){
    if(nameOfImageGallery == 'imageGalleryRosaCoeli'){
      return imageGalleryRosaCoeli;
    } else if (nameOfImageGallery == 'imageGalleryJevishSynagogue'){
      return imageGalleryJevishSynagogue;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


