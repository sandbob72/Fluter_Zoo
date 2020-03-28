import 'package:flutter/material.dart';
import 'package:zoo/poultry_list.dart';

class AnimalPage extends StatefulWidget {
  const AnimalPage({Key key}) : super(key: key);

  @override
  AnimalPageState createState() => AnimalPageState();
}

class AnimalPageState extends State<AnimalPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.red, Colors.blue])),
//      color: Colors.red,
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
                color: Colors.red[200],
                margin: EdgeInsets.only(top: 25),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Animals Category",
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
                                builder: (context) => PoultryList()),
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
                                          builder: (context) => PoultryList()),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                  Container(
                    child: FlatButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PoultryList()),
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
                                          builder: (context) => PoultryList()),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
              ))
        ],
      ),
    );
  }
}
