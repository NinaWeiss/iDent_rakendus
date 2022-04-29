import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:i_dent/screens/HiielaidScreen.dart';
import 'package:i_dent/screens/RoometsScreen.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_player/video_player.dart';

import 'KaubaScreen.dart';

class home extends StatefulWidget {
  home() : super();

  @override
  homeState createState() => homeState();
}

class homeState extends State<home> {
  //
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {

    _controller = VideoPlayerController.asset(
        'assets/videos/Suukool.ee-Miks_peab_k2ima_kord_aastas_hambaarsti_juures.mp4');
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(false);
    _controller.setVolume(5.0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext ctxt) {
    return Scaffold(

      body: new Center(
        child: new ListView(
          children: [
            Image.asset('assets/images/iDent-hambaravi-avaleht.jpg',
              width: 600.0,
              height: 400.0,
              fit: BoxFit.cover,),
            ListTile(title: Text("\n")),
            ListTile( title: Text("Kauni naeratuse nimel\n", textAlign: TextAlign.center, style: TextStyle( fontSize: 24.0 ,fontWeight: FontWeight.bold, color: Color(0xFF78BE20)))),
            ListTile( title: Text("Pakume oma patsientidele innovaatilist ja individuaalset hambaraviteenust kasutades parimaid tänapäevaseid tehnoloogiaid ja tehnikat.\n")),
            ListTile( title: Text("Hambahaiguste diagnostika",style: TextStyle( fontSize: 16.0 ,fontWeight: FontWeight.bold, color: Color(0xFF78BE20)))),
            ListTile( title: Text("Meil saab teostada minimaalse kiirgusdoosiga panoraamülesvõtteid, 3D pilte ja igas hambaravikabinetis on kiire ja mugav röntgenseade digitaalsete kohtülesvõtete tegemiseks.\nSamuti pakume panoraam-, 3D ja külgülesvõtete tegemise võimalust kolleegide poolt suunatud klientidele, kellele anname röntgenpildi digitaalse salvestuse kaasa.\n")),
            ListTile( title:FutureBuilder(
              future: _initializeVideoPlayerFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return Center(
                    child: AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: VideoPlayer(_controller),
                    ),
                  );
                } else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),),
            ListTile( title:FloatingActionButton(
              onPressed: () {
                setState(() {
                  if (_controller.value.isPlaying) {
                    _controller.pause();
                  } else {
                    _controller.play();
                  }
                });
              },
              child:
              Icon(_controller.value.isPlaying ? Icons.pause : Icons.play_arrow),
            ),
            ),
            ListTile(title: Text("\n")),
          ],
        ),
      ),
    );
  }
}