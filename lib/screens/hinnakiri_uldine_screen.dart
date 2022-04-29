import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:i_dent/UI/DrawerOnly.dart';
import 'package:i_dent/UI/hinnakiri_drawer.dart';

import '../main.dart';

class hinnakiri_uldine_screen extends StatefulWidget {
  final String title;

  const hinnakiri_uldine_screen({Key key, this.title}) : super(key: key);
  @override
  hinnakiri_uldine_screenState createState() => hinnakiri_uldine_screenState();
  Widget build(BuildContext context) {
  }
}

class hinnakiri_uldine_screenState extends State<hinnakiri_uldine_screen> {

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
                    builder: (ctxt) => new Hinnakiri_drawer()));
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
      body: new Center(
        child: new ListView(
          children: [
            ListTile( leading: Text("Kliiniku visiidi baashind ", textAlign: TextAlign.left) ,
                      title: Text("20.00€",textAlign: TextAlign.right)),
            ListTile( leading: Text("Arsti konsultatsioon kuni 30 min. ", textAlign: TextAlign.left) ,
                title: Text("30.00€",textAlign: TextAlign.right)),
            ListTile( leading: Text("Kirjaliku raviplaani  koostamine ", textAlign: TextAlign.left) ,
                title: Text("35.00€",textAlign: TextAlign.right)),
            ListTile( leading: Text("Pinnaanesteesia ", textAlign: TextAlign.left) ,
                title: Text("5.00€",textAlign: TextAlign.right)),
            ListTile( leading: Text("Injektsioonanesteesia ", textAlign: TextAlign.left) ,
                title: Text("15.00€",textAlign: TextAlign.right)),
            ListTile( leading: Text('Kanali avamine ja töötlemine\n(vastavalt keerukusele) ', textAlign: TextAlign.left) ,
                title: Text("al 60.00€",textAlign: TextAlign.right)),
            ListTile( leading: Text("Ravimi asetamine juurekanalisse ", textAlign: TextAlign.left) ,
                title: Text("al 30.00€",textAlign: TextAlign.right)),
            ListTile( leading: Text("Juurekanali täitmine ", textAlign: TextAlign.left) ,
                title: Text("al 51.00€",textAlign: TextAlign.right)),
            ListTile( leading: Text("Juurekanali täitmine\nkuumobturatsiooni meetodil ", textAlign: TextAlign.left) ,
                title: Text("al 69.00€",textAlign: TextAlign.right)),
            ListTile( leading: Text("Suusisene digitaalröntgenülesvõte\n(1 piirkond) ", textAlign: TextAlign.left) ,
                title: Text("15.00€",textAlign: TextAlign.right)),
            ListTile( leading: Text("Digitaalpanoraamröntgenülesvõte ", textAlign: TextAlign.left) ,
                title: Text("30.00€",textAlign: TextAlign.right)),
            ListTile( leading: Text("3D-röntgenülesvõte ", textAlign: TextAlign.left) ,
                title: Text("al 55.00€",textAlign: TextAlign.right)),
            ListTile( leading: Text("Mikroskoobi kasutamine ravivisiidil ", textAlign: TextAlign.left) ,
                title: Text("45.00€",textAlign: TextAlign.right)),
            ListTile( leading: Text("Klaasionomeertäidis ", textAlign: TextAlign.left) ,
                title: Text("al 45.00€",textAlign: TextAlign.right)),
            ListTile( leading: Text("Valguskõvastuv täidis ", textAlign: TextAlign.left) ,
                title: Text("al 10.00€",textAlign: TextAlign.right)),
            ListTile( leading: Text("Hambakivi eemaldamine (üks hammas) ", textAlign: TextAlign.left) ,
                title: Text("4.50€",textAlign: TextAlign.right)),
            ListTile( leading: Text("Hammaste soodatöötlus (pärlipesu)\n– kaks hambakaart ", textAlign: TextAlign.left) ,
                title: Text("95.00€",textAlign: TextAlign.right)),
            ListTile( leading: Text("Koduvalgenduse komplekt ", textAlign: TextAlign.left) ,
                title: Text("240.00€",textAlign: TextAlign.right)),
            ListTile( leading: Text("Zoom valgendus\n(professionaalne valgendamine) ", textAlign: TextAlign.left) ,
                title: Text("260.00€",textAlign: TextAlign.right)),
            ListTile( leading: Text("Visiidile etteteatamata mittetulemine ", textAlign: TextAlign.left) ,
                title: Text("35.00€",textAlign: TextAlign.right)),

          ],
        ),
      ),
    );
  }


}