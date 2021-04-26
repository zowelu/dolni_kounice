import 'package:flutter/material.dart';
import 'package:mesto_pamatek/constants/constants.dart';
import 'package:mesto_pamatek/components/rosa_coeli_map_of_path_and_text.dart';
import 'package:mesto_pamatek/components/container_header_image_background.dart';
import 'package:mesto_pamatek/components/audioplayer_with_local_asset.dart';
import 'package:mesto_pamatek/components/my_app_bar.dart';

//Vrací stránku pro kapitoly audioprůvodce
class AudioPage extends StatelessWidget {
  const AudioPage({
    Key key,
    @required this.assetImage,
    @required this.textHeader,
    @required this.kapitola,
    @required this.path,
    @required this.textAudioMap,
    @required this.keyOfMap,
    @required this.tag,
  }) : super(key: key);

  final String assetImage;
  final String textHeader;
  final String kapitola;
  final String path;
  final AudioGuideRosaCoeliMapOfPathAndText textAudioMap;
  final String keyOfMap;
  final String tag;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Město památek',
      home: Scaffold(
        backgroundColor: kBackgroundColor,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kDefaultMyAppBarHeight),
          child: MyAppBar(tittleOfAppbar: 'Audioprůvodce', onPressedBackButton: () {
            Navigator.pop(context);
          },),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Hero(
                  tag: this.tag,
                  child: ContainerHeaderImageBackground(
                    assetImage: assetImage,
                    textHeader: textHeader,
                    text: 'Kapitola: $kapitola',
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(kDefaultPadding),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: kDefaultMargin),
                      AudioPlayerWithLocalAsset(path: path, kapitola: kapitola),
                      SizedBox(height: kDefaultMargin),

                      Column(
                        children: [
                          SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            'Přepis v textové podobě:',
                            style: TextStyle(
                                color: kDefaultColorTextWhite,
                                fontSize: kDefaultFontSizeText,
                                decoration: TextDecoration.underline,
                                ),
                            ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            textAudioMap.getAudioTextOfMap(keyOfMap),
                            style: TextStyle(
                                color: kDefaultColorTextWhite,
                                fontSize: kDefaultFontSizeText),
                          ),
                        ],
                      ),
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
