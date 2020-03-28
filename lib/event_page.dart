import 'package:flutter/material.dart';


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
      child: Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          children: <Widget>[
            Image.asset('assets/images/pic_home.png')
          ],
        ),
      ),
    );
  }
}