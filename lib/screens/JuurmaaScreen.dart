import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:i_dent/UI/arstid_drawer.dart';

import '../main.dart';

class JuurmaaScreen extends StatefulWidget {
  final String title;

  const JuurmaaScreen({Key key, this.title}) : super(key: key);
  @override
  _JuurmaaScreenState createState() => _JuurmaaScreenState ();
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: ('Dr.Tuuli Juurmaa'),
      theme: new ThemeData(
        primarySwatch: Colors.green,
      ),
    );
  }
}

class _JuurmaaScreenState extends State<JuurmaaScreen> {
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
            Image.asset('assets/images/Ident_Personal_1080x1080.jpg',
              width: 600.0,
              height: 400.0,
              fit: BoxFit.cover,),
            ListTile( title: Text("Dr. Tuuli Juurmaa", textAlign: TextAlign.center),subtitle: Text("Hambaravi, juureravi",textAlign: TextAlign.center)),
            ListTile( title: Text("Olen lõpetanud Tartu Ülikooli arst-stomatoloogi erialal 2015. aastal. Mulle pakub huvi biomimeetiline hambaravi ja proteesimine. Olen osalenud nii kodumaa kui välismaa lektorite poolt läbi viidud koolitustel. Arvan, et hambaravi eesmärk peaks olema bioloogiliste, funktsionaalsete ja esteetiliste parameetrite ühendamine ning isegi väike mälumispinna täidis ideaalselt asetatud, jäljendades loomulikku hambakuju. Just selle poole ma püüdlengi oma igapäevatöös.")),
            ListTile( title: Text("Keeled:  eesti, vene ja inglise")),
          ],
        ),
      ),
    );
  }
}