import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:i_dent/UI/protseduurid_drawer.dart';
import 'package:i_dent/screens/BekjakovScreen.dart';
import 'package:i_dent/screens/DobrovinskayaTsuporjaScreen.dart';
import 'package:i_dent/screens/JuurmaaScreen.dart';
import 'package:i_dent/screens/KaubaScreen.dart';
import 'package:i_dent/screens/Keiman_screen.dart';
import 'package:i_dent/screens/ZalevskajaScreen.dart';
import 'package:video_player/video_player.dart';

import '../main.dart';
import 'HiielaidScreen.dart';
import 'RoometsScreen.dart';

class juureravi_screen extends StatefulWidget {

  juureravi_screen() : super();
  @override
  _juureravi_screenState createState() => _juureravi_screenState();
}

String myStringWithLinebreaks = "Arst uurib hammast ning teeb röntgenülesvõtte, püstitab diagnoosi ja määrab hamba raviplaani. Hammas tuimestatakse (vajadusel). Seejärel pannakse hamba ümber klambriga kumm, mille eesmärgiks on hammas isoleerida - see kaitseb hamba sisemust sülje ja suumikroobide eest, samas ei satu ravis kasutatavad vahendid patsiendi suuõõnde. Kui patsiendil on nohu, on ravi raskendatud - patsiendil pole võimalik isoleeriva kummi tõttu suu kaudu ega nohu tõttu nina kaudu hingata. Sellisel juhul tuleks arstiga ühendust võtta ja kokku leppida uus raviaeg.\nArst avab puuride abil hamba pulbiruumi. Juurekanalite töötlemiseks ja kujundamiseks kasutatakse spetsiaalseid instrumente.\nPärast kanaliruumi puhastamist ja kujundamist täidetakse juurekanalid biosobiva, tavaliselt kummitaolise materjaliga, mida kutsutakse gutapertšiks. Enne gutapertši asetamist viiakse kanalitesse siilerit, mis lihtsustab täitematerjali kanalitesse viimist ning täidab ja sulgeb selle ruumi, kuhu täitematerjali pole võimalik asetada.\nViimaseks etapiks on hamba lõplik taastamine valguskõvastuva täidise või hambalaboris valmistatud krooniga. Vahel võib enne hamba lõplikku taastamist täidisele lisakinnituse saamiseks olla vajalik kanalisse posti asetamine.\n";
class _juureravi_screenState extends State<juureravi_screen> {
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.asset(
        'assets/videos/Endodontic_Treatments.mp4');
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

                ListTile( title: Text("\nMis on juureravi?\n", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF78BE20)))),
                ListTile( title: Text("Endodontiline ravi on hamba sisemuse ravi. Selleks, et aru saada, mis on juureravi, tuleb tunda hamba ehitust: hamba sees, emaili ja dentiini all, asub pehme kude - hambapulp. Pulp koosneb veresoontest, närvikiududest ja sidekoest, ulatub hambakrooni ülemisest osast juuretippudeni ning on seotud juurt ümbritsevate kudedega. Pulp vastutab hamba kasvu ja arengu eest. Kui hammas on lõpuni arenenud, saab ta hakkama ka ilma pulbita, kuna toitained jõuavad hambani ka teda ümbritsevatest kudedest.")),
                ListTile( title: Text("\nMiks hammas vajab juureravi?\n", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF78BE20)))),
                ListTile(title: Text("Juureravi osutub vajalikuks, kui hambapulbis tekib põletik. Selle tekkepõhjuseks võib olla sügav kaaries, korduv hamba ravi, hambamurd, mõrad. Isegi kui trauma tõttu ei teki hamba murdu või nähtavat mõra, võib hambanärv siiski vigastatud olla. Kui hammas jääb ravita, hakkab ta valutama. Aja jooksul levib põletik üle juuretipu ning on oht turse ehk abstsessi tekkeks, mis on nähtav hammast ümbritseval igemel või isegi näol.")),
                ListTile( title: Text("\nJuureravi samm-sammult seletatuna\n", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF78BE20)))),
                ListTile( title: Text("Juureravi teostatakse ühe või mitme visiidiga. Ravi etapid on:\n")),
                ListTile(title: Text("• Arst uurib hammast ning teeb röntgenülesvõtte, püstitab diagnoosi ja määrab hamba raviplaani. Hammas tuimestatakse (vajadusel). Seejärel pannakse hamba ümber klambriga kumm, mille eesmärgiks on hammas isoleerida - see kaitseb hamba sisemust sülje ja suumikroobide eest, samas ei satu ravis kasutatavad vahendid patsiendi suuõõnde. Kui patsiendil on nohu, on ravi raskendatud - patsiendil pole võimalik isoleeriva kummi tõttu suu kaudu ega nohu tõttu nina kaudu hingata. Sellisel juhul tuleks arstiga ühendust võtta ja kokku leppida uus raviaeg.")),
                ListTile(title: Text("• Arst avab puuride abil hamba pulbiruumi. Juurekanalite töötlemiseks ja kujundamiseks kasutatakse spetsiaalseid instrumente.")),
                ListTile(title: Text("• Pärast kanaliruumi puhastamist ja kujundamist täidetakse juurekanalid biosobiva, tavaliselt kummitaolise materjaliga, mida kutsutakse gutapertšiks. Enne gutapertši asetamist viiakse kanalitesse siilerit, mis lihtsustab täitematerjali kanalitesse viimist ning täidab ja sulgeb selle ruumi, kuhu täitematerjali pole võimalik asetada.")),
                ListTile(title: Text("• Viimaseks etapiks on hamba lõplik taastamine valguskõvastuva täidise või hambalaboris valmistatud krooniga. Vahel võib enne hamba lõplikku taastamist täidisele lisakinnituse saamiseks olla vajalik kanalisse posti asetamine.")),
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
                ListTile( title: Text("Arstid iDentis, kes tegelevad juureraviga",style: TextStyle(fontWeight: FontWeight.bold))),
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
                        text: 'Dr. Emma Zalevskaja\n',
                        style: new TextStyle(color: Color(0xFF78BE20)),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = () { Navigator.pop(ctxt);
                          Navigator.push(ctxt, new MaterialPageRoute(builder: (ctxt) => new ZalevskajaScreen()));
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
                ListTile(title:RichText(
                  text: new TextSpan(
                    children: [
                      new TextSpan(
                        text: 'Dr. Stefaniya Dobrovinskaya-Tšupõrja\n',
                        style: new TextStyle(color: Color(0xFF78BE20)),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = () { Navigator.pop(ctxt);
                          Navigator.push(ctxt, new MaterialPageRoute(builder: (ctxt) => new DobrovinskayaTsuporjaScreen()));
                          },
                      ),
                    ],
                  ),
                ),),
                ListTile(title:RichText(
                  text: new TextSpan(
                    children: [
                      new TextSpan(
                        text: 'Dr. Tuuli Juurmaa\n',
                        style: new TextStyle(color: Color(0xFF78BE20)),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = () { Navigator.pop(ctxt);
                          Navigator.push(ctxt, new MaterialPageRoute(builder: (ctxt) => new JuurmaaScreen()));
                          },
                      ),
                    ],
                  ),
                ),
                ),
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
                ),
                ),
              ]
      ),
      ),
    );
  }
}