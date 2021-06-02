import 'package:dolni_kounice/components/monuments/castle_and_chateau.dart';
import 'package:dolni_kounice/components/monuments/chapel_of_st_antonine.dart';
import 'package:dolni_kounice/components/monuments/chapel_of_st_john_the_baptist.dart';
import 'package:dolni_kounice/components/monuments/church_of_st_peter_and_pavel.dart';
import 'package:dolni_kounice/components/monuments/history_of_the_town.dart';
import 'package:dolni_kounice/components/monuments/jevish_cemetery.dart';
import 'package:dolni_kounice/components/monuments/jevish_synagogue.dart';
import 'package:dolni_kounice/components/monuments/middle_class_houses.dart';
import 'package:dolni_kounice/components/monuments/sacral_buildings.dart';
import 'package:dolni_kounice/components/monuments/st_barbara_church.dart';
import 'package:dolni_kounice/components/default_page_of_choice_with_floating_button.dart';
import 'package:dolni_kounice/components/monuments/rosa_coeli.dart';
import 'package:dolni_kounice/screens/monuments/monuments_chapel_of_st_antonine.dart';
import 'package:dolni_kounice/screens/monuments/monuments_chapel_of_st_john_the_baptist.dart';
import 'package:dolni_kounice/screens/monuments/monuments_church_of_st_peter_and_pavel.dart';
import 'package:dolni_kounice/screens/monuments/monuments_history_of_the_town.dart';
import 'package:dolni_kounice/screens/monuments/monuments_jevish_cemetery.dart';
import 'package:dolni_kounice/screens/monuments/monuments_middle_class_houses.dart';
import 'package:dolni_kounice/screens/monuments/monuments_st_barbora_church.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dolni_kounice/constants/constants.dart';
import 'package:dolni_kounice/components/choice_container.dart';
import 'package:dolni_kounice/components/container_header_image_background.dart';
import 'package:dolni_kounice/screens/monuments/monuments_jevish_synagogue.dart';
import 'package:dolni_kounice/screens/monuments/monuments_rosa_coeli.dart';
import 'package:dolni_kounice/screens/monuments/monuments_castle_and_chateau.dart';

class Monuments extends StatefulWidget {
  static String id = '/monuments';
  @override
  _MonumentsState createState() => _MonumentsState();
}

class _MonumentsState extends State<Monuments> {
  @override
  Widget build(BuildContext context) {
    return DefaultPageOfChoiceWithFloatingButton(
      tittleOfAppbar: 'Průvodce památkami',
      textOfFloatingButton: 'Mapa památek',
      assetImageOfModal: 'assets/images/DK_znak_200px.png',
      onPressedFloatingButton: (){
        showModalBottomSheet(
          context: context,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
          isScrollControlled: false,
          clipBehavior: Clip.antiAlias,
          backgroundColor: kBackgroundColor,
          builder: (context) => Container(
            //height: MediaQuery.of(context).size.height/3*2.5,
            child: Container(
              padding: EdgeInsets.all(kDPadding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FractionallySizedBox(
                    widthFactor: 0.15,
                    child: Container(
                      height: 5.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(2.5),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: kDMarginLarger),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image(
                        image: AssetImage('assets/images/pamatky/mesto_pamatek_uvod/pamatky-mapa.jpg'),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
        );
      },
      listOfWidget: [
        Hero(
            tag: 'pruvodcePamatkami',
            child: ContainerHeaderImageBackground(
              assetImage:
                  'assets/images/pamatky/mesto_pamatek_uvod/pamatky-mapa.jpg',
              textHeader: 'Průvodce památkami',
              text: '',
            )),
        Hero(
          tag: RosaCoeli().tag,
          child: ChoiceContainer(
            assetImageOfChoice:
                RosaCoeli().imageGallery[1],
            textOfChoice: RosaCoeli().name,
            onTap: () {
              Navigator.pushNamed(context, MonumentsRosaCoeli.id);
            },
          ),
        ),
        Hero(
          tag: JevishSynagogue().tag,
          child: ChoiceContainer(
            assetImageOfChoice:
                JevishSynagogue().imageGallery[0],
            textOfChoice: JevishSynagogue().name,
            onTap: () {
              Navigator.pushNamed(context, MonumentsJevishSynagogue.id);
            },
          ),
        ),
        Hero(
          tag: CastleAndChateau().tag,
          child: ChoiceContainer(
            assetImageOfChoice:
            CastleAndChateau().imageGallery[0],
            textOfChoice: CastleAndChateau().name,
            onTap: () {
              Navigator.pushNamed(context, MonumentsCastleAndChateau.id);
            },
          ),
        ),
        Hero(
          tag: ChapelOfStAntonine().tag,
          child: ChoiceContainer(
            assetImageOfChoice:
            ChapelOfStAntonine().imageGallery[0],
            textOfChoice: ChapelOfStAntonine().name,
            onTap: () {
              Navigator.pushNamed(context, MonumentsChapelOfStAntonine.id);
            },
          ),
        ),
        Hero(
          tag: StBarbaraChurch().tag,
          child: ChoiceContainer(
            assetImageOfChoice:
            StBarbaraChurch().imageGallery[0],
            textOfChoice: StBarbaraChurch().name,
            onTap: () {
              Navigator.pushNamed(context, MonumentsStBarbaraChurch.id);
            },
          ),
        ),
        Hero(
          tag: ChurchOfStPeterAndPavel().tag,
          child: ChoiceContainer(
            assetImageOfChoice:
            ChurchOfStPeterAndPavel().imageGallery[0],
            textOfChoice: ChurchOfStPeterAndPavel().name,
            onTap: () {
              Navigator.pushNamed(context, MonumentsChurchOfStPeterAndPavel.id);
            },
          ),
        ),
        Hero(
          tag: ChapelOfStJohnTheBaptist().tag,
          child: ChoiceContainer(
            assetImageOfChoice:
            ChapelOfStJohnTheBaptist().imageGallery[0],
            textOfChoice: ChapelOfStJohnTheBaptist().name,
            onTap: () {
              Navigator.pushNamed(context, MonumentsChapelOfStJohnTheBaptist.id);
            },
          ),
        ),
        Hero(
          tag: JevishCemetery().tag,
          child: ChoiceContainer(
            assetImageOfChoice:
            JevishCemetery().imageGallery[0],
            textOfChoice: JevishCemetery().name,
            onTap: () {
              Navigator.pushNamed(context, MonumentsJevishCemetery.id);
            },
          ),
        ),
        Hero(
          tag: MiddleClassHouses().tag,
          child: ChoiceContainer(
            assetImageOfChoice:
            MiddleClassHouses().imageGallery[0],
            textOfChoice: MiddleClassHouses().name,
            onTap: () {
              Navigator.pushNamed(context, MonumentsMiddleClassHouses.id);
            },
          ),
        ),
        Hero(
          tag: SacralBuildings().tag,
          child: ChoiceContainer(
            assetImageOfChoice:
            SacralBuildings().imageGallery[0],
            textOfChoice: 'Menší sakrální stavby',
            onTap: () {
              Navigator.pushNamed(context, null);
            },
          ),
        ),
        Hero(
          tag: HistoryOfTheTown().tag,
          child: ChoiceContainer(
            assetImageOfChoice:
            HistoryOfTheTown().imageGallery[0],
            textOfChoice: HistoryOfTheTown().name,
            onTap: () {
              Navigator.pushNamed(context, MonumentsHistoryOfTheTown.id);
            },
          ),
        ),
      ],
    );
  }
}
