import 'package:dolni_kounice/components/monuments/castle_and_chateau.dart';
import 'package:dolni_kounice/components/monuments/jevish_synagogue.dart';
import 'package:dolni_kounice/components/monuments/rosa_coeli.dart';

class ImageGallery {
  final List<String> imageGalleryRosaCoeli = RosaCoeli().imageGallery;

  final List<String> imageGalleryJevishSynagogue =
      JevishSynagogue().imageGallery;

  final List<String> imageGalleryCastleAndChateau =
      CastleAndChateau().imageGallery;

  ///porovná zadaný text s názvem Listu galerie památky a vrátí ho
  // ignore: missing_return
  List getImageGallery(String nameOfImageGallery) {
    if (nameOfImageGallery == 'imageGalleryRosaCoeli') {
      return imageGalleryRosaCoeli;
    } else if (nameOfImageGallery == 'imageGalleryJevishSynagogue') {
      return imageGalleryJevishSynagogue;
    } else if (nameOfImageGallery == 'imageGalleryCastleAndChateau') {
      return imageGalleryCastleAndChateau;
    } else if (nameOfImageGallery == 'imageGalleryJevishSynagogue') {
      return imageGalleryJevishSynagogue;
    } else if (nameOfImageGallery == 'imageGalleryJevishSynagogue') {
      return imageGalleryJevishSynagogue;
    } else if (nameOfImageGallery == 'imageGalleryJevishSynagogue') {
      return imageGalleryJevishSynagogue;
    }
  }
}
