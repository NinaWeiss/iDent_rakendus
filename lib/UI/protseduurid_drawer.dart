import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:i_dent/screens/eemaldamine_screen.dart';
import 'package:i_dent/screens/hinnakiri_kirurgia_screen.dart';
import 'package:i_dent/screens/hinnakiri_laser_screen.dart';
import 'package:i_dent/screens/hinnakiri_proteesid_screen.dart';
import 'package:i_dent/screens/hinnakiri_uldine_screen.dart';
import 'package:i_dent/screens/implantoloogia_screen.dart';
import 'package:i_dent/screens/juureravi_screen.dart';
import 'package:i_dent/screens/kaaries_screen.dart';
import 'package:i_dent/screens/puhastus_screen.dart';
import 'package:i_dent/screens/zoom_screen.dart';

import '../main.dart';
import 'DrawerOnly.dart';

class protseduurid_drawer extends StatelessWidget{
  @override
  Widget build(BuildContext ctxt) {
    return new Drawer(
      child: new ListView(
        children:<Widget>[
          Container(
            height: 50.0,
            child: DrawerHeader(decoration: BoxDecoration(
                color: Color(0xFF78BE20)
            ),
              margin: EdgeInsets.all(0.0),
              padding: EdgeInsets.all(0.0),
              child: new AppBar(leading: IconButton(
                icon: Icon(Icons.arrow_back, color: Color(0xFF78BE20)),
                onPressed: () {
                  Navigator.pop(ctxt);
                  Navigator.push(ctxt,
                      new MaterialPageRoute(builder: (ctxt) => new DrawerOnly()));
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
            ),
          ),
          new ListTile(
            /*leading: CircleAvatar(
                backgroundImage: NetworkImage('https://motorblock.at/wp-content/uploads/2018/09/Tom-der-Abschleppwagen.jpg'),
              ),*/
            trailing: Icon(Icons.keyboard_arrow_right),
            title: new Text("Hamba eemaldamine"),
            onTap: () {
              Navigator.pop(ctxt);
              Navigator.push(ctxt,
                  new MaterialPageRoute(builder: (ctxt) => new eemaldamine_screen()));
            },
          ),
          new ListTile(
            /*leading: CircleAvatar(
                backgroundImage: NetworkImage('https://motorblock.at/wp-content/uploads/2018/09/Tom-der-Abschleppwagen.jpg'),
              ),*/
            trailing: Icon(Icons.keyboard_arrow_right, color:Color(0xFF78BE20)),
            title: new Text("Juureravi" ),
            onTap: () {
              Navigator.pop(ctxt);
              Navigator.push(ctxt,
                  new MaterialPageRoute(builder: (ctxt) => new juureravi_screen()));
            },
          ),
          new ListTile(
            trailing: Icon(Icons.keyboard_arrow_right),
            title: new Text("Implantoloogia"),
            onTap: () {
              Navigator.pop(ctxt);
              Navigator.push(ctxt,
                  new MaterialPageRoute(builder: (ctxt) => new implantoloogia_screen()));
            },
          ),
          new ListTile(
            trailing: Icon(Icons.keyboard_arrow_right),
            title: new Text("Puhastus/Soodapesu"),
            onTap: () {
              Navigator.pop(ctxt);
              Navigator.push(ctxt,
                  new MaterialPageRoute(builder: (ctxt) => new puhastus_screen()));
            },
          ),
          new ListTile(
            trailing: Icon(Icons.keyboard_arrow_right),
            title: new Text("Kaariese ravi"),
            onTap: () {
              Navigator.pop(ctxt);
              Navigator.push(ctxt,
                  new MaterialPageRoute(builder: (ctxt) => new kaaries_screen()));
            },
          ),
          new ListTile(
            trailing: Icon(Icons.keyboard_arrow_right),
            title: new Text("Zoom hambavalgendus"),
            onTap: () {
              Navigator.pop(ctxt);
              Navigator.push(ctxt,
                  new MaterialPageRoute(builder: (ctxt) => new zoom_screen()));
            },
          ),
        ],
      ),

    );
  }
}