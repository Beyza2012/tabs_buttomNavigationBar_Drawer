import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uygulama5/sayfa1.dart';
import 'package:uygulama5/sayfa2.dart';

class Sayfa3 extends StatefulWidget {
  const Sayfa3({super.key});

  @override
  State<Sayfa3> createState() => _Sayfa3State();
}

class _Sayfa3State extends State<Sayfa3> {
  var sayfaListesi=[Sayfa1(),Sayfa2(),Sayfa3()];
  int secilenIndeks = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer"),
      ),
      body: sayfaListesi[secilenIndeks],
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
           DrawerHeader(child: Text("Başlık Tasarımı",style: TextStyle(color: Colors.white,fontSize: 30),),
           decoration: BoxDecoration(
             color: Colors.deepPurple,
           ),
           ),
            ListTile(
              title: Text("Sayfa Bir"),
              onTap: (){
              setState(() {
                secilenIndeks = 0;
              });
              Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Sayfa İki",style: TextStyle(color: Colors.pink),),
              onTap: (){
                setState(() {
                  secilenIndeks = 1;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Sayfa Üç"),
              leading: Icon(Icons.looks_3),
              onTap: (){
                setState(() {
                  secilenIndeks = 2;
                });
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
