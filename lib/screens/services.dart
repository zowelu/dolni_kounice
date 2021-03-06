import 'package:dolni_kounice/components/default_page_of_choice.dart';
import 'package:dolni_kounice/screens/services/accommodations.dart';
import 'package:dolni_kounice/screens/services/coffeeAndRestaurant.dart';
import 'package:dolni_kounice/screens/services/parking.dart';
import 'package:dolni_kounice/screens/services/shops.dart';
import 'package:dolni_kounice/screens/services/winery.dart';
import 'package:flutter/material.dart';
import 'package:dolni_kounice/components/choice_container.dart';
import 'package:dolni_kounice/components/container_header_image_background.dart';

class Services extends StatefulWidget {
  static String id = '/services';
  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return DefaultPageOfChoice(
      tittleOfAppbar: 'Služby',
      // onPressedFloatingButton: (){
      //   showModalBottomSheet(
      //     context: context,
      //     shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.only(
      //         topLeft: Radius.circular(20.0),
      //         topRight: Radius.circular(20.0),
      //       ),
      //     ),
      //     isScrollControlled: false,
      //     clipBehavior: Clip.antiAlias,
      //     backgroundColor: kBackgroundColor,
      //     builder: (context) => Container(
      //       //height: MediaQuery.of(context).size.height/3*2.5,
      //       child: Container(
      //         padding: EdgeInsets.all(kDPadding),
      //         child: Column(
      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //           children: [
      //             FractionallySizedBox(
      //               widthFactor: 0.15,
      //               child: Container(
      //                 height: 5.0,
      //                 decoration: BoxDecoration(
      //                   color: Colors.white,
      //                   borderRadius: BorderRadius.all(
      //                     Radius.circular(2.5),
      //                   ),
      //                 ),
      //               ),
      //             ),
      //             Container(
      //               margin: EdgeInsets.only(bottom: kDMarginLarger),
      //               child: ClipRRect(
      //                 borderRadius: BorderRadius.circular(20.0),
      //                 child: Image(
      //                   image: AssetImage('assets/images/pamatky/mesto_pamatek_uvod/pamatky-mapa.jpg'),
      //                 ),
      //               ),
      //             ),
      //
      //           ],
      //         ),
      //       ),
      //     ),
      //   );
      // },
      listOfWidget: [
        Hero(
          tag: 'services',
          child: ContainerHeaderImageBackground(
            assetImage:
                'assets/images/pamatky/mesto_pamatek_uvod/pexels-chevanon-photography-302899_compressed.jpg',
            textHeader: 'Služby',
            text: '',
          ),
        ),
        Hero(
          tag: CoffeeAndRestaurant.tag,
          child: ChoiceContainer(
            assetImageOfChoice: 'assets/images/pamatky/services/kavarna.jpg',
            textOfChoice: CoffeeAndRestaurant.name,
            onTap: () {
              Navigator.pushNamed(context, CoffeeAndRestaurant.id);
            },
            isAudio: false,
          ),
        ),
        Hero(
          tag: Winery.tag,
          child: ChoiceContainer(
            assetImageOfChoice: 'assets/images/pamatky/services/vinarstvi.jpg',
            textOfChoice: Winery.name,
            onTap: () {
              Navigator.pushNamed(context, Winery.id);
            },
            isAudio: false,
          ),
        ),
        Hero(
          tag: Accommodations.tag,
          child: ChoiceContainer(
            assetImageOfChoice: 'assets/images/pamatky/services/ubytovani.jpg',
            textOfChoice: Accommodations.name,
            onTap: () {
              Navigator.pushNamed(context, Accommodations.id);
            },
            isAudio: false,
          ),
        ),
        Hero(
          tag: Shops.tag,
          child: ChoiceContainer(
            assetImageOfChoice: 'assets/images/pamatky/services/obchody.jpg',
            textOfChoice: Shops.name,
            onTap: () {
              Navigator.pushNamed(context, Shops.id);
            },
            isAudio: false,
          ),
        ),
        Hero(
          tag: Parking.tag,
          child: ChoiceContainer(
            assetImageOfChoice: 'assets/images/pamatky/services/parkovani.jpg',
            textOfChoice: Parking.name,
            onTap: () {
              Navigator.pushNamed(context, Parking.id);
            },
            isAudio: false,
          ),
        ),
      ],
    );
  }
}
