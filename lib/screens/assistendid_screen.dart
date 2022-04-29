import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:i_dent/UI/Personal_drawer.dart';

import '../main.dart';

class AssistendidScreen extends StatefulWidget {
  final String title;

  const AssistendidScreen({Key key, this.title}) : super(key: key);
  @override
  _AssistendidScreenState createState() => _AssistendidScreenState();
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Assistendid',
      theme: new ThemeData(
        primarySwatch: Colors.green,
      ),
    );
  }
}

class _AssistendidScreenState extends State<AssistendidScreen> {

  @override
  Widget build(BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF78BE20)),
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
      Image.asset('assets/images/Assistent-Tatiana-Amelchenko.jpg',
        width: 600.0,
        height: 400.0,
        fit: BoxFit.cover,),
      ListTile( title: Text("Tatiana Amelchenko", textAlign: TextAlign.center),subtitle: Text("Assistent",textAlign: TextAlign.center)),

      Image.asset('assets/images/Assistent-Katrin-Kiviberg.jpg',
        width: 600.0,
        height: 400.0,
        fit: BoxFit.cover,),
      ListTile( title: Text("Katrin Kiviberg", textAlign: TextAlign.center),subtitle: Text("Assistent",textAlign: TextAlign.center)),

      Image.asset('assets/images/Assistent-Larisa-Korenblit.jpg',
        width: 600.0,
        height: 400.0,
        fit: BoxFit.cover,),
      ListTile( title: Text("Larisa Korenblit", textAlign: TextAlign.center),subtitle: Text("Assistent",textAlign: TextAlign.center)),

      Image.asset('assets/images/Assistent-Helen-Laadi.jpg',
        width: 600.0,
        height: 400.0,
        fit: BoxFit.cover,),
      ListTile( title: Text("Helen Laadi",textAlign: TextAlign.center),subtitle: Text("Assistent",textAlign: TextAlign.center)),

      Image.asset('assets/images/Assistent-Veneta-Mäesepp.jpg',
        width: 600.0,
        height: 400.0,
        fit: BoxFit.cover,),
      ListTile( title: Text("Veneta Mäesepp", textAlign: TextAlign.center),subtitle: Text("Assistent",textAlign: TextAlign.center)),

      Image.asset('assets/images/Assistent-Jana-Roots.jpg',
        width: 600.0,
        height: 400.0,
        fit: BoxFit.cover,),
      ListTile( title: Text("Jana Roots", textAlign: TextAlign.center),subtitle: Text("Assistent",textAlign: TextAlign.center)),

      Image.asset('assets/images/Ident_Personal_1080x1080.jpg',
        width: 600.0,
        height: 400.0,
        fit: BoxFit.cover,),
      ListTile( title: Text("Nadežda Saffajeva", textAlign: TextAlign.center),subtitle: Text("Assistent",textAlign: TextAlign.center)),

      Image.asset('assets/images/Ident_Personal_1080x1080.jpg',
        width: 600.0,
        height: 400.0,
        fit: BoxFit.cover,),
      ListTile( title: Text("Maarika Tõnts", textAlign: TextAlign.center),subtitle: Text("Assistent",textAlign: TextAlign.center)),

      Image.asset('assets/images/Sterilisatsiooni-assistent-Svetlana-Karulaane.jpg',
        width: 600.0,
        height: 400.0,
        fit: BoxFit.cover,),
      ListTile( title: Text("Svetlana Karulaane", textAlign: TextAlign.center),subtitle: Text("Sterilisatsiooni assistent",textAlign: TextAlign.center)),

      Image.asset('assets/images/Ident_Personal_1080x1080.jpg',
        width: 600.0,
        height: 400.0,
        fit: BoxFit.cover,),
      ListTile( title: Text("Nattakarn Aasa", textAlign: TextAlign.center),subtitle: Text("Sterilisatsiooni assistent",textAlign: TextAlign.center)),

      Image.asset('assets/images/Assistent-hügienist-Birgitta-Keiman.jpg',
        width: 600.0,
        height: 400.0,
        fit: BoxFit.cover,),
      ListTile( title: Text("Birgitta Keiman", textAlign: TextAlign.center),subtitle: Text("Assistent-hügenist",textAlign: TextAlign.center)),


    ],
    ),
    ),
    );

  }


}