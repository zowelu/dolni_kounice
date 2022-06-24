import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:dolni_kounice/constants/constants.dart';

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
  PlayerState audioPlayerState = PlayerState.PAUSED;
  AudioCache audioCache;
  String _path;
  int timeProgress = 0;
  int audioDuration = 0;

  Widget slider() {
    double sizeDeviceWidth = MediaQuery.of(context).size.width;
    return Container(
      width: sizeDeviceWidth / 100 * 80,
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
    audioPlayer.onPlayerStateChanged.listen((PlayerState s) {
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
    audioCache.clearAll();
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
      height: sizeDeviceHeight / 100 * 12,
      width: double.infinity,
      decoration: BoxDecoration(
        color: kDColorPlayerBackground,
        boxShadow: [
          BoxShadow(
            color: Color(0xFF2C3E50),
            offset: const Offset(1.0, 1.0),
            blurRadius: 5.0,
            spreadRadius: 2.0,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            icon: Icon(
              audioPlayerState == PlayerState.PLAYING
                  ? Icons.pause_circle_filled
                  : Icons.play_circle_filled,
              color: kDColorPlayerButton,
            ),
            iconSize: 50.0,
            onPressed: () {
              audioPlayerState == PlayerState.PLAYING
                  ? pauseMusic()
                  : playMusic();
            },
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    getTimeString(timeProgress),
                    style: TextStyle(
                        color: kDColorTextWhite,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 20.0),
                  audioDuration == 0
                      ? getFileAudioDuration()
                      : Text(
                          getTimeString(audioDuration),
                          style: TextStyle(
                              color: kDColorTextWhite,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ),
                ],
              ),
              SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: kDColorFloatingButton,
                    inactiveTrackColor: Colors.white,
                    trackShape: RectangularSliderTrackShape(),
                    trackHeight: 5.0,
                    thumbColor: kDColorFloatingButton,
                    thumbShape:
                    RoundSliderThumbShape(enabledThumbRadius: 10.0),
                    overlayColor: Color(0xB3A63D40),
                    overlayShape:
                    RoundSliderOverlayShape(overlayRadius: 20.0),
                  ),
                  child: slider()),
            ],
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
    Uri audioFile = await audioCache.load(_path);
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
