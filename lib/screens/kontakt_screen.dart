import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:i_dent/UI/DrawerOnly.dart';
import 'dart:async';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

import '../main.dart';

class kontakt_screen extends StatefulWidget {
  final String title;

  const kontakt_screen({Key key, this.title}) : super(key: key);
  @override
  kontakt_screenState createState() => kontakt_screenState();
  Widget build(BuildContext context) {
  }

}

class kontakt_screenState extends State<kontakt_screen> {
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
    builder: (ctxt) => new DrawerOnly()));
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
            body: Container(
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
              image: DecorationImage(
              image: AssetImage("assets/images/ident5_veeb.jpg"),
              fit: BoxFit.cover,
              )
              ),
            child: new ListView(
                children: [
                  ListTile(title: ElevatedButton(
                    style:ButtonStyle(backgroundColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                                if (states.contains(MaterialState.pressed))
                                return Colors.white;
                                return null; // Use the component's default.
                                },
                                ),),
                                child:  Link(
                                uri: Uri.parse('https://www.google.com/maps/place/iDent/@59.4269261,24.7603125,17z/data=!3m1!4b1!4m5!3m4!1s0x469294a6990ff3ab:0x5c3411c8e49bcdc1!8m2!3d59.4269266!4d24.7622672'),
                                builder: (context,followLink)=>GestureDetector(
                                  onTap: followLink,
                                  child: Text("Aadress: Staadioni 1, 10132 Tallinn",textAlign: TextAlign.left ,style: TextStyle(color: Color(0xFF10891a),decoration: TextDecoration.underline)),

                                ),
                            ),
                  ),
                  ),

                  ListTile( title: ElevatedButton(
                    child: Text('Tel: +372 6266888',textAlign: TextAlign.left ,style: TextStyle(color: Color(0xFF10891a),decoration: TextDecoration.underline)),
                    onPressed:(){
                      launch('tel:+3726266888');
                    })
                  ),
                  ListTile( title: ElevatedButton(
                      child: Text('Mob: +372 53066888',textAlign: TextAlign.left ,style: TextStyle(color: Color(0xFF10891a),decoration: TextDecoration.underline)),
                      onPressed:(){
                        launch('tel:+37253066888');
                      })
                  ),
                  ListTile( title: ElevatedButton(
                      child: Text('E-mail: info@ident.ee',textAlign: TextAlign.left ,style: TextStyle(color: Color(0xFF10891a),decoration: TextDecoration.underline)),
                      onPressed:(){
                        launch('mailto:info@ident.ee');
                      })
                  ),
                  ListTile( title: Text("\n\n")),
                  ListTile( title: Text("Oleme avatud:\n\nE 9.00-18.00\nT-N 8.30-19.00\nR 9.00-17.00", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold))),
                ],
            ),

    ),
    );


  }
}

