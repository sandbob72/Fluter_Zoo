import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zoo/map_page.dart';

var titleZoo = Container(
  height: 50,
  margin: EdgeInsets.only(bottom: 30),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text(
        "Welcome to PK Zoo",
        style: TextStyle(fontFamily: 'Sriracha', fontSize: 40),
      ),
    ],
  ),
);

var imageZoo = Container(
  height: 250,
  child: FlatButton(
      onPressed: null,
      padding: EdgeInsets.all(0.0),
      child: Image.asset('assets/images/pic_home.png')),
);

var titleTime = Container(
  padding: EdgeInsets.all(20),
  height: 200,
  child: Column(
    children: <Widget>[
      Container(
        margin: EdgeInsets.only(bottom: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 20),
              child: Column(
                children: <Widget>[
                  Text(
                    "เวลาทำการ",
                    style: TextStyle(fontFamily: 'Sriracha', fontSize: 16),
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "วันจันทร์-วันอาทิตย์ : 8.30-18.00",
                    style: TextStyle(fontFamily: 'Sriracha', fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 30),
              child: Column(
                children: <Widget>[
                  Text(
                    "ราคาค่าเข้าชม",
                    style: TextStyle(fontFamily: 'Sriracha', fontSize: 16),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "ต่างชาติ ผู้ใหญ่ ",
                    style: TextStyle(fontFamily: 'Sriracha', fontSize: 16),
                  ),
                  Text(
                    "ต่างชาติ เด็ก  ",
                    style: TextStyle(fontFamily: 'Sriracha', fontSize: 16),
                  ),
                  Text(
                    "ไทย ผู้ใหญ่   ",
                    style: TextStyle(fontFamily: 'Sriracha', fontSize: 16),
                  ),
                  Text(
                    "ไทย เด็ก    ",
                    style: TextStyle(fontFamily: 'Sriracha', fontSize: 16),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "- 400 ฿",
                    style: TextStyle(fontFamily: 'Sriracha', fontSize: 16),
                  ),
                  Text(
                    "- 200 ฿",
                    style: TextStyle(fontFamily: 'Sriracha', fontSize: 16),
                  ),
                  Text(
                    "- 80  ฿",
                    style: TextStyle(fontFamily: 'Sriracha', fontSize: 16),
                  ),
                  Text(
                    "- 30  ฿",
                    style: TextStyle(fontFamily: 'Sriracha', fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    ],
  ),
);
var mapSection = Container(
  height: 250,
  color: Colors.yellow,
);

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.amber, Colors.blue])
      ),
      child: ListView(
        children: <Widget>[
          titleZoo,
          imageZoo,
          titleTime,
          Column(
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Map()),
                  );
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0)),
                padding: EdgeInsets.all(0.0),
                child: Ink(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xff374ABE), Color(0xff64B6FF)],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.circular(30.0)),
                  child: Container(
                    constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                    alignment: Alignment.center,
                    child: Text(
                      "แผนที่ PK Zoo",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontFamily: 'Sriracha', fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );

  }
}
