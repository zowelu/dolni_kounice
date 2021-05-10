import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:dolni_kounice/constants/constants.dart';
import 'package:dolni_kounice/components/my_app_bar.dart';

class SinglePhotoViewPage extends StatelessWidget {
  ///Zobrazí obrázek, po zadání jména obrázku z assets se zobrazí obrázek
  SinglePhotoViewPage({@required this.assetImage});
  final String assetImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kDefaultMyAppBarHeight),
        child: MyAppBar(tittleOfAppbar: 'Galerie', onPressedBackButton: () {
          Navigator.pop(context);
        },),
      ),
      body: PhotoView(
        imageProvider: AssetImage(assetImage),
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
