import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:i_dent/UI/arstid_drawer.dart';

import '../main.dart';

class RoometsScreen extends StatefulWidget {
  final String title;

  const RoometsScreen({Key key, this.title}) : super(key: key);
  @override
  _RoometsScreenState createState() => _RoometsScreenState ();
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: ('Dr.Triinu Hiielaid'),
      theme: new ThemeData(
        primarySwatch: Colors.green,
      ),
    );
  }
}

class _RoometsScreenState extends State<RoometsScreen> {
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
            Image.asset('assets/images/Dr.-Maria-Stien-Roomets.jpg',
              width: 600.0,
              height: 400.0,
              fit: BoxFit.cover,),
            ListTile( title: Text("Dr. Maria Stien Roomets", textAlign: TextAlign.center),subtitle: Text("Hambaravi, juureravi, kirurgia, implantoloogia",textAlign: TextAlign.center)),
            ListTile( title: Text("Olen lõpetanud Tartu Ülikooli stomatoloogia eriala. Pean väga oluliseks, et patsiendile pakutav ravi oleks teaduspõhine ja kaasaegne, mistõttu täiendan end pidevalt nii Eestis kui ka välismaal toimuvatel koolitustel. Patsiendi rahulolu ja hea suutervise tagab usalduslik arsti-patsiendi suhe, selleks annan ma endast parima ning proovin alati hambaravi visiidi patsiendi jaoks võimalikult mugavaks muuta. Teostan protseduure hambaravist kuni esteetiliste proteetiliste taastamisteni, kasutan oma töös mikroskoopi ning digitaalseid hambaravi lahendusi. Hea koostöö kolleegidega ning patsiendiga võimaldavad tagada parima raviplaani ja rahuloleva patsiendi.")),
            ListTile( title: Text("Keeled: eesti, inglise ja saksa")),
          ],
        ),
      ),
    );
  }
}