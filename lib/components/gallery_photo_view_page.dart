import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:dolni_kounice/constants/constants.dart';
import 'package:dolni_kounice/components/image_gallery.dart';
import 'package:dolni_kounice/components/my_app_bar.dart';

class GalleryPhotoViewPage extends StatelessWidget {
  ///Zobrazí gelarii obrázků, po zadání jména galerie se zobrazí galerie s obrázky z image_gallery.dart
  GalleryPhotoViewPage({@required this.nameOfImageGallery});
  final String nameOfImageGallery;

  @override
  Widget build(BuildContext context) {
    List imageList = ImageGallery().getImageGallery(nameOfImageGallery);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kDMyAppBarHeight),
        child: MyAppBar(tittleOfAppbar: 'Galerie', onPressedBackButton: () {
          Navigator.pop(context);
        },),
      ),
      body: PhotoViewGallery.builder(
        itemCount: imageList.length,
        builder: (context, index) {
          return PhotoViewGalleryPageOptions(
            imageProvider: AssetImage(
              imageList[index],
            ),
            minScale: PhotoViewComputedScale.contained * 0.8,
            maxScale: PhotoViewComputedScale.covered * 1,
          );
        },
        scrollPhysics: ClampingScrollPhysics(),
        backgroundDecoration:
            BoxDecoration(color: kDColorTextColorBackground),
        loadingBuilder: (context, event) => Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: kBackgroundColor,
          child: Center(
            child: Container(
              width: 30.0,
              height: 30.0,
              child: CircularProgressIndicator(
                backgroundColor: Colors.orange,
                value: event == null
                    ? 0
                    : event.cumulativeBytesLoaded / event.expectedTotalBytes,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
