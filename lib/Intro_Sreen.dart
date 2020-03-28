import 'package:flutter/material.dart';
import 'package:zoo/main_page.dart';
import 'dart:async';

class Screen extends StatefulWidget {
  @override
  ScreenState createState() => ScreenState();
}

class ScreenState extends State<Screen> {

  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 2),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => MyStatefulWidget())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(title: Text("APP"),),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/z2.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
////        appBar: AppBar(
////          title: Text('Flutter'),
////        ),
//        body: Center(
//            child: Container(
//      decoration: BoxDecoration(
//          gradient: LinearGradient(
//              begin: Alignment.topRight,
//              end: Alignment.bottomLeft,
//              colors: [Colors.blue, Colors.red])),
//      child:
//      Image.asset('assets/images/z2.png')
////      Center(
////        child:
////        Text(
////          'Hello Gradient!',
////          style: TextStyle(
////              fontSize: 48.0, fontWeight: FontWeight.bold, color: Colors.white),
////        ),
////      ),
//    )
//        )
    );
  }
}
