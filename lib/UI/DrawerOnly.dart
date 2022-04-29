import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' show AppBar, BoxDecoration, BuildContext, Colors, Container, Drawer, DrawerHeader, EdgeInsets, Icon, IconButton, Icons, Image, ListTile, ListView, MaterialPageRoute, Navigator, Row, StatelessWidget, Text, Widget;
import 'package:i_dent/UI/Personal_drawer.dart';
import 'package:i_dent/UI/hinnakiri_drawer.dart';
import 'package:i_dent/main.dart';
import 'package:i_dent/screens/kontakt_screen.dart';
import 'package:i_dent/screens/kunst_screen.dart';
import '../screens/haigekassa.dart';
import 'package:i_dent/UI/protseduurid_drawer.dart';

import '../screens/hugieen_screen.dart';
import '../screens/suukool_screen.dart';

class DrawerOnly extends StatelessWidget{

  @override
  Widget build(BuildContext ctxt) {
    return new Drawer(
        child: new ListView(
          children:<Widget>[
            Container(
              height: 50.0,
              child: DrawerHeader(decoration: BoxDecoration(
                  color: Color(0xFF78BE20),
              ),
                margin: EdgeInsets.all(0.0),
                padding: EdgeInsets.all(0.0),
                  child: new AppBar(automaticallyImplyLeading: false,
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
              ),
            ),
            new ListTile(
              trailing: Icon(Icons.keyboard_arrow_right),
              title: new Text("Protseduurid"),
              onTap: (){
                Navigator.pop(ctxt);
                Navigator.push(ctxt, new MaterialPageRoute(builder: (ctxt) => new protseduurid_drawer()));
              },
            ),
            new ListTile(
              title: new Text("Personal"),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: (){
                Navigator.pop(ctxt);
                Navigator.push(ctxt, new MaterialPageRoute(builder: (ctxt) => new Personal_drawer()));
              },
            ),
            new ListTile(
              trailing: Icon(Icons.keyboard_arrow_right),
              title: new Text("Haigekassa hüvitis"),
              onTap: (){
                Navigator.pop(ctxt);
                Navigator.push(ctxt, new MaterialPageRoute(builder: (ctxt) => new haigekassa()));
              },
            ),
            new ListTile(
              trailing: Icon(Icons.keyboard_arrow_right),
              title: new Text("Hinnakiri"),
              onTap: (){
                Navigator.pop(ctxt);
                Navigator.push(ctxt, new MaterialPageRoute(builder: (ctxt) => new Hinnakiri_drawer()));
              },
            ),
            new ListTile(
              title: new Text("Suuhügieen"),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: (){
                Navigator.pop(ctxt);
                Navigator.push(ctxt, new MaterialPageRoute(builder: (ctxt) => new hugieen_screen()));
              },
            ),new ListTile(
              title: new Text("Suukool"),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: (){
                Navigator.pop(ctxt);
                Navigator.push(ctxt, new MaterialPageRoute(builder: (ctxt) => new suukool_screen()));
              },
            ),
            new ListTile(
              title: new Text("Kunst Kliinikus"),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: (){
                Navigator.pop(ctxt);
                Navigator.push(ctxt, new MaterialPageRoute(builder: (ctxt) => new kunst_screen()));
              },
            ),
            new ListTile(
              trailing: Icon(Icons.keyboard_arrow_right),
              title: new Text("Kontakt"),
              onTap: (){
                Navigator.pop(ctxt);
                Navigator.push(ctxt, new MaterialPageRoute(builder: (ctxt) => new kontakt_screen()));
              },
            )

          ],
        )
    );

  }
}