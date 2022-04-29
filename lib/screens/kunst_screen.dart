import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:i_dent/UI/Personal_drawer.dart';

import '../main.dart';

class kunst_screen extends StatefulWidget {
  final String title;

  const kunst_screen({Key key, this.title}) : super(key: key);
  @override
  _kunst_screenState createState() => _kunst_screenState();
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Assistendid',
      theme: new ThemeData(
        primarySwatch: Colors.green,
      ),
    );
  }
}

class _kunst_screenState extends State<kunst_screen> {

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
                    builder: (ctxt) => new Personal_drawer()));
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
            ListTile(title: Text("\nLola Liivati maalide püsinäitus\n", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF78BE20)))),
            ListTile(title: Text("Lola Liivat on üks esimesi naismaalijaid Eestis, kes võttis 1960. aastail omaks abstraktse kunstikeele ja arendas välja enda isikupärase romantilise väljenduslaadi. Abstraktse ekspressionismi rütmikalt pulsseeriva maalikeele mõjutustel kujundas Liivat barokselt dünaamilise maalistiili, mis üldistab looduskogemusi, esitab vorme nende liikumises ja rõhutab meeleolu. Meeleolukus väljendub Liivati maalides värvikirevate maalikäikudega ja silmapaistvate intensiivsete toonide rohkusega.(Komissarov 2011)\n\nNäitus koosneb kolmeteistkümnest teosest.")),
            Image.asset('assets/images/Liivat_pilt1.jpg',
              width: 600.0,
              height: 400.0,
              fit: BoxFit.cover,),
            ListTile(title: Text("\n")),
            Image.asset('assets/images/Liivat_pilt2.jpg',
              width: 600.0,
              height: 400.0,
              fit: BoxFit.cover,),
            ListTile(title: Text("\n")),
            Image.asset('assets/images/Liivat_pilt3.jpg',
              width: 600.0,
              height: 400.0,
              fit: BoxFit.cover,),
            ListTile(title: Text("\n")),
            Image.asset('assets/images/Liivat_pilt4.jpg',
              width: 600.0,
              height: 400.0,
              fit: BoxFit.cover,),
            ListTile(title: Text("\n")),
            Image.asset('assets/images/Liivat_pilt5.jpg',
              width: 600.0,
              height: 400.0,
              fit: BoxFit.cover,),
            ListTile(title: Text("\n")),
            Image.asset('assets/images/Liivat_pilt6.jpg',
              width: 600.0,
              height: 400.0,
              fit: BoxFit.cover,),
            ListTile(title: Text("\n")),
            Image.asset('assets/images/Liivat_pilt7.jpg',
              width: 600.0,
              height: 400.0,
              fit: BoxFit.cover,),
            ListTile(title: Text("\n")),
            Image.asset(
              'assets/images/Liivat_pilt8.jpg',
              width: 600.0,
              height: 400.0,
              fit: BoxFit.cover,),
            ListTile(title: Text("\n")),
            Image.asset('assets/images/Liivat_pilt9.jpg',
              width: 600.0,
              height: 400.0,
              fit: BoxFit.cover,),
            ListTile(title: Text("\n")),
            Image.asset(
              'assets/images/Liivat_pilt10.jpg',
              width: 600.0,
              height: 400.0,
              fit: BoxFit.cover,),
            ListTile(title: Text("\n")),
            Image.asset(
              'assets/images/Liivat_pilt11.jpg',
              width: 600.0,
              height: 400.0,
              fit: BoxFit.cover,),
            ListTile(title: Text("\n")),
            Image.asset(
              'assets/images/Liivat_pilt12.jpg',
              width: 600.0,
              height: 400.0,
              fit: BoxFit.cover,),
            ListTile(title: Text("\n")),
            Image.asset(
              'assets/images/275505562_4852195951544584_5189797060589972028_n.jpg',
              width: 600.0,
              height: 400.0,
              fit: BoxFit.cover,),
            ListTile(title: Text("\n")),
           ],
        ),
      ),
    );
  }
  }