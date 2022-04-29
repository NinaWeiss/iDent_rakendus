import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:i_dent/UI/DrawerOnly.dart';
import 'package:i_dent/UI/hinnakiri_drawer.dart';

import '../main.dart';

class hinnakiri_proteesid_screen extends StatefulWidget {
  final String title;

  const hinnakiri_proteesid_screen({Key key, this.title}) : super(key: key);
  @override
  hinnakiri_proteesid_screenState createState() => hinnakiri_proteesid_screenState();
  Widget build(BuildContext context) {
  }
}

class hinnakiri_proteesid_screenState extends State<hinnakiri_proteesid_screen> {

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
            ListTile( leading: Text("Jäljend ", textAlign: TextAlign.left) ,
                title: Text("al 20.00€",textAlign: TextAlign.right)),
            ListTile( leading: Text("Hamba ettevalmistamine\nproteesimiseks", textAlign: TextAlign.left) ,
                title: Text("52.00€",textAlign: TextAlign.right)),
            ListTile( leading: Text("Partsiaalprotees", textAlign: TextAlign.left) ,
                title: Text("al 467.00€",textAlign: TextAlign.right)),
            ListTile( leading: Text("Totaalprotees", textAlign: TextAlign.left) ,
                title: Text("al 660.00€",textAlign: TextAlign.right)),
            ListTile( leading: Text("Plaatproteesi murru parandamine", textAlign: TextAlign.left) ,
                title: Text("al 80.00€",textAlign: TextAlign.right)),
            ListTile( leading: Text("Ühe hamba lisamine proteesile", textAlign: TextAlign.left) ,
                title: Text("al 45.00€",textAlign: TextAlign.right)),
            ListTile( leading: Text("Keraamiline CAD/CAM kroon", textAlign: TextAlign.left) ,
                title: Text("al 500.00€",textAlign: TextAlign.right)),
            ListTile( leading: Text("Keraamiline CAD/CAM inlay", textAlign: TextAlign.left) ,
                title: Text("al 299.00€",textAlign: TextAlign.right)),
            ListTile( leading: Text("Tsirkoonium CAD/CAM kroon/\nlaminaat/ sillaühik", textAlign: TextAlign.left) ,
                title: Text("al 535.00€",textAlign: TextAlign.right)),
            ListTile( leading: Text("Keraamiline kruvitav implantaadi kroon\nCAD/CAM koos Ti-Base abutmentiga", textAlign: TextAlign.left) ,
                title: Text("650.00€",textAlign: TextAlign.right)),
            ListTile( leading: Text("Ajutine kabinetis valmistatud kroon", textAlign: TextAlign.left) ,
                title: Text("60.00€",textAlign: TextAlign.right)),
            ListTile( leading: Text("Ajutine CAD/CAM kroon / sillaühik", textAlign: TextAlign.left) ,
                title: Text("al 180.00€",textAlign: TextAlign.right)),
            ListTile( leading: Text("Krooni/ inlay/ onlay/\nlaminaadi/ sillaühiku tsementeerimine", textAlign: TextAlign.left) ,
                title: Text("al 10.00€",textAlign: TextAlign.right)),
          ],
        ),
      ),
    );
  }


}