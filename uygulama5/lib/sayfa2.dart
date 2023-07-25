import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uygulama5/sayfa1.dart';
import 'package:uygulama5/sayfa3.dart';

class Sayfa2 extends StatefulWidget {
  const Sayfa2({super.key});

  @override
  State<Sayfa2> createState() => _Sayfa2State();
}

class _Sayfa2State extends State<Sayfa2> {
  var sayfaListesi=[Sayfa1(),Sayfa2(),Sayfa3()];
  int secilenIndeks = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: sayfaListesi[secilenIndeks],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.looks_one),label: "Bir"),
          BottomNavigationBarItem(icon: Icon(Icons.looks_two),label: "İki"),
          BottomNavigationBarItem(icon: Icon(Icons.looks_3),label: "Üç"),
        ],
        backgroundColor: Colors.deepPurple,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.white,
        currentIndex: secilenIndeks,
        onTap: (indeks){
          setState(() {
            secilenIndeks=indeks;
          });
        },
      ),

    );
  }
}
