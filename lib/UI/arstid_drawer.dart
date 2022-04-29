import 'package:flutter/material.dart';
import 'package:i_dent/UI/Personal_drawer.dart';
import 'package:i_dent/screens/BekjakovScreen.dart';
import 'package:i_dent/screens/DobrovinskayaTsuporjaScreen.dart';
import 'package:i_dent/screens/HiielaidScreen.dart';
import 'package:i_dent/screens/JuurmaaScreen.dart';
import 'package:i_dent/screens/KaubaScreen.dart';
import 'package:i_dent/screens/Keiman_screen.dart';
import 'package:i_dent/screens/RannulaScreen.dart';
import 'package:i_dent/screens/RoometsScreen.dart';
import 'package:i_dent/screens/ZalevskajaScreen.dart';

import '../main.dart';

class arstid_drawer extends StatelessWidget{
  @override
  Widget build(BuildContext ctxt) {
    return new Drawer(
      child: new ListView(
        children:<Widget>[
          Container(
            height: 50.0,
            child: DrawerHeader(decoration: BoxDecoration(
            ),
              margin: EdgeInsets.all(0.0),
              padding: EdgeInsets.all(0.0),
              child: new AppBar(
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
            ),
          ),
          new ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/Dr-Veikko-Keiman.jpg'),
            ),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: new Text("Dr.Veikko Keiman",style: TextStyle(color: Color(0xFF10891a))),
            onTap: () {
              Navigator.pop(ctxt);
              Navigator.push(ctxt,
                  new MaterialPageRoute(builder: (ctxt) => new KeimanScreen()));
            },
          ),
          new ListTile(
            leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/Dr.-Rainer-Rannula.jpg'),
              ),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: new Text("Dr. Rainer Rannula",style: TextStyle(color: Color(0xFF10891a))),
            onTap: () {
              Navigator.pop(ctxt);
              Navigator.push(ctxt,
                  new MaterialPageRoute(builder: (ctxt) => new RannulaScreen()));
            },
          ),new ListTile(
            leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/Dr.-Emma-Zalevskaja.jpg'),
              ),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: new Text("Dr. Emma Zalevskaja",style: TextStyle(color: Color(0xFF10891a))),
            onTap: () {
              Navigator.pop(ctxt);
              Navigator.push(ctxt,
                  new MaterialPageRoute(builder: (ctxt) => new ZalevskajaScreen()));
            },
          ),new ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/Dr.MSc-Gaili-Kauba.jpg'),
            ),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: new Text("Dr.MSc Gaili Kauba",style: TextStyle(color: Color(0xFF10891a))),
            onTap: () {
              Navigator.pop(ctxt);
              Navigator.push(ctxt,
                  new MaterialPageRoute(builder: (ctxt) => new KaubaScreen()));
            },
          ),new ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/Dr.-Maria-Stien-Roomets.jpg'),
            ),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: new Text("Dr. Maria Stien Roomets",style: TextStyle(color: Color(0xFF10891a))),
            onTap: () {
              Navigator.pop(ctxt);
              Navigator.push(ctxt,
                  new MaterialPageRoute(builder: (ctxt) => new RoometsScreen()));
            },
          ),new ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/Dr_Juri_Beljakov_mv2.jpg'),
            ),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: new Text("Dr. Juri Beljakov",style: TextStyle(color: Color(0xFF10891a))),
            onTap: () {
              Navigator.pop(ctxt);
              Navigator.push(ctxt,
                  new MaterialPageRoute(builder: (ctxt) => new BeljakovScreen()));
            },
          ),new ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/Dr.-Triinu-Hiielaid.jpg'),
            ),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: new Text("Dr. Triinu Hiielaid",style: TextStyle(color: Color(0xFF10891a))),
            onTap: () {
              Navigator.pop(ctxt);
              Navigator.push(ctxt,
                  new MaterialPageRoute(builder: (ctxt) => new HiielaidScreen()));
            },
          ),new ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/Dr.-Stefaniya-Dobrovinskaya.jpg'),
            ),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: new Text("Dr. Stefaniya Dobrovinskaya-Tšupõrja",style: TextStyle(color: Color(0xFF10891a))),
            onTap: () {
              Navigator.pop(ctxt);
              Navigator.push(ctxt,
                  new MaterialPageRoute(builder: (ctxt) => new DobrovinskayaTsuporjaScreen()));
            },
          ),new ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/Ident_Personal_1080x1080.jpg'),
            ),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: new Text("Dr. Tuuli Juurmaa",style: TextStyle(color: Color(0xFF10891a))),
            onTap: () {
              Navigator.pop(ctxt);
              Navigator.push(ctxt,
                  new MaterialPageRoute(builder: (ctxt) => new JuurmaaScreen()));
            },
          )
        ],
      ),

    );
  }
}