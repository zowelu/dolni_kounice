import 'package:dolni_kounice/components/rosa_coeli.dart';
import 'package:flutter/material.dart';

class ImageGallery extends StatelessWidget {
  final List<String> imageGalleryRosaCoeli = RosaCoeli().imageGalleryRosaCoeli;

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


