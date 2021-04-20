import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:mesto_pamatek/constants/constants.dart';

class SinglePhotoViewPage extends StatelessWidget {
  ///Zobrazí obrázek, po zadání jména obrázku z assets se zobrazí obrázek
  SinglePhotoViewPage({@required this.assetImage});
  final String assetImage;

  @override
  Widget build(BuildContext context) {
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
      body: PhotoView(
        imageProvider: AssetImage(assetImage),
        initialScale: 0.2,
        minScale: PhotoViewComputedScale.contained * 0.8,
        maxScale: PhotoViewComputedScale.covered * 1,
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
