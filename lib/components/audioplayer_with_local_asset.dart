import 'dart:io';

import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:mesto_pamatek/constants/constants.dart';



class AudioPlayerWithLocalAsset extends StatefulWidget {
  ///Audioplayer widget - vytvoření přehrávače a jeho funkčnosti
  AudioPlayerWithLocalAsset({@required this.path});
  final String path;


  @override
  AudioPlayerWithLocalAssetState createState() =>
      AudioPlayerWithLocalAssetState();
}

class AudioPlayerWithLocalAssetState extends State<AudioPlayerWithLocalAsset> {
  AudioPlayer audioPlayer = AudioPlayer();
  AudioPlayerState audioPlayerState = AudioPlayerState.PAUSED;
  AudioCache audioCache;
  String _path;
  int timeProgress = 0;
  int audioDuration = 0;

  Widget slider() {
    double sizeWidth = MediaQuery.of(context).size.width;
    return Container(
      width: sizeWidth/100*80,
      child: Slider.adaptive(
          value: (timeProgress / 1000).floorToDouble(),
          max: (audioDuration / 1000.floorToDouble()),
          onChanged: (value) {
            seekToSec(value.toInt());
          }),
    );
  }

  @override
  void initState() {
    super.initState();
    _path = widget.path;
    audioCache = AudioCache(fixedPlayer: audioPlayer);
    audioPlayer.onPlayerStateChanged.listen((AudioPlayerState s) {
      setState(() {
        audioPlayerState = s;
      });
    });

    audioPlayer.onAudioPositionChanged.listen((Duration p) {
      setState(() {
        timeProgress = p.inMilliseconds;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    audioPlayer.release();
    audioPlayer.dispose();
    audioCache.clearCache();
  }

  playMusic() async {
    await audioCache.play(_path);
  }

  pauseMusic() async {
    await audioPlayer.pause();
  }

  @override
  Widget build(BuildContext context) {
    double sizeDeviceHeight = MediaQuery.of(context).size.height;
    return Container(
      height: sizeDeviceHeight/100*15,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFF18938E),
        borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0),),
        boxShadow: [
          BoxShadow(
            color: Color(0xFF2C3E50),
            offset: const Offset(1.0, 1.0),
            blurRadius: 5.0,
            spreadRadius: 2.0,
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 5.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                getTimeString(timeProgress),
                style: TextStyle(
                    color: kDefaultColorTextWhite,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 10.0),
              SizedBox(width: 10.0),
              audioDuration == 0
                  ? getFileAudioDuration()
                  : Text(
                      getTimeString(audioDuration),
                      style: TextStyle(
                          color: kDefaultColorTextWhite,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
            ],
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: kDefaultColorTextColorBackground,
                      inactiveTrackColor: Color(0xFF77BAB6),
                      trackShape: RectangularSliderTrackShape(),
                      trackHeight: 5.0,
                      thumbColor: kDefaultColorTextColorBackground,
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
                      overlayColor: Color(0xAF5C9F9B),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0),
                    ),
                    child: slider()),
                IconButton(
                  icon: Icon(
                    audioPlayerState == AudioPlayerState.PLAYING
                        ? Icons.pause_circle_outline_rounded
                        : Icons.play_circle_outline_rounded,
                    color: Colors.white,
                  ),
                  iconSize: 50.0,
                  onPressed: () {
                    audioPlayerState == AudioPlayerState.PLAYING
                        ? pauseMusic()
                        : playMusic();
                  },
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }

  Widget getFileAudioDuration() {
    return FutureBuilder(
        future: _getAudioDuration(),
        builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Text(getTimeString(snapshot.data));
          }
          return Text('');
        });
  }

  Future<int> _getAudioDuration() async {
    File audioFile = await audioCache.load(_path);
    await audioPlayer.setUrl(audioFile.path);
    audioDuration = await Future.delayed(
      Duration(seconds: 2),
      () => audioPlayer.getDuration(),
    );
    return audioDuration;
  }

  String getTimeString(int milliseconds) {
    if (milliseconds == null) milliseconds = 0;
    String minutes =
        '${(milliseconds / 60000).floor() < 10 ? 0 : ''}${(milliseconds / 60000).floor()}';
    String seconds =
        '${(milliseconds / 1000).floor() % 60 < 10 ? 0 : ''}${(milliseconds / 1000).floor() % 60}';
    return '$minutes:$seconds'; // Returns a string with the format mm:ss
  }

  void seekToSec(int sec) {
    Duration newPosition = Duration(seconds: sec);
    audioPlayer.seek(newPosition);
  }
}
