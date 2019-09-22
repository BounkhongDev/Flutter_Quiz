
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:math/ContactPage.dart';
import 'package:math/HomePage.dart';
import 'package:math/ScorePage.dart';

void main() {
  // SystemChrome.setPreferredOrientations([
  //  DeviceOrientation.portraitUp,
  //  DeviceOrientation.portraitDown
  // ]);
  runApp(
  MyApp()
  );
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'kidsmath',
    theme: ThemeData(   
      primarySwatch: Colors.blue,
    ),

    home: Mybotton(),
    
    );
  }

}

class Mybotton extends StatefulWidget{
  @override
  _Mybotton createState() => _Mybotton();
}

class _Mybotton extends State<Mybotton>{
  int _index = 0;
  final List<Widget> _children=[
    HomePage(),
    ScorePage(),
    ContactPage(),

    
  ];

  void onTappedBar(int index){
       setState(() {
         _index = index;
       });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
      body: _children[_index],
     bottomNavigationBar:  BottomNavigationBar(

      onTap: onTappedBar,
       currentIndex: _index,

      items: [
        BottomNavigationBarItem(
       icon:  new Icon(Icons.home),
       title: new Text("ໜ້າຫຼັກ")
      ),

        BottomNavigationBarItem(
       icon:  new Icon(Icons.info),
       title: new Text("ຄຳແນະນຳ")
      ),

        BottomNavigationBarItem(
       icon:  new Icon(Icons.people),
       title: new Text("ກ່ຽວກັບພວກເຮົາ")
      ),  
      ],
    ),
    );
  } 
}