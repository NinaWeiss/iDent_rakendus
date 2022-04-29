import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:i_dent/UI/protseduurid_drawer.dart';
import 'package:video_player/video_player.dart';
import '../main.dart';
import 'broneerimine_screen.dart';

class puhastus_screen extends StatefulWidget {

  puhastus_screen() : super();
  @override
  _puhastus_screenState createState() => _puhastus_screenState();
}


class _puhastus_screenState extends State<puhastus_screen> {
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.asset(
        'assets/videos/soodapesu.mp4');
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

              ListTile(title: Text("\nHammaste soodapesu aitab suu puhtana hoida\n", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF78BE20)))),
              ListTile(title: Text("Hammaste soodapesu aitab suu puhtana hoida, sest ka kõige perfektsema suuhügieeni korral on kohti, kuhu hambahari ja -niit ei ulatu. Kasutades spetsiaalset air-flow soodapulbrit, vett ja surve alt tulevat õhku eemaldab suuhügienist hammastelt katu, pigmendi, kergema hambakivi ja hammaste vahele kinni jäänud toiduosakesed. Kuna soodapesu annab hammastele tagasi nende loomuliku värvi ja tekitab sellega justkui valgendava efekti, on see teenus eriti kasulik neile, kes tarbivad palju kohvi, teed, veini ja tubakat.")),
              ListTile(title: Text("\nSoovitused\n", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF78BE20)))),
             ListTile(title: Text("Soodapesu soovitame teha 1-2 korda aastas. Kindlasti tasub meeles pidada, et soodapesu käigus pestakse maha ka hambaid kattev ja kaitsev süljekiht, mis taastub sülje proteiinide mõjul umbes 2–3 tunniga. Selle aja jooksul ei ole soovituslik suitsetada ning juua või süüa – nii jääb protseduuri käigus saavutatud efekt püsima.\n")),
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
                      text: ("Broneeri aeg soodapesule "),
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