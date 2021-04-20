import 'package:flutter/material.dart';
import 'package:mesto_pamatek/components/choice_container.dart';
import 'package:mesto_pamatek/constants/constants.dart';
import 'package:mesto_pamatek/components/container_header.dart';

class AudioGuide extends StatefulWidget {
  @override
  _AudioGuideState createState() => _AudioGuideState();
}

class _AudioGuideState extends State<AudioGuide> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Město památek',
      home: Scaffold(
        backgroundColor: kBackgroundColor,
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
            'Audioprůvodce',
            style: TextStyle(
                fontFamily: kDefaultFontFamily,
                fontSize: kDefaultFontSizeHeader),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ContainerHeader(text: 'Vyberte si audioprůvodce níže', textHeader: '',),
                Container(
                  padding: EdgeInsets.all(kDefaultPadding),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ChoiceContainer(
                          assetImageOfChoice:
                          'assets/images/pamatky/klaster_rosa_coeli/klaster-pohled-zepredu.jpg',
                          textOfChoice: 'Klášter Rosa Coeli', onTap: (){Navigator.pushNamed(context, '/audioGuideRosaCoeli');}),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

