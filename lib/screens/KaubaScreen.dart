import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:i_dent/UI/arstid_drawer.dart';

import '../main.dart';

class KaubaScreen extends StatefulWidget {
  final String title;

  const KaubaScreen({Key key, this.title}) : super(key: key);
  @override
  _KaubaScreenState createState() => _KaubaScreenState ();

}

class _KaubaScreenState extends State<KaubaScreen> {
  @override
  Widget build(BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF78BE20)),
          onPressed: () {
            Navigator.of(ctxt).pop();
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
            Image.asset('assets/images/Dr.MSc-Gaili-Kauba.jpg',
              width: 600.0,
              height: 400.0,
              fit: BoxFit.cover,),
            ListTile( title: Text("Dr.MSc Gaili Kauba", textAlign: TextAlign.center),subtitle: Text("Hambaravi, juureravi, kirurgia, implantoloogia",textAlign: TextAlign.center)),
            ListTile( title: Text("Olen lõpetanud Tartu Ülikooli arst-stomatoloogi erialal, lisaks õppinud ja MSc kraadi omandanud Saksamaal RWTH Aacheni Ülikooli Laserite erialal. Samuti oman EMDOLA kraadi (European Master degree in Oral Laser Applications). Töötasin ōppejōuna RWTH Aacheni Ülikoolis laserid hambaarstidele. Töökogemust on nii Eestist kui ka 8 aastat Inglismaalt, kus olin ka isikliku kliiniku omanik. Tegelen eelkõige ravi ja proteesimisega, lisaks ka kirurgia ja implantaadid. Mulle meeldib läheneda suule ja hammastele kui tervikule, et lõpptulemuseks oleks terve ja kaunis naeratus, mis kestaks aastakümneid!")),
            ListTile( title: Text("Keeled: eesti, inglise, vene ja soome")),
          ],
        ),
      ),
    );
  }
}