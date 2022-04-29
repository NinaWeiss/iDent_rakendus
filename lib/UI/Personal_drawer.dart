import 'package:flutter/material.dart';
import 'package:i_dent/UI/DrawerOnly.dart';
import 'package:i_dent/UI/arstid_drawer.dart';
import 'package:i_dent/screens/assistendid_screen.dart';
import 'package:i_dent/screens/tehnikud_screen.dart';

import '../main.dart';

class Personal_drawer extends StatelessWidget{
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
    title: new Text("Arstid"),
    onTap: () {
    Navigator.pop(ctxt);
    Navigator.push(ctxt,
    new MaterialPageRoute(builder: (ctxt) => new arstid_drawer()));
    },
    ),
            new ListTile(
              /*leading: CircleAvatar(
                backgroundImage: NetworkImage('https://motorblock.at/wp-content/uploads/2018/09/Tom-der-Abschleppwagen.jpg'),
              ),*/
              trailing: Icon(Icons.keyboard_arrow_right),
              title: new Text("Assistendid"),
              onTap: () {
                Navigator.pop(ctxt);
                Navigator.push(ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new AssistendidScreen()));
              },
            ),new ListTile(
              /*leading: CircleAvatar(
                backgroundImage: NetworkImage('https://motorblock.at/wp-content/uploads/2018/09/Tom-der-Abschleppwagen.jpg'),
              ),*/
              trailing: Icon(Icons.keyboard_arrow_right),
              title: new Text("Hambatehnikud ja büroo"),
              onTap: () {
                Navigator.pop(ctxt);
                Navigator.push(ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new TehnikudScreen()));
              },
            )
    ],
    ),

    );
  }
}