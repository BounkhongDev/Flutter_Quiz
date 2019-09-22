import 'package:flutter/material.dart';
import 'package:math/InforYear3.dart';
import 'package:math/Quiz3.dart';

class Year3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("ວິຊາ ຄະນິດສາດ ປ3"),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.blue[100],
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Route route = MaterialPageRoute(
                      builder: (context) => InforYear3());
                  Navigator.push(context, route);
                },
                splashColor: Colors.blue,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.question_answer,
                        size: 70.0,
                        color: Colors.blue,
                      ),
                      Text("ໃຈຄວາມ", style: new TextStyle(fontSize: 18.0)),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Route route =
                      MaterialPageRoute(builder: (context) => Quiz3());
                  Navigator.push(context, route);
                },
                splashColor: Colors.blue,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.help,
                        size: 70.0,
                        color: Colors.red,
                      ),
                      Text("ບົດທົດສອບ", style: new TextStyle(fontSize: 18.0)),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}