import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:mesto_pamatek/constants/constants.dart';
import 'package:mesto_pamatek/components/image_gallery.dart';

class GalleryPhotoViewPage extends StatelessWidget {
  ///Zobrazí gelarii obrázků, po zadání jména galerie se zobrazí galerie s obrázky z image_gallery.dart
  GalleryPhotoViewPage({@required this.nameOfImageGallery});
  final String nameOfImageGallery;

  @override
  Widget build(BuildContext context) {
    List imageList = ImageGallery().getImageGallery(nameOfImageGallery);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: kBackgroundColor,
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context, '/audioGuide');
          },
        ),
        title: Text(
          'Galerie',
          style: TextStyle(
              fontFamily: kDefaultFontFamily, fontSize: kDefaultFontSizeHeader),
        ),
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
            BoxDecoration(color: kDefaultColorTextColorBackground),
        loadingBuilder: (context, event) => Center(
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
    );
  }
}
