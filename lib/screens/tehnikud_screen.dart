import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:i_dent/UI/Personal_drawer.dart';

import '../main.dart';

class TehnikudScreen extends StatefulWidget {
  final String title;

  const TehnikudScreen({Key key, this.title}) : super(key: key);
  @override
  _TehnikudScreenState createState() => _TehnikudScreenState();
  Widget build(BuildContext context) {
    return Personal_drawer();
  }
}

class _TehnikudScreenState extends State<TehnikudScreen> {

  @override
  Widget build(BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Color(0xFF78BE20)),
          onPressed: () {
            Navigator.pop(ctxt);
            Navigator.push(ctxt,
                new MaterialPageRoute(builder: (ctxt) => new Personal_drawer()));
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
        Image.asset('assets/images/Hambatehnik-Andry-Tulp.jpg',
          width: 600.0,
          height: 400.0,
          fit: BoxFit.cover,),
        ListTile( title: Text("Andry Tulp", textAlign: TextAlign.center),subtitle: Text("Hambatehnik",textAlign: TextAlign.center)),

        Image.asset('assets/images/Hambatehnik-Daniel-Hendrikson.jpg',
         width: 600.0,
         height: 400.0,
         fit: BoxFit.cover,),
        ListTile( title: Text("Daniel Hendrikson", textAlign: TextAlign.center),subtitle: Text("Hambatehnik",textAlign: TextAlign.center)),

        Image.asset('assets/images/Ident_Personal_1080x1080.jpg',
          width: 600.0,
          height: 400.0,
          fit: BoxFit.cover,),
        ListTile( title: Text("Kadri-Ann Kiviloo", textAlign: TextAlign.center),subtitle: Text("Abitehnik",textAlign: TextAlign.center)),

        Image.asset('assets/images/Büroojuht-Kristina-Ivanova.jpg',
          width: 600.0,
          height: 400.0,
          fit: BoxFit.cover,),
        ListTile( title: Text("Kristina Ivanova", textAlign: TextAlign.center),subtitle: Text("Büroojuht",textAlign: TextAlign.center)),

        Image.asset('assets/images/Sekretär-Veronika-Ivanova.jpg',
          width: 600.0,
          height: 400.0,
          fit: BoxFit.cover,),
        ListTile( title: Text("Veronika Ivanova", textAlign: TextAlign.center),subtitle: Text("Sekretär",textAlign: TextAlign.center)),

      ],
      ),
      ),
    );

  }


}