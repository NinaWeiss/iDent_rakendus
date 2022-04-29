import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:i_dent/UI/DrawerOnly.dart';
import 'package:i_dent/UI/hinnakiri_drawer.dart';

import '../main.dart';

class hinnakiri_laser_screen extends StatefulWidget {
  final String title;

  const hinnakiri_laser_screen({Key key, this.title}) : super(key: key);
  @override
  hinnakiri_laser_screenState createState() => hinnakiri_laser_screenState();
  Widget build(BuildContext context) {
  }
}

class hinnakiri_laser_screenState extends State<hinnakiri_laser_screen> {

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
                    builder: (ctxt) => new Hinnakiri_drawer()));
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
            ListTile( leading: Text("Gingivoplastika (ühe hamba ulatuses)", textAlign: TextAlign.left) ,
                title: Text("15.00€",textAlign: TextAlign.right)),
            ListTile( leading: Text("Perikoroniidi laserravi (kogu suu)", textAlign: TextAlign.left) ,
                title: Text("200.00€",textAlign: TextAlign.right)),
            ListTile( leading: Text("Igeme pigmentatsiooni eemaldamine", textAlign: TextAlign.left) ,
                title: Text("200.00€",textAlign: TextAlign.right)),
            ListTile( leading: Text("Apikotoomia", textAlign: TextAlign.left) ,
                title: Text("300.00€",textAlign: TextAlign.right)),
            ListTile( leading: Text("Abstsessi ravi", textAlign: TextAlign.left) ,
                title: Text("45.00€",textAlign: TextAlign.right)),
            ListTile( leading: Text("Igemetasku dekontamineerimine laseriga", textAlign: TextAlign.left) ,
                title: Text("50.00€",textAlign: TextAlign.right)),
          ],
        ),
      ),
    );
  }


}