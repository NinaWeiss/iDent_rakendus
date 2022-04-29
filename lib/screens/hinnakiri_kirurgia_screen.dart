import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:i_dent/UI/DrawerOnly.dart';
import 'package:i_dent/UI/hinnakiri_drawer.dart';

import '../main.dart';

class hinnakiri_kirurgia_screen extends StatefulWidget {
  final String title;

  const hinnakiri_kirurgia_screen({Key key, this.title}) : super(key: key);
  @override
  hinnakiri_kirurgia_screenState createState() => hinnakiri_kirurgia_screenState();
  Widget build(BuildContext context) {
  }
}

class hinnakiri_kirurgia_screenState extends State<hinnakiri_kirurgia_screen> {

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
            ListTile( leading: Text("Hamba eemaldamine\n(vastavalt keerukusele)", textAlign: TextAlign.left) ,
                title: Text("al 65.00€",textAlign: TextAlign.right)),
            ListTile( leading: Text("Tarkusehamba eemaldamine\n(vastavalt keerukusele)", textAlign: TextAlign.left) ,
                title: Text("al 110.00€",textAlign: TextAlign.right)),
            ListTile( leading: Text("Huule või keelekida vabastamine", textAlign: TextAlign.left) ,
                title: Text("70.00€",textAlign: TextAlign.right)),
            ListTile( leading: Text("Implantatsioon", textAlign: TextAlign.left) ,
                title: Text("al 690.00€",textAlign: TextAlign.right)),
            ListTile( leading: Text("Ajutine implantaadikroon", textAlign: TextAlign.left) ,
                title: Text("al 260.00€",textAlign: TextAlign.right)),
            ListTile( leading: Text("Kunstluu  lisamine (0,5gr)", textAlign: TextAlign.left) ,
                title: Text("165.00€",textAlign: TextAlign.right)),
            ListTile( leading: Text("Luusiirdamine", textAlign: TextAlign.left) ,
                title: Text("1100.00€",textAlign: TextAlign.right)),
            ListTile( leading: Text("Luu augmentatsioon", textAlign: TextAlign.left) ,
                title: Text("1000.00€",textAlign: TextAlign.right)),
            ListTile( leading: Text("Igemeplastika", textAlign: TextAlign.left) ,
                title: Text("140.00€",textAlign: TextAlign.right)),
            ListTile( leading: Text("Vestibuloplastika", textAlign: TextAlign.left) ,
                title: Text("250.00€",textAlign: TextAlign.right)),
            ListTile( leading: Text("Õmbluse asetamine", textAlign: TextAlign.left) ,
                title: Text("al 25.00€",textAlign: TextAlign.right)),
            ListTile( leading: Text("Õmbluste eemaldamine\nja haavakontroll", textAlign: TextAlign.left) ,
                title: Text("15.00€",textAlign: TextAlign.right)),
            ListTile( leading: Text("Haava loputus ja kontroll", textAlign: TextAlign.left) ,
                title: Text("20.00€",textAlign: TextAlign.right)),
          ],
        ),
      ),
    );
  }


}