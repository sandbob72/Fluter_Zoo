import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class EventPage extends StatefulWidget {
  const EventPage({Key key}) : super(key: key);

  @override
  EventPageState createState() => EventPageState();
}

class EventPageState extends State<EventPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.green[600], Colors.blue])),
//      color: Colors.red,
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
//                color: Colors.red[200],
                margin: EdgeInsets.only(top: 25),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "โชว์การแสดงของสัตว์",
                      style: TextStyle(
                          fontSize: 35,
                          fontFamily: 'Sriracha',
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )
                  ],
                )),
          ),
          Container(
              height: 500,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  Container(
                    child: FlatButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ElephantShow()),
                          );
                        },
                        padding: EdgeInsets.all(40.0),
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white,
                                      spreadRadius: 10,
                                      blurRadius: 1,
                                      offset: Offset(0, 1), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Image.asset('assets/images/Elephant_show2.jpg'),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                height: 70.0,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ElephantShow()),
                                    );
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.white,
                                        style: BorderStyle.solid,
                                        width: 5.0,
                                      ),
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: <Widget>[
                                        Center(
                                          child: Text(
                                            "การแสดงช้าง",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'Sriracha',
                                              fontSize: 36,
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 1,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )),
                  ),
                  Container(
                    child: FlatButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MonkeyShow()),
                          );
                        },
                        padding: EdgeInsets.all(40.0),
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white,
                                      spreadRadius: 10,
                                      blurRadius: 1,
                                      offset: Offset(0, 1), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Image.asset('assets/images/Monkey_show1.jpg'),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                height: 70.0,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => MonkeyShow()),
                                    );
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.white,
                                        style: BorderStyle.solid,
                                        width: 5.0,
                                      ),
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: <Widget>[
                                        Center(
                                          child: Text(
                                            "การแสดงลิง",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'Sriracha',
                                              fontSize: 36,
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 1,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )),
                  ),
                  Container(
                    child: FlatButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CrocodileShow()),
                          );
                        },
                        padding: EdgeInsets.all(40.0),
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white,
                                      spreadRadius: 10,
                                      blurRadius: 1,
                                      offset: Offset(0, 1), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Image.asset('assets/images/Crocodile_show1.jpg'),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                height: 70.0,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => CrocodileShow()),
                                    );
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.white,
                                        style: BorderStyle.solid,
                                        width: 5.0,
                                      ),
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: <Widget>[
                                        Center(
                                          child: Text(
                                            "การแสดงจระเข้",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'Sriracha',
                                              fontSize: 36,
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 1,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}

class ElephantShow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          leading: IconButton(
            icon: Icon(Icons.navigate_before,
              color: Colors.white,
              size: 35,),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text(
            "การแสดงช้าง",
            style: TextStyle(fontFamily: "Sriracha", fontSize: 30),
          ),
          centerTitle: true,
        ),
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.deepOrange, Colors.yellow])),
            height: 800,
            child: ListView(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white,
                        spreadRadius: 10,
                        blurRadius: 1,
                        offset: Offset(0, 1), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Image.asset('assets/images/Elephant_show2.jpg'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 50.0,
                      child: RaisedButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(80.0)),
                        padding: EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Colors.deepOrange, Colors.yellow],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              borderRadius: BorderRadius.circular(30.0)),
                          child: Container(
                            constraints: BoxConstraints(
                                maxWidth: 300.0, minHeight: 50.0),
                            alignment: Alignment.center,
                            child: Text(
                              "การแสดงช้าง",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white, fontFamily: "Sriracha", fontSize: 30),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        style: BorderStyle.solid,
                        width: 2.0,
                      ),
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Container(
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: AutoSizeText(
                          '   เวลาทำการแสดง 16.00น. พบกับความสนุก จากการแสดงสุดน่าตื่นตาจากช้าง ไม่ว่าจะเป็นการเตะบอล การวาดภาพโดยใช้พู่กัน และการยืนสองขา & กายกรรมช้าง',
                          style: TextStyle(fontSize: 30, fontFamily: "Sriracha"),
                          maxLines: 5,
                        ),
                      ),
                    )),
              ],
            )));
  }
}

class MonkeyShow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          leading: IconButton(
            icon: Icon(Icons.navigate_before,
              color: Colors.white,
              size: 35,),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text(
            "การแสดงลิง",
            style: TextStyle(fontFamily: "Sriracha", fontSize: 30),
          ),
          centerTitle: true,
        ),
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.deepOrange, Colors.yellow])),
            height: 800,
            child: ListView(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white,
                        spreadRadius: 10,
                        blurRadius: 1,
                        offset: Offset(0, 1), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Image.asset('assets/images/Monkey_show1.jpg'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 50.0,
                      child: RaisedButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(80.0)),
                        padding: EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Colors.deepOrange, Colors.yellow],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              borderRadius: BorderRadius.circular(30.0)),
                          child: Container(
                            constraints: BoxConstraints(
                                maxWidth: 300.0, minHeight: 50.0),
                            alignment: Alignment.center,
                            child: Text(
                              "การแสดงลิง",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white, fontFamily: "Sriracha", fontSize: 30),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        style: BorderStyle.solid,
                        width: 2.0,
                      ),
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Container(
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: AutoSizeText(
                          '    	เวลาทำการแสดงรอบเช้า 9.00น., 12.00น. และรอบบ่าย 14.30น., 16.45น. - รับความสนุกสนานและเสียหัวเราะจากความทะเล้นของเจ้าลิง พร้อมทักษะ ไม่ว่าจะเป็นการโยนบอลลงห่วง, การปั่นรถจักยาน และการบวกเลขคณิตศาสตร์ ด้วยเจ้าลิงนักแสดงชั้นแนวหน้า tony, robot และ Nisha ',
                          style: TextStyle(fontSize: 30, fontFamily: "Sriracha"),
                          maxLines: 7,
                        ),
                      ),
                    )),
              ],
            )));
  }
}

class CrocodileShow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          leading: IconButton(
            icon: Icon(Icons.navigate_before,
              color: Colors.white,
              size: 35,),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text(
            "การแสดงจระเข้",
            style: TextStyle(fontFamily: "Sriracha", fontSize: 30),
          ),
          centerTitle: true,
        ),
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.deepOrange, Colors.yellow])),
            height: 800,
            child: ListView(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white,
                        spreadRadius: 10,
                        blurRadius: 1,
                        offset: Offset(0, 1), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Image.asset('assets/images/Crocodile_show1.jpg'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 50.0,
                      child: RaisedButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(80.0)),
                        padding: EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Colors.deepOrange, Colors.yellow],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              borderRadius: BorderRadius.circular(30.0)),
                          child: Container(
                            constraints: BoxConstraints(
                                maxWidth: 300.0, minHeight: 50.0),
                            alignment: Alignment.center,
                            child: Text(
                              "การแสดงจระเข้",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white, fontFamily: "Sriracha", fontSize: 30),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        style: BorderStyle.solid,
                        width: 2.0,
                      ),
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Container(
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: AutoSizeText(
                          '   เวลาทำการแสดง 16.00น. พบกับความสนุก จากการแสดงสุดน่าตื่นตาจากช้าง ไม่ว่าจะเป็นการเตะบอล การวาดภาพโดยใช้พู่กัน และการยืนสองขา & กายกรรมช้าง',
                          style: TextStyle(fontSize: 30, fontFamily: "Sriracha"),
                          maxLines: 5,
                        ),
                      ),
                    )),
              ],
            )));
  }
}


