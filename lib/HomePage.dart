import 'package:flutter/material.dart';
import 'package:math/Quiz3.dart';
import 'package:math/Year3.dart';
import 'package:math/Year4.dart';
import 'package:math/Year5.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("ເລືອກຫ້ອງຮຽນ"),
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
                  Route route =
                      MaterialPageRoute(builder: (context) => Year3());
                  Navigator.push(context, route);
                },
                splashColor: Colors.blue,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset('images/cat.jpg',
                      fit: BoxFit.cover,height: 142.0,
                      ),
                      
                      // Icon(
                      //   Icons.person_pin,
                      //   size: 70.0,
                      //   color: Colors.blue,
                      // ),
                      Text("ວິຊາ ຄະນິດສາດ ປ3",
                          style: new TextStyle(fontSize: 18.0)),
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
                      MaterialPageRoute(builder: (context) => Year4());
                  Navigator.push(context, route);
                },
                splashColor: Colors.blue,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.school,
                        size: 70.0,
                        color: Colors.orange,
                      ),
                      Text("ວິຊາ ຄະນິດສາດ ປ4",
                          style: new TextStyle(fontSize: 18.0)),
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
                      MaterialPageRoute(builder: (context) => Year5());
                  Navigator.push(context, route);
                },
                splashColor: Colors.blue,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.local_library,
                        size: 70.0,
                        color: Colors.red,
                      ),
                      Text("ວິຊາ ຄະນິດສາດ ປ5",
                          style: new TextStyle(fontSize: 18.0)),
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

