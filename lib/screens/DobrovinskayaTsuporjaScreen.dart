import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:i_dent/UI/arstid_drawer.dart';

import '../main.dart';

class DobrovinskayaTsuporjaScreen extends StatefulWidget {
  final String title;

  const DobrovinskayaTsuporjaScreen({Key key, this.title}) : super(key: key);
  @override
  _DobrovinskayaTsuporjaScreenState createState() => _DobrovinskayaTsuporjaScreenState ();
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: ('Dr. Stefaniya Dobrovinskaya-Tšupõrja'),
      theme: new ThemeData(
        primarySwatch: Colors.green,
      ),
    );
  }
}

class _DobrovinskayaTsuporjaScreenState extends State<DobrovinskayaTsuporjaScreen> {
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
          Image.asset('assets/images/Dr.-Stefaniya-Dobrovinskaya.jpg',
            width: 600.0,
            height: 400.0,
            fit: BoxFit.cover,),
          ListTile(title: Text("Dr. Stefaniya Dobrovinskaya-Tšupõrja",
              textAlign: TextAlign.center),
              subtitle: Text("Hambaravi, juureravi,proteetika",
                  textAlign: TextAlign.center)),
          ListTile(title: Text(
              "Olen lõpetanud Tartu Ülikooli hambaarstina. Tegelen peamiselt ravitöödega (kaariese ravi, juureravi) ja proteetikaga. Olen läbinud täiendkursusi Eestis ja Venemaal.")),
          ListTile(title: Text("Keeled:  eesti, vene ja inglise")),
    ],
    ),
    ),
    );
  }
}