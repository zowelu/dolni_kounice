import 'package:flutter/material.dart';
import 'package:dolni_kounice/constants/constants.dart';
import 'package:dolni_kounice/components/monuments/rosa_coeli.dart';
import 'package:dolni_kounice/components/container_header_image_background.dart';
import 'package:dolni_kounice/components/audioplayer_with_local_asset.dart';
import 'package:dolni_kounice/components/my_app_bar.dart';

//Vrací stránku pro kapitoly audioprůvodce
class AudioPage extends StatelessWidget {
  const AudioPage({
    Key key,
    @required this.assetImage,
    @required this.textHeader,
    @required this.path,
    @required this.textAudioMap,
    @required this.keyOfMap,
    @required this.tag,
  }) : super(key: key);

  final String assetImage;
  final String textHeader;
  final String path;
  final RosaCoeli textAudioMap;
  final String keyOfMap;
  final String tag;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Město památek',
      home: Scaffold(
        backgroundColor: kBackgroundColor,
        bottomNavigationBar: AudioPlayerWithLocalAsset(path: path),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kDMyAppBarHeight),
          child: MyAppBar(
            tittleOfAppbar: 'Audioprůvodce',
            onPressedBackButton: () {
              Navigator.pop(context);
            },
          ),
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
                    text: '',
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(kDPadding),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            textAudioMap.getAudioTextOfMap(keyOfMap),
                            style: TextStyle(
                                color: kDColorTextWhite,
                                fontSize: kDFontSizeText),
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
