import 'package:dolni_kounice/components/image_on_page_with_ontap.dart';
import 'package:dolni_kounice/components/single_photo_view_page.dart';
import 'package:flutter/material.dart';
import 'package:dolni_kounice/components/choice_container.dart';
import 'package:dolni_kounice/components/container_header_image_background.dart';
import 'package:dolni_kounice/components/default_page_of_choice.dart';
import 'package:dolni_kounice/screens/audio_guides/audio_guide_rosa_coeli/audio_guide_rosa_coeli.dart';

class KamZaVinemMap extends StatefulWidget {
  static String id = '/kamZaVinemMap';
  @override
  _KamZaVinemMapState createState() => _KamZaVinemMapState();
}

class _KamZaVinemMapState extends State<KamZaVinemMap> {
  @override
  Widget build(BuildContext context) {
    return DefaultPageOfChoice(
      tittleOfAppbar: 'Kam za vínem?',
      listOfWidget: [
        Hero(
          tag: 'kamzaVinem',
          child: ContainerHeaderImageBackground(
            assetImage: 'assets/images/kam_za_vinem/kam_za_vinem_1.jpg',
            textHeader: 'Kam za vínem?',
            text: '',
          ),
        ),
        ImageOnPageWithOnTap(
          assetImage: 'assets/images/kam_za_vinem/kam_za_vinem_1.jpg',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SinglePhotoViewPage(
                    assetImage:
                        'assets/images/kam_za_vinem/kam_za_vinem_1.jpg'),
              ),
            );
          },
        ),
        ImageOnPageWithOnTap(
          assetImage: 'assets/images/kam_za_vinem/kam_za_vinem_2.jpg',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SinglePhotoViewPage(
                    assetImage:
                        'assets/images/kam_za_vinem/kam_za_vinem_2.jpg'),
              ),
            );
          },
        ),
      ],
    );
  }
}
