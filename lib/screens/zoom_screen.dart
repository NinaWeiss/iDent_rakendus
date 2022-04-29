import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:i_dent/UI/protseduurid_drawer.dart';
import 'package:i_dent/screens/HiielaidScreen.dart';
import 'package:i_dent/screens/RoometsScreen.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_player/video_player.dart';

import '../main.dart';
import 'KaubaScreen.dart';

class zoom_screen extends StatefulWidget {
  zoom_screen() : super();

  @override
  zoom_screenState createState() => zoom_screenState();
}

class zoom_screenState extends State<zoom_screen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext ctxt) {
    return Scaffold(
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
            ListTile( title: Text("\nMis on Zoom hambavalgendus?", style: TextStyle( fontSize: 16.0 ,fontWeight: FontWeight.bold, color: Color(0xFF78BE20)))),
            ListTile( title: Text("Hammaste valgendusprotseduur spetsiaalse geeli ja lambi abil. Enne protseduuri hindab hambaarst suuõõne olukorda ning vajadusel teeb ettevalmistused valgendusprotseduuriks. Valgendus tehakse 6% vesinikperoksiidiga, mis spetsiaalse lambi abil aktiveerub. Geel sisaldab kaltsiumi ioone, mis aitavad tugevdada hambaid ja vähendada tundlikust. NB! Keraamilisi hambakroone ning täidiseid valgendada pole võimalik.")),
            ListTile(title: Text("\n")),
            Image.asset('assets/images/zoom-Philips-lamp-ja-logo.jpg',
              width: 600.0,
              height: 600.0,
              fit: BoxFit.cover,),
            ListTile( title: Text("\nProtseduur", style: TextStyle( fontSize: 16.0 ,fontWeight: FontWeight.bold, color: Color(0xFF78BE20)))),
            ListTile( title: Text("Protseduur kestab 1,5-2 tundi. Enne valgendamist hinnatakse ja registreeritakse hammaste värv. Suu limaskest ja igemed isoleeritakse. Igemetele asetatakse kaitsev valguskõvenev geel. Enne igat valgendus-sessiooni kantakse hammastele valgendamise kiirendit (BH booster). Valgendusgeel kantakse hammastele 1-2 mm paksuse kihina. Geel aktiveeritakse UV lambiga. Üks sessioon kestab 15 minutit. Protseduuri korratakse 3-4 korda.")),
            ListTile( title: Text("Pärast protseduuri", style: TextStyle( fontSize: 16.0 ,fontWeight: FontWeight.bold, color: Color(0xFF78BE20)))),
            ListTile( title: Text("Pärast protseduuri hinnatakse hammaste tooni. Suuhügienist annab juhised tulemuse säilitamiseks. Oluline on teada, et 48 tundi peale valgendusprotseduuri tuleks vältida tubakatooteid, kohvi, teed, valget ja punast veini, värvilisi sööke ja jooke ning samuti ei tohiks kasutada söe hambapastat. Tulemus kestab 1-5 aastat sõltuvalt patsiendi eluviisist ja harjumustest.\n")),
            Image.asset('assets/images/Hammaste valgendamine Tartus.jpg',
              width: 600.0,
              height: 400.0,
              fit: BoxFit.cover,),
          ],
        ),
      ),
    );
  }
}