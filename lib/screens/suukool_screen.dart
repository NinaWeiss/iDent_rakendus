import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:i_dent/UI/DrawerOnly.dart';
import 'package:i_dent/UI/protseduurid_drawer.dart';
import 'package:i_dent/screens/BekjakovScreen.dart';
import 'package:i_dent/screens/KaubaScreen.dart';
import 'package:i_dent/screens/Keiman_screen.dart';
import 'package:i_dent/screens/RannulaScreen.dart';
import 'package:video_player/video_player.dart';

import '../main.dart';
import 'RoometsScreen.dart';
import 'broneerimine_screen.dart';

class suukool_screen extends StatefulWidget {

  suukool_screen() : super();
  @override
  _suukool_screenState createState() => _suukool_screenState();
}


class _suukool_screenState extends State<suukool_screen> {
  VideoPlayerController _controller;
  VideoPlayerController _controller1;
  VideoPlayerController _controller2;
  VideoPlayerController _controller3;
  Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(
        'assets/videos/Suukool.ee-Miks_on_vaja_hambaid_pesta.mp4');
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    _controller.setVolume(1.0);
    _controller1 = VideoPlayerController.asset(
        'assets/videos/Suukool.ee-Miks_on_magus_hammastele_halb.mp4');
    _initializeVideoPlayerFuture = _controller1.initialize();
    _controller1.setLooping(true);
    _controller1.setVolume(1.0);
    _controller2 = VideoPlayerController.asset(
        'assets/videos/Suukool.ee-Miks_v6tta_p2rast_sooki_lonks_vett.mp4');
    _initializeVideoPlayerFuture = _controller2.initialize();
    _controller2.setLooping(true);
    _controller2.setVolume(1.0);
    _controller3 = VideoPlayerController.asset(
        'assets/videos/Suukool.ee-Miks_on_vaja_hammastel_puhata.mp4');
    _initializeVideoPlayerFuture = _controller3.initialize();
    _controller3.setLooping(true);
    _controller3.setVolume(1.0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    super.dispose();
  }

  @override
  @override
  Widget build(BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF78BE20)),
          onPressed: () {
            Navigator.pop(ctxt);
            Navigator.push(ctxt,
                new MaterialPageRoute(
                    builder: (ctxt) => new DrawerOnly()));
          },
        ),
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            IconButton(
              icon: Image.asset('assets/images/Ident_Hambakliinik_logo.png'),
              iconSize: 150,
              alignment: Alignment.center,
              onPressed: () {
                Navigator.pop(ctxt);
                Navigator.push(ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new MyHomePage()));
              },
            ),
          ],
        ),
      ),
      body: new Center(
        child: new ListView(
            children: [
              ListTile(title: Text("\nMiks on vaja hambaid pesta?\n", style: TextStyle(
                  fontWeight: FontWeight.bold, color: Color(0xFF78BE20)))),
              ListTile(title: FutureBuilder(
                future: _initializeVideoPlayerFuture,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return Center(
                      child: AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: VideoPlayer(_controller),
                      ),
                    );
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),),
              ListTile(title: FloatingActionButton(
                onPressed: () {
                  setState(() {
                    if (_controller.value.isPlaying) {
                      _controller.pause();
                    } else {
                      _controller.play();
                    }
                  });
                },
                child:
                Icon(_controller.value.isPlaying ? Icons.pause : Icons
                    .play_arrow),
              ),
              ),
              ListTile(title: Text("\nMiks on magus hammastele halb?\n", style: TextStyle(
                  fontWeight: FontWeight.bold, color: Color(0xFF78BE20)))),
              ListTile(title: FutureBuilder(
                future: _initializeVideoPlayerFuture,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return Center(
                      child: AspectRatio(
                        aspectRatio: _controller1.value.aspectRatio,
                        child: VideoPlayer(_controller1),
                      ),
                    );
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),),
              ListTile(title: FloatingActionButton(
                onPressed: () {
                  setState(() {
                    if (_controller1.value.isPlaying) {
                      _controller1.pause();
                    } else {
                      _controller1.play();
                    }
                  });
                },
                child:
                Icon(_controller1.value.isPlaying ? Icons.pause : Icons
                    .play_arrow),
              ),
              ),
              ListTile(title: Text("\nMiks võtta pärast sööki lonks vett?\n", style: TextStyle(
                  fontWeight: FontWeight.bold, color: Color(0xFF78BE20)))),
              ListTile(title: FutureBuilder(
                future: _initializeVideoPlayerFuture,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return Center(
                      child: AspectRatio(
                        aspectRatio: _controller2.value.aspectRatio,
                        child: VideoPlayer(_controller2),
                      ),
                    );
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),),
              ListTile(title: FloatingActionButton(
                onPressed: () {
                  setState(() {
                    if (_controller2.value.isPlaying) {
                      _controller2.pause();
                    } else {
                      _controller2.play();
                    }
                  });
                },
                child:
                Icon(_controller2.value.isPlaying ? Icons.pause : Icons
                    .play_arrow),
              ),
              ),
              ListTile(title: Text("\nMiks on vaja hammastele puhata?\n", style: TextStyle(
                  fontWeight: FontWeight.bold, color: Color(0xFF78BE20)))),
              ListTile(title: FutureBuilder(
                future: _initializeVideoPlayerFuture,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return Center(
                      child: AspectRatio(
                        aspectRatio: _controller3.value.aspectRatio,
                        child: VideoPlayer(_controller3),
                      ),
                    );
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),),
              ListTile(title: FloatingActionButton(
                onPressed: () {
                  setState(() {
                    if (_controller3.value.isPlaying) {
                      _controller3.pause();
                    } else {
                      _controller3.play();
                    }
                  });
                },
                child:
                Icon(_controller3.value.isPlaying ? Icons.pause : Icons
                    .play_arrow),
              ),
              ),
            ]
        ),
      ),
    );
  }
}