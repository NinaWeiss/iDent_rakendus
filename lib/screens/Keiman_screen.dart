import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:i_dent/UI/arstid_drawer.dart';
import 'package:i_dent/screens/tehnikud_screen.dart';

import '../main.dart';

class KeimanScreen extends StatefulWidget {
  final String title;

  const KeimanScreen({Key key, this.title}) : super(key: key);
  @override
  _KeimanScreenState createState() => _KeimanScreenState ();
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: ('Dr.Veikko Keiman'),
      theme: new ThemeData(
        primarySwatch: Colors.green,
      ),
    );
  }
}

class _KeimanScreenState extends State<KeimanScreen> {
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
      Image.asset('assets/images/Dr-Veikko-Keiman.jpg',
      width: 600.0,
      height: 400.0,
      fit: BoxFit.cover,),
        ListTile( title: Text("Dr. Veikko Keiman", textAlign: TextAlign.center),subtitle: Text("Hambaravi, juureravi, kirurgia, implantoloogia",textAlign: TextAlign.center)),
        ListTile( title: Text("Olen lõpetanud Tartu Tervishoiukõrgkooli bioanalüütikuna ja Tartu Ülikooli stomatoloogina. Lisaks olen läbinud Goethe nimelise Frankfurdi ülikooli implantoloogia kursused. Tegelen peamiselt suukirurgia ja implantoloogiaga. Olen olnud aastaid õppejõud Tallinna Tervishoiukõrgkoolis.")),
        ListTile( title: Text("Keeled: eesti, saksa, vene ja inglise")),
      ],
      ),
      ),
    );
  }
}