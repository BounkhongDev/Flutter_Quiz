import 'package:flutter/material.dart';
class InforYear4 extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<InforYear4> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text("ໃຈຄວາມ"),
      ),
      body: new Center(
        child: new Text("ໃຈຄວາມ",style: TextStyle(fontSize: 25, color: Colors.red, fontWeight: FontWeight.bold),),
      ),
      
    );
  }
}