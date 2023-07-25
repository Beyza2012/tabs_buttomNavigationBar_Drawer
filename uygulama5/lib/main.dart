import 'package:flutter/material.dart';
import 'package:uygulama5/sayfa1.dart';
import 'package:uygulama5/sayfa2.dart';
import 'package:uygulama5/sayfa3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Tabs / NavigationBar / Drawer'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
          bottom: TabBar(
        tabs: [
          Tab(text: "1",),
          Tab(icon: Icon(Icons.looks_two,color: Colors.cyanAccent,),),
          Tab(text: "Üç",icon: Icon(Icons.looks_3,),)
        ],
            indicatorColor: Colors.pink,
            labelColor: Colors.orange,
          ),
        ),
        body: TabBarView(
    children: [
              Sayfa1(),
              Sayfa2(),
              Sayfa3(),
    ],
    ),
    ));
  }
}
