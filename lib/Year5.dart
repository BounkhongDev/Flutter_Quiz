
import 'package:flutter/material.dart';
import 'package:math/InforYear5.dart';
class Year5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("ວິຊາ ຄະນິດສາດ ປ5"),
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
                      builder: (context) => InforYear5());
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
                  // Route route =
                  //     MaterialPageRoute(builder: (context) => null);
                  // Navigator.push(context, route);
                },
                splashColor: Colors.blue,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.help,
                        size: 70.0,
                        color: Colors.yellow,
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
