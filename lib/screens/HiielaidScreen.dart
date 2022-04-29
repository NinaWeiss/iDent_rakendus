import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:i_dent/UI/arstid_drawer.dart';

import '../main.dart';

class HiielaidScreen extends StatefulWidget {
  final String title;

  const HiielaidScreen({Key key, this.title}) : super(key: key);
  @override
  _HiielaidScreenState createState() => _HiielaidScreenState ();
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: ('Dr.Triinu Hiielaid'),
      theme: new ThemeData(
        primarySwatch: Colors.green,
      ),
    );
  }
}

class _HiielaidScreenState extends State<HiielaidScreen> {
  @override
  Widget build(BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Color(0xFF78BE20)),
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
            Image.asset('assets/images/Dr.-Triinu-Hiielaid.jpg',
              width: 600.0,
              height: 400.0,
              fit: BoxFit.cover,),
            ListTile( title: Text("Dr. Triinu Hiielaid", textAlign: TextAlign.center),subtitle: Text("Hambaravi, juureravi",textAlign: TextAlign.center)),
            ListTile( title: Text("Olen lõpetanud Tartu Ülikooli hambaarstiteaduskonna stomatoloogia eriala. Ametikäik: 2017 – 2018 hambaarst Piiri hambaravis 2018 -… hambaarst A&K Caritases 2019 – … hambaarst iDent hambakliinikus. Tegelen peamiselt laste ja täiskasvanute esteetilise hambaraviga, juureraviga mikroskoobi abil ning kergemate kirurgiliste protseduuridega. Osalen pidevalt täiendkoolitustel, eriti pakub huvi esteetiline hambaravi ja juureravi mikroskoobi abil. Eesti Hambaarstide Liidu liige. Pädevussertifikaat.")),
            ListTile( title: Text("Keeled:  eesti ja inglise")),
          ],
        ),
      ),
    );
  }
}