import 'package:flutter/material.dart';
import 'package:mesto_pamatek/constants/constants.dart';
import 'package:mesto_pamatek/components/my_app_bar.dart';

class DefaultPageOfChoiceWithFloatingButton extends StatelessWidget {
  DefaultPageOfChoiceWithFloatingButton(
      {@required this.tittleOfAppbar,
      @required this.listOfWidget,
      @required this.textOfFloatingButton});

  final String tittleOfAppbar;
  final List<Widget> listOfWidget;
  final String textOfFloatingButton;

  @override
  Widget build(BuildContext context) {
    double screenSizeHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
      title: 'Město památek',
      home: Scaffold(
        backgroundColor: kBackgroundColor,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kDefaultMyAppBarHeight),
          child: MyAppBar(
            tittleOfAppbar: tittleOfAppbar,
            onPressedBackButton: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: listOfWidget,
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0),),),
              backgroundColor: kBackgroundColor,
              builder: (context) => Container(
                height: screenSizeHeight / 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.arrow_downward, color: Colors.white,),
                      Image(
                        image: AssetImage(
                            'assets/images/pamatky/klaster_rosa_coeli/mapa_klaster.png'),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          elevation: 5,
          label: Text(textOfFloatingButton),
          backgroundColor: kBackgroundColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(30.0),
              ),
              side: BorderSide(color: Colors.white)),
        ),
      ),
    );
  }
}
