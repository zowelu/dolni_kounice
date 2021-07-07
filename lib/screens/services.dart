import 'package:dolni_kounice/components/monuments/chapel_of_st_antonine.dart';
import 'package:dolni_kounice/components/default_page_of_choice.dart';
import 'package:dolni_kounice/components/monuments/rosa_coeli.dart';
import 'package:dolni_kounice/screens/services/coffeeAndRestaurant.dart';
import 'package:dolni_kounice/screens/trips/tripAroundDolniKounice.dart';
import 'package:dolni_kounice/screens/trips/tripThreeMainDominants.dart';
import 'package:dolni_kounice/screens/trips/tripToChapelOfStAntonine.dart';
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
      tittleOfAppbar: 'Turistické trasy',
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
            ),),
        Hero(
          tag: CoffeeAndRestaurant.tag,
          child: ChoiceContainer(
            assetImageOfChoice:
            'assets/images/pamatky/services/pexels-lisa-907142_compressed.jpg',
            textOfChoice: CoffeeAndRestaurant.name,
            onTap: () {
              Navigator.pushNamed(context, CoffeeAndRestaurant.id);
            },
          ),
        ),
        Hero(
          tag: TripToChapelOfStAntonine.tag,
          child: ChoiceContainer(
            assetImageOfChoice:
            ChapelOfStAntonine().imageGallery[0],
            textOfChoice: TripToChapelOfStAntonine.name,
            onTap: () {
              Navigator.pushNamed(context, TripToChapelOfStAntonine.id);
            },
          ),
        ),
        Hero(
          tag: TripAroundDolniKounice.tag,
          child: ChoiceContainer(
            assetImageOfChoice:'assets/images/pamatky/mesto/mesto-letecky.jpg',
            textOfChoice: TripAroundDolniKounice.name,
            onTap: () {
              Navigator.pushNamed(context, TripAroundDolniKounice.id);
            },
          ),
        ),

      ],
    );
  }
}

