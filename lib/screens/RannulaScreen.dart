import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:i_dent/UI/arstid_drawer.dart';

import '../main.dart';

class RannulaScreen extends StatefulWidget {
  final String title;

  const RannulaScreen({Key key, this.title}) : super(key: key);
  @override
  _RannulaScreenState createState() => _RannulaScreenState ();
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: ('Dr.Rainer Rannula'),
      theme: new ThemeData(
        primarySwatch: Colors.green,
      ),
    );
  }
}

class _RannulaScreenState extends State<RannulaScreen> {
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
            Image.asset('assets/images/Dr.-Rainer-Rannula.jpg',
              width: 600.0,
              height: 400.0,
              fit: BoxFit.cover,),
            ListTile( title: Text("Dr. Rainer Rannula", textAlign: TextAlign.center),subtitle: Text("Kirurgia, implantoloogia",textAlign: TextAlign.center)),
            ListTile( title: Text("Lõpetasin 1993. a Puhja Keskkooli. Samal aastal asusin õppima Tartu Ülikoolis arstiteaduskonna stomatoloogia erialal, mille lõpetasin 1998. aastal. Peale internatuuri läbimist 1999. a töötasin Maxilla Hambakliinikus, hiljem NovaMed Hambakliinikus ja alates 2013. a iDent Hambakliinikus. Minu põhifookus on implantoloogia ja kirurgia, samuti proteetilised tööd. 2010. a läbisin Frankfurti Ülikooli implantoloogia-alase Curriculum programmi. Olen ennast pidevalt erialaselt täiendanud nii Eestis kui välismaal.")),
            ListTile( title: Text("Keeled: eesti, vene, soome ja inglise")),
          ],
        ),
      ),
    );
  }
}