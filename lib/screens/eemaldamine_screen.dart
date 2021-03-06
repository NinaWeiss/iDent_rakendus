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
              ListTile(title: Text("Hamba eemaldamine on ambulatoorne pisioperatsioon, mille k??igus eemaldatakse hammas l??ualuust. Protseduuri teostataksekohaliku tuimestusega, m??ningatel juhtudel ka ??ldanesteesias (raske f????silise ja vaimse puude korral, v??ikelastel hulgikaariese puhul).")),

              ListTile(title: Text("\nProtseduuri kulg\n", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF78BE20)))),
              ListTile(title: Text("??? Enne protseduuri antakse Teile suu loputamiseks antiseptilist lahust (kaaliumpermanganaadi lahus v??i kloorheksidiini sisaldav lahus).")),
              ListTile(title: Text("??? Seej??rel tuimestatakse vastava hamba piirkond v??i alal??ua puhul ?? alal??uast. Tuimestus kestab s??ltuvalt piirkonnast 1-4 tundi.")),
              ListTile(title: Text("??? Hammas eemaldatakse vastavate instrumentide abil ??mbritsevatest kudedest.")),
              ListTile(title: Text("??? Alveool ehk hambasomp puhastatakse kirurgilise lusika abil.")),
              ListTile(title: Text("??? Haavale asetatakse 15-20 minutiks steriilne marlitampoon. Tavaliselt tekib selle aja jooksul haavale vereh????ve, mis kaitseb haava p??letiku tekkimise eest ja on haava paranemisel oluliseks teguriks.")),
              //ListTile(title: Text("??? ")),
              ListTile(title: Text("\nProtseduuri j??rgne periood\n", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF78BE20)))),
              ListTile(title: Text(
                  "Protseduurij??rgsel p??eval v??ib n??opiirkonnas esineda turse ja verevalumid, see on normaalne. Turse v??ib suureneda esimese 2-3 ????p??eva jooksul, 4.-5. p??eval hakkab turse alanema. Paranemise k??igus v??ib esineda ka naha v??rvuse muutust turse piirkonnas ??? algul v??ib nahk turse piirkonnas olla hallikassinine, hiljem kollakas, m??ne p??eva m????dudes see kaob. Tursega v??ib kaasneda ka suuavamistakistus.")),
              ListTile(title: Text("\nKodune enesehooldus\n",style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF78BE20)))),
              ListTile(title: Text("??? Protseduuri l??ppedes asetatakse haavale steriilne marlitampoon. Hoidke seda v??hemalt 15 ??? 20 minutit suus, sest tampoonist tingitud surve aitab verel paremini h????bida. Eemaldades tampooni varem, v??ib tekkida uus veritsus.")),
              ListTile(title: Text("??? Hamba eemaldamise j??rgselt v??ib haava piirkonnast immitseda verd. Sel juhul rullige puhaste k??tega steriilne marlitampoon (mitte vatt) pallikeseks, asetage see haavale ja suruge l??ualuud kokku. Hoidke tampooni suus 20 ??? 30 minutit.")),
              ListTile(title: Text("??? ??rge h??irige haava. V??ltige s??rme ja keelega haava puudutamist, sest nii v??ite tekitada haava ??rrituse, p??letiku ja/v??i veritsuse.")),
              ListTile(title: Text("??? Turse v??hendamiseks hoidke j????kotti 20 minutit p??se piirkonnas 20-60 minutiliste vahedega (j????koti ??mber asetage eelnevalt k??ter??tt). K??lma kompressi eesm??rk on ahendada veresooni ja aeglustada vereringet, mis omakorda p??rsib verejooksu. J????kott aitab turset alandada, kuid ei pruugi seda p??riselt taandada.")),
              ListTile(title: Text("??? Kasutage kahel esimesel protseduurij??rgsel p??eval arsti poolt soovitatud valuvaigisteid.")),
              ListTile(title: Text("??? Kasutage l??henenud suunurkade peitsimiseks pehmendavat kreemi v??i vaseliinsalvi.")),
              ListTile(title: Text("??? V??ltige suuvee kasutamist esimese 24 tunni jooksul peale hamba eemaldamist. Suud loputage ettevaatlikult, intensiivne suu loputamine v??ib p??hjustada verejooksu.")),
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