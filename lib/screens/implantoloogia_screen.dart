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

class implantoloogia_screen extends StatefulWidget {

  implantoloogia_screen() : super();
  @override
  _implantoloogia_screenState createState() => _implantoloogia_screenState();
}


class _implantoloogia_screenState extends State<implantoloogia_screen> {
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.asset(
        'assets/videos/Implantologie.mp4');
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
                new MaterialPageRoute(builder: (ctxt) => new protseduurid_drawer()));
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

              ListTile( title: Text("\nMis on implantoloogia?\n", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF78BE20)))),
              ListTile( title: Text("Hambaimplantaat on hambajuure asendaja. See valmistatakse eriti tugevatest, kergetest ja bioloogiliselt luuga sobivatest materjalidest (titaanist, tsirkooniumist või sulamitest) ja sarnaneb väikese kruviga. Kaotatud hammast uuesti üles ehitades kruvitakse implantaat kirurgiliselt lõualuusse ning selle külge kinnitatakse hambakroon.")),
              ListTile( title: Text("\nKirurgiline ravi\n", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF78BE20)))),
              ListTile(title: Text("Peale eelnevat põhjalikku ravi planeerimist asetatakse implantaadid lõualuusse.  Implantaadi paigaldamine toimub üldjuhul kohaliku tuimastusega ning sõltuvalt asendatavate hammaste arvust kestab protseduur 60 min kuni mõni tund.  Mõningatel juhtudel, kui implantaadi asetamiseks ei ole säilinud piisavalt olemasolevat luukude, on vajalik täiendav protseduur luu mahu taastamiseks kas kunstluu või patsiendi oma luu abil. Peale implantaatide asetamist võib esineda kerget valu ja turset, mille vastu määrab arst valuvaigistid ja antibiootikumiravi ning instrueerib patsienti operatsioonijärgse suuhügieeni suhtes.")),
              ListTile( title: Text("\nProteetiline ravi\n", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF78BE20)))),
              ListTile( title: Text("Proteetilise raviga alustamise aeg ning implantaadi koormamine sõltub implantaadi asukohast, luu kvaliteedist ning proteesitüübist. Edasise proteetilise ravi käigust informeerib patsienti täpsemalt kirurg või proteesiarst. Üldjuhul esihambaid asendavate implantaatide puhul tehakse implantaadikirurgia järgselt puuduva hambakrooni/hambakroonide asendamiseks ajutine protees, mis võib olla sõltuvalt ravijuhust kas eemaldatav või suust mitte ära käiv.\n")),
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
                ),
              ),
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
              ListTile( title: Text("Arstid iDentis, kes tegelevad implantoloogiaga",style: TextStyle(fontWeight: FontWeight.bold))),
              ListTile(title:RichText(
                text: new TextSpan(
                  children: [
                    new TextSpan(
                      text: 'Dr. Veikko Keiman\n',
                      style: new TextStyle(color: Color(0xFF78BE20)),
                      recognizer: new TapGestureRecognizer()
                        ..onTap = () { Navigator.pop(ctxt);
                        Navigator.push(ctxt, new MaterialPageRoute(builder: (ctxt) => new KeimanScreen()));
                        },
                    ),
                  ],
                ),
              ),),
              ListTile(title:RichText(
                text: new TextSpan(
                  children: [
                    new TextSpan(
                      text: 'Dr. Rainer Rannula\n',
                      style: new TextStyle(color: Color(0xFF78BE20)),
                      recognizer: new TapGestureRecognizer()
                        ..onTap = () { Navigator.pop(ctxt);
                        Navigator.push(ctxt, new MaterialPageRoute(builder: (ctxt) => new RannulaScreen()));
                        },
                    ),
                  ],
                ),
              ),),
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
              ),),ListTile(title:RichText(
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
                      text: 'Dr. Juri Beljakov\n',
                      style: new TextStyle(color: Color(0xFF78BE20)),
                      recognizer: new TapGestureRecognizer()
                        ..onTap = () { Navigator.pop(ctxt);
                        Navigator.push(ctxt, new MaterialPageRoute(builder: (ctxt) => new BeljakovScreen()));
                        },
                    ),
                  ],
                ),
              ),),
            ]
        ),
      ),
    );
  }
}