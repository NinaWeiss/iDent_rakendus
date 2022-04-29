import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:i_dent/UI/arstid_drawer.dart';

import '../main.dart';

class BeljakovScreen extends StatefulWidget {
  final String title;

  const BeljakovScreen({Key key, this.title}) : super(key: key);
  @override
  _BeljakovScreenState createState() => _BeljakovScreenState ();
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: ('Dr. Juri Beljakov'),
      theme: new ThemeData(
        primarySwatch: Colors.green,
      ),
    );
  }
}

class _BeljakovScreenState extends State<BeljakovScreen> {
  @override
  Widget build(BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF78BE20)),
          onPressed: () {
            Navigator.pop(ctxt);
            Navigator.push(ctxt,
                new MaterialPageRoute(builder: (ctxt) => new arstid_drawer()));
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
            Image.asset('assets/images/Dr_Juri_Beljakov_mv2.jpg',
              width: 600.0,
              height: 400.0,
              fit: BoxFit.cover,),
            ListTile( title: Text("Dr. Juri Beljakov", textAlign: TextAlign.center),subtitle: Text("Hambaravi, juureravi, kirurgia, implantoloogia",textAlign: TextAlign.center)),
            ListTile( title: Text("Olen lõpetanud 2008. a Tallinna Tervishoiu Kõrgkooli hambatehniku, ning 2013. a Tartu Ülikooli arst-stomatoloogi erialal. Aastail 2019-2021 läbisin Saksamaal “Univercity Medical Center Hamburg-Eppendorf (UKE)” baasil regeneratiivse kirurgia Curriculumi. Pidevalt osalen erialastel koolitustel nii Eestis kui ka välismaal. Igapäevaselt tegelen hambaraviga, kuid viimastel aastatel olen järjest rohkem spetsialiseerunud kirurgilisele (implantoloogia, regeneratiivne kirurgia) ning proteetilisele valdkonnale.")),
            ListTile( title: Text("Keeled:  eesti, vene ja inglise")),
          ],
        ),
      ),
    );
  }
}