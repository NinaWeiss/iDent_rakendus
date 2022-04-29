import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:i_dent/UI/arstid_drawer.dart';

import '../main.dart';

class ZalevskajaScreen extends StatefulWidget {
  final String title;

  const ZalevskajaScreen({Key key, this.title}) : super(key: key);
  @override
  _ZalevskajaScreenState createState() => _ZalevskajaScreenState ();
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: ('Dr. Emma Zalevskaja'),
      theme: new ThemeData(
        primarySwatch: Colors.green,
      ),
    );
  }
}

class _ZalevskajaScreenState extends State<ZalevskajaScreen> {
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
            Image.asset('assets/images/Dr.-Emma-Zalevskaja.jpg',
              width: 600.0,
              height: 400.0,
              fit: BoxFit.cover,),
            ListTile( title: Text("Dr. Emma Zalevskaja", textAlign: TextAlign.center),subtitle: Text("Hambaravi, juureravi",textAlign: TextAlign.center)),
            ListTile( title: Text("Lõpetasin Tartu Ülikooli meditsiiniteaduskonna hambaravi eriala. Samas ülikoolis jätkasin ka õpinguid restauratiivse hambaravi endodontia erialal. Oma kliinilises töös tegelen peamiselt juureraviga.")),
            ListTile( title: Text("Keeled:  eesti, vene ja inglise")),
          ],
        ),
      ),
    );
  }
}