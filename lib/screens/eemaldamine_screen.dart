import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:i_dent/UI/protseduurid_drawer.dart';
import 'package:video_player/video_player.dart';

import '../main.dart';
import 'broneerimine_screen.dart';

class eemaldamine_screen extends StatefulWidget {

  eemaldamine_screen() : super();
  @override
  _eemaldamine_screenState createState() => _eemaldamine_screenState();
}


class _eemaldamine_screenState extends State<eemaldamine_screen> {
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

              ListTile(title: Text("\nMida tehakse hamba eemaldamisel?\n", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF78BE20)))),
              ListTile(title: Text("Hamba eemaldamine on ambulatoorne pisioperatsioon, mille käigus eemaldatakse hammas lõualuust. Protseduuri teostataksekohaliku tuimestusega, mõningatel juhtudel ka üldanesteesias (raske füüsilise ja vaimse puude korral, väikelastel hulgikaariese puhul).")),

              ListTile(title: Text("\nProtseduuri kulg\n", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF78BE20)))),
              ListTile(title: Text("• Enne protseduuri antakse Teile suu loputamiseks antiseptilist lahust (kaaliumpermanganaadi lahus või kloorheksidiini sisaldav lahus).")),
              ListTile(title: Text("• Seejärel tuimestatakse vastava hamba piirkond või alalõua puhul ½ alalõuast. Tuimestus kestab sõltuvalt piirkonnast 1-4 tundi.")),
              ListTile(title: Text("• Hammas eemaldatakse vastavate instrumentide abil ümbritsevatest kudedest.")),
              ListTile(title: Text("• Alveool ehk hambasomp puhastatakse kirurgilise lusika abil.")),
              ListTile(title: Text("• Haavale asetatakse 15-20 minutiks steriilne marlitampoon. Tavaliselt tekib selle aja jooksul haavale verehüüve, mis kaitseb haava põletiku tekkimise eest ja on haava paranemisel oluliseks teguriks.")),
              //ListTile(title: Text("• ")),
              ListTile(title: Text("\nProtseduuri järgne periood\n", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF78BE20)))),
              ListTile(title: Text(
                  "Protseduurijärgsel päeval võib näopiirkonnas esineda turse ja verevalumid, see on normaalne. Turse võib suureneda esimese 2-3 ööpäeva jooksul, 4.-5. päeval hakkab turse alanema. Paranemise käigus võib esineda ka naha värvuse muutust turse piirkonnas – algul võib nahk turse piirkonnas olla hallikassinine, hiljem kollakas, mõne päeva möödudes see kaob. Tursega võib kaasneda ka suuavamistakistus.")),
              ListTile(title: Text("\nKodune enesehooldus\n",style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF78BE20)))),
              ListTile(title: Text("• Protseduuri lõppedes asetatakse haavale steriilne marlitampoon. Hoidke seda vähemalt 15 – 20 minutit suus, sest tampoonist tingitud surve aitab verel paremini hüübida. Eemaldades tampooni varem, võib tekkida uus veritsus.")),
              ListTile(title: Text("• Hamba eemaldamise järgselt võib haava piirkonnast immitseda verd. Sel juhul rullige puhaste kätega steriilne marlitampoon (mitte vatt) pallikeseks, asetage see haavale ja suruge lõualuud kokku. Hoidke tampooni suus 20 – 30 minutit.")),
              ListTile(title: Text("• Ärge häirige haava. Vältige sõrme ja keelega haava puudutamist, sest nii võite tekitada haava ärrituse, põletiku ja/või veritsuse.")),
              ListTile(title: Text("• Turse vähendamiseks hoidke jääkotti 20 minutit põse piirkonnas 20-60 minutiliste vahedega (jääkoti ümber asetage eelnevalt käterätt). Külma kompressi eesmärk on ahendada veresooni ja aeglustada vereringet, mis omakorda pärsib verejooksu. Jääkott aitab turset alandada, kuid ei pruugi seda päriselt taandada.")),
              ListTile(title: Text("• Kasutage kahel esimesel protseduurijärgsel päeval arsti poolt soovitatud valuvaigisteid.")),
              ListTile(title: Text("• Kasutage lõhenenud suunurkade peitsimiseks pehmendavat kreemi või vaseliinsalvi.")),
              ListTile(title: Text("• Vältige suuvee kasutamist esimese 24 tunni jooksul peale hamba eemaldamist. Suud loputage ettevaatlikult, intensiivne suu loputamine võib põhjustada verejooksu.")),
              /*ListTile(title: FutureBuilder(
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
              ),*/
              ListTile( title:RichText(
                text: new TextSpan(
                  children: [
                    new TextSpan(
                      text: ("\nBroneeri aeg hamba eemaldamisele "),
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