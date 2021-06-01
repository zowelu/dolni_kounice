import 'package:dolni_kounice/components/monuments/castle_and_chateau.dart';
import 'package:dolni_kounice/components/monuments/chapel_of_st_antonine.dart';
import 'package:dolni_kounice/components/monuments/church_of_st_peter_and_pavel.dart';
import 'package:dolni_kounice/components/monuments/jevish_synagogue.dart';
import 'package:dolni_kounice/components/monuments/rosa_coeli.dart';
import 'package:dolni_kounice/components/monuments/st_barbara_church.dart';

class ImageGallery {
  final List<String> imageGalleryRosaCoeli = RosaCoeli().imageGallery;

  final List<String> imageGalleryJevishSynagogue =
      JevishSynagogue().imageGallery;

  final List<String> imageGalleryCastleAndChateau =
      CastleAndChateau().imageGallery;

  final List<String> imageGalleryChapelOfStAntonine =
      ChapelOfStAntonine().imageGallery;

  final List<String> imageGalleryStBarbaraChurch =
      StBarbaraChurch().imageGallery;

  final List<String> imageGalleryChurchOfStPeterAndPavel =
      ChurchOfStPeterAndPavel().imageGallery;

  ///porovná zadaný text s názvem Listu galerie památky a vrátí ho
  // ignore: missing_return
  List getImageGallery(String nameOfImageGallery) {
    if (nameOfImageGallery == 'imageGalleryRosaCoeli') {
      return imageGalleryRosaCoeli;
    } else if (nameOfImageGallery == 'imageGalleryJevishSynagogue') {
      return imageGalleryJevishSynagogue;
    } else if (nameOfImageGallery == 'imageGalleryCastleAndChateau') {
      return imageGalleryCastleAndChateau;
    } else if (nameOfImageGallery == 'imageGalleryChapelOfStAntonine') {
      return imageGalleryChapelOfStAntonine;
    } else if (nameOfImageGallery == 'imageGalleryStBarbaraChurch') {
      return imageGalleryStBarbaraChurch;
    } else if (nameOfImageGallery == 'imageGalleryChurchOfStPeterAndPavel') {
      return imageGalleryChurchOfStPeterAndPavel;
    }
  }
}
