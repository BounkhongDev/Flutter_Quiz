import 'package:flutter/material.dart';
class ContactPage extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text("ກ່ຽວກັບພວກເຮົາ"),
      ),
      body: new Center(
        child: new Text("ກ່ຽວກັບພວກເຮົາ",style: TextStyle(fontSize: 25, color: Colors.red, fontWeight: FontWeight.bold),),
      ),
      
    );
  }
}