import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:i_dent/UI/DrawerOnly.dart';
import 'package:i_dent/screens/HiielaidScreen.dart';
import 'package:i_dent/screens/RoometsScreen.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_player/video_player.dart';

import '../main.dart';
import 'KaubaScreen.dart';

class haigekassa extends StatefulWidget {
  haigekassa() : super();

  @override
  haigekassaState createState() => haigekassaState();
}

class haigekassaState extends State<haigekassa> {
  //
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    _controller = VideoPlayerController.asset(
        'assets/videos/Taiskasvanute_hambaravihuvitis.mp4');
    //_controller = VideoPlayerController.asset("videos/sample_video.mp4");
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


  String myStringWithLinebreaks = "Eestis ravikindlustatud täiskasvanud (40 eurot aastas)\nrasedad ja alla 1-aastase lapse emad (85 eurot aastas)\nosalise või puuduva töövõimega inimesed (85 eurot aastas)\nüle 63-aastased ravikindlustatud (85 eurot aastas)\nsuurenenud hambaravivajadusega inimesed (85 eurot aastas)";
  @override
  Widget build(BuildContext ctxt) {
    return Scaffold(
      appBar: new AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Color(0xFF78BE20)),
          onPressed: () {
            Navigator.pop(ctxt);
            Navigator.push(ctxt,
                new MaterialPageRoute(builder: (ctxt) => new DrawerOnly()));
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
                Navigator.push(ctxt, new MaterialPageRoute(builder: (ctxt) => new MyHomePage()));
              },
            ),
          ],
        ),
      ),

      body: new Center(
        child: new ListView(
          children: [

            ListTile( title: Text("\nEesti Haigekassa poolt tasustatud hambaraviteenused\n", textAlign: TextAlign.center, style: TextStyle( fontSize: 18.0 ,fontWeight: FontWeight.bold, color: Color(0xFF78BE20)))),
            ListTile( title: Text("Eesti Haigekassa hüvitab täiskasvanud ravikindlustatutele hambaravi 40 eurot aastas. Suurema hambaravivajadusega inimeste hüvitis on 85 eurot aastas. Patsient ise tasub vähemalt 50% arvest.\n")),
            ListTile(
                title: Text("Hüvitist saavad:\n",style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle:
                Column(
                    children: LineSplitter.split(myStringWithLinebreaks).map((o) {
                      return Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("• "),
                          Expanded(
                            child: Text(o),
                          )
                        ],
                      );
                    }).toList())),
            ListTile( title: Text("Laste hambaravi",style: TextStyle(fontWeight: FontWeight.bold))),
            ListTile( title: Text("Eesti kodanikest alla 19-aastaste patsientide ravi eest tasub Eesti Haigekassa. Lisaks tasub haigekassa ravi ühe aasta jooksul pärast 19-aastaseks saamist, kui ravivajadus ilmnes viimase visiidi ajal enne 19-aastaseks saamist.\n")),
            ListTile( title: Text("Proteesihüvitis",style: TextStyle(fontWeight: FontWeight.bold))),
            ListTile( title:RichText(
              text: new TextSpan(
                children: [
                  new TextSpan(
                    text: ("Proteesihüvitist on võimalik kasutada kolme aasta peale summas 260 eurot. Rohkem infot proteesihüvitise kohta saab lugeda "),
                    style: new TextStyle(color: Colors.black),
                  ),
                  new TextSpan(
                    text: 'Eesti Haigekassa kodulehelt.\n',
                    style: new TextStyle(color: Color(0xFF78BE20)),
                    recognizer: new TapGestureRecognizer()
                      ..onTap = () { launch('https://www.haigekassa.ee/hambaravi/patsiendile/hambaproteeside-huvitis');
                      },
                  ),
                ],
              ),
            ),),
            ListTile( title:FutureBuilder(
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
            ListTile( title:FloatingActionButton(
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
          Icon(_controller.value.isPlaying ? Icons.pause : Icons.play_arrow),
        ),
              ),
            ListTile( title: Text("Haigekassa lepingupartnerid",style: TextStyle(fontWeight: FontWeight.bold))),
            ListTile(title:RichText(
              text: new TextSpan(
                children: [
                  new TextSpan(
                    text: 'Dr.MSc Gaili Kauba\n',
                    style: new TextStyle(color: Color(0xFF78BE20)),
                    recognizer: new TapGestureRecognizer()
                      ..onTap = () { Navigator.pop(ctxt);
                      Navigator.push(ctxt, new MaterialPageRoute(builder: (ctxt) => new KaubaScreen()));
                      },
                  ),
                ],
              ),
            ),),
            ListTile(title:RichText(
              text: new TextSpan(
                children: [
                  new TextSpan(
                    text: 'Dr. Maria Stien Roomets\n',
                    style: new TextStyle(color: Color(0xFF78BE20)),
                    recognizer: new TapGestureRecognizer()
                      ..onTap = () { Navigator.pop(ctxt);
                      Navigator.push(ctxt, new MaterialPageRoute(builder: (ctxt) => new RoometsScreen()));
                      },
                  ),
                ],
              ),
            ),),
            ListTile(title:RichText(
              text: new TextSpan(
                children: [
                  new TextSpan(
                    text: 'Dr. Triinu Hiielaid\n',
                    style: new TextStyle(color: Color(0xFF78BE20)),
                    recognizer: new TapGestureRecognizer()
                      ..onTap = () { Navigator.pop(ctxt);
                      Navigator.push(ctxt, new MaterialPageRoute(builder: (ctxt) => new HiielaidScreen()));
                      },
                  ),
                ],
              ),
            ),),

    ],
        ),
      ),
      );
  }
}