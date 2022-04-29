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

class hugieen_screen extends StatefulWidget {

  hugieen_screen() : super();
  @override
  _hugieen_screenState createState() => _hugieen_screenState();
}


class _hugieen_screenState extends State<hugieen_screen> {
  VideoPlayerController _controller;
  VideoPlayerController _controller1;
  VideoPlayerController _controller2;
  Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.asset(
        'assets/videos/suukool_imik_hp.mp4');
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    _controller.setVolume(1.0);
    _controller1 = VideoPlayerController.asset(
        'assets/videos/suukool_vaikelaps_hp.mp4');
    _initializeVideoPlayerFuture = _controller1.initialize();
    _controller1.setLooping(true);
    _controller1.setVolume(1.0);
    _controller2 = VideoPlayerController.asset(
        'assets/videos/suukool_taiskasvanu_hp.mp4');
    _initializeVideoPlayerFuture = _controller2.initialize();
    _controller2.setLooping(true);
    _controller2.setVolume(1.0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    _controller1.dispose();
    _controller2.dispose();
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

              ListTile(title: Text("\nKuidas pesta hambaid õigesti?\n", style: TextStyle(
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

              //////
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
              ListTile(title: Text("\nSuuhooldusvahendid\n", style: TextStyle(
                  fontWeight: FontWeight.bold, color: Color(0xFF78BE20)))),
              ListTile(title: Text("Meie kliinikust saate osta Hollandi implantoloogide, suuõõne kirurgide ja hambaarstide meeskonna poolt välja töötatud spetsiaalseid hapnikuga rikastatud suuhooldustooteid. Tooted on mõeldud nii spetsiifiliste suuõõne probleemida raviks, kui igapäevaseks kasutamiseks.\n")),
              Image.asset('assets/images/bluem-product-range-white-in-front-website-gros.jpg',
                width: 600.0,
                height: 600.0,
                fit: BoxFit.cover,),
            ]
        ),
      ),
    );
  }
}