import 'package:flutter/material.dart';
import 'package:dolni_kounice/constants/constants.dart';

class ChoiceContainer3 extends StatelessWidget {
  ///Výchozí Container pro výběr různých sekcí a kapitol
  ChoiceContainer3({
    @required this.assetImageOfChoice,
    @required this.textOfChoice,
    @required this.onTap,
    @required this.isAudio,
  });

  final String assetImageOfChoice;
  final String textOfChoice;
  final Function onTap;
  final bool isAudio;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      borderOnForeground: false,
      elevation: 10.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      margin:
          EdgeInsets.only(left: kDMargin, right: kDMargin, bottom: kDMargin),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Ink.image(
                image: AssetImage(assetImageOfChoice),
                //height: 165.0,
                height: MediaQuery.of(context).size.height / 5,
                fit: BoxFit.cover,
                child: InkWell(
                  onTap: onTap,
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Positioned(
                        top: 10,
                        right: 10,
                        child: isAudio
                            ? Container(
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                      color: kDColorFloatingButton,
                                      borderRadius:
                                          BorderRadius.circular(50.0)),
                                  child: Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Icon(Icons.audiotrack, color: Colors.white, size: 25,)
                                  ),
                                ),
                              ) : Container(),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 5 * 3,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: kDTextBackgroundTransparent,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(kDPadding),
                            child: Text(
                              textOfChoice,
                              style: TextStyle(
                                decoration: TextDecoration.none,
                                color: Colors.white,
                                fontSize: kDFontSizeText,
                                fontFamily: kDFontFamily,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
