import 'package:dolni_kounice/components/jevish_synagogue.dart';
import 'package:dolni_kounice/components/rosa_coeli.dart';
import 'package:flutter/material.dart';

class ImageGallery extends StatelessWidget {
  final List<String> imageGalleryRosaCoeli = RosaCoeli().imageGalleryRosaCoeli;

  final List<String> imageGalleryJevishSynagogue = JevishSynagogue().imageGalleryJevishSynagogue;

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


