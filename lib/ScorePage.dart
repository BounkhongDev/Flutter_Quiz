import 'package:flutter/material.dart';
class ScorePage extends StatefulWidget {
  @override
  _ScorePageState createState() => _ScorePageState();
}

class _ScorePageState extends State<ScorePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text("ຄຳແນະນຳ"),
      ),
      body: new Center(
        child: new Text("ຄຳແນະນຳຕ່າງໆ",style: TextStyle(fontSize: 25, color: Colors.green, fontWeight: FontWeight.bold),),
      ),
      
    );
  }
}