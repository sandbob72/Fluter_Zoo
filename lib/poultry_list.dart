import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class PoultryList extends StatefulWidget {
  const PoultryList({Key key}) : super(key: key);

  @override
  PoultryListState createState() => PoultryListState();
}

class PoultryListState extends State<PoultryList> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          leading: IconButton(
            icon: Icon(
              Icons.navigate_before,
              color: Colors.white,
              size: 35,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text(
            "สัตว์ปีก",
            style: TextStyle(fontFamily: "Sriracha", fontSize: 30),
          ),
          centerTitle: true,
        ),
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.green, Colors.deepOrange])),
            child: ListView(
              children: <Widget>[
                Container(
                  child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PoultryList1()),
                        );
                      },
                      padding: EdgeInsets.all(40.0),
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Image.asset('assets/images/Hornbill.jpg'),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              height: 70.0,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PoultryList1()),
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.white,
                                      style: BorderStyle.solid,
                                      width: 2.0,
                                    ),
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Center(
                                        child: Text(
                                          "สัตว์ปีก",
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
            )));
  }
}

class PoultryList1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text("Sample"),
          centerTitle: true,
        ),
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.green, Colors.deepOrange])),
//            height: 500,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/images/Hornbill.jpg',
                      width: 200,
                      height: 200,
                    ),
                  ],
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
                                colors: [Color(0xff374ABE), Color(0xff64B6FF)],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              borderRadius: BorderRadius.circular(30.0)),
                          child: Container(
                            constraints: BoxConstraints(
                                maxWidth: 300.0, minHeight: 50.0),
                            alignment: Alignment.center,
                            child: Text(
                              "นก",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
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
//                margin: EdgeInsets.all(10),
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: AutoSizeText(
                          'ssssssssssssssssss',
                          style: TextStyle(fontSize: 30),
                          maxLines: 10,
                        ),
                      ),
                    )),
              ],
            )));
  }
}

class PoultryList2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text("Sample"),
          centerTitle: true,
        ),
        body: Container(
            height: 500,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[Text('poultry2')],
                ),
                Row(
                  children: <Widget>[],
                ),
                Row(
                  children: <Widget>[],
                ),
                Row(
                  children: <Widget>[],
                ),
              ],
            )));
  }
}

class PoultryList3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text("Sample"),
          centerTitle: true,
        ),
        body: Container(
            height: 500,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[Text('poultry3')],
                ),
                Row(
                  children: <Widget>[],
                ),
                Row(
                  children: <Widget>[],
                ),
                Row(
                  children: <Widget>[],
                ),
              ],
            )));
  }
}

class PoultryList4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text("Sample"),
          centerTitle: true,
        ),
        body: Container(
            height: 500,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[Text('poultry4')],
                ),
                Row(
                  children: <Widget>[],
                ),
                Row(
                  children: <Widget>[],
                ),
                Row(
                  children: <Widget>[],
                ),
              ],
            )));
  }
}
