import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:i_dent/UI/protseduurid_drawer.dart';
import 'package:i_dent/screens/BekjakovScreen.dart';
import 'package:i_dent/screens/KaubaScreen.dart';
import 'package:i_dent/screens/Keiman_screen.dart';
import 'package:i_dent/screens/RannulaScreen.dart';
import 'package:video_player/video_player.dart';

import '../main.dart';
import 'RoometsScreen.dart';
import 'broneerimine_screen.dart';

class kaaries_screen extends StatefulWidget {

  kaaries_screen() : super();
  @override
  _kaaries_screenState createState() => _kaaries_screenState();
}


class _kaaries_screenState extends State<kaaries_screen> {
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.asset(
        'assets/videos/kaaries.mp4');
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    _controller.setVolume(1.0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
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
                    builder: (ctxt) => new protseduurid_drawer()));
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

              ListTile(title: Text("\nMis on kaaries?\n", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF78BE20)))),
              ListTile(title: Text("Kaaries on hamba kõvakudede, emaili, hambaluu ja juuretsemendi kroonilise kuluga haigus, mille puhul mineraalainete väljumise tagajärjel tekib hambasse auk. Kaariese esinemise meeliskohad on hambavahed ja kontaktpinnad, köprude vahelised lohud ning hambakaelad.Hammaste kontaktpinna aktiivsele dentiinikaariesele kaasnevad tihti põletikulised igemepapillid. Ka augu tekkimine emaili pinnale on seotud kahjustuse aktiivsusega. Kroonilise protsessi puhul püsib hambavaaba pind tervena.")),
              ListTile(title: Text("\nKuidas ravida?\n", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF78BE20)))),
              ListTile(title: Text("Hambaaugu parandamata jätmisel levivad mikroobid hambasäsisse ehk närviruumi, põhjustades valu ja suuremaid hädasid. Seega on mõistlik raviga alustada võimalikult ruttu pärast probleemi ilmnemist. Aktiivse kaariese ravi seisneb karioosse hambakoe eemaldamises ning defekti täitmises ehk plombeerimises tehismaterjalidega (täidistega), mis sobivad välimuselt ja tugevuselt hambaga.")),
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
              ListTile( title:RichText(
                text: new TextSpan(
                  children: [
                    new TextSpan(
                      text: ("Broneeri aeg kaariese ravile "),
                      style: new TextStyle(color: Colors.black),
                    ),
                    new TextSpan(
                      text: 'SIIN.\n',
                      style: new TextStyle(color: Color(0xFF78BE20)),
                      recognizer: new TapGestureRecognizer()
                        ..onTap = () { Navigator.pop(ctxt);
                        Navigator.push(ctxt, new MaterialPageRoute(builder: (ctxt) => new broneerimine_screen()));
                        },
                    ),
                  ],
                ),
              )
              ),
            ]
        ),
      ),
    );
  }
}