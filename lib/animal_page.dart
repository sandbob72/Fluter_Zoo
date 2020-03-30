import 'package:flutter/material.dart';
import 'package:zoo/poultry_list.dart';
import 'package:zoo/aqua_list.dart';
import 'package:zoo/reptile_list.dart';
import 'package:zoo/mammal_list.dart';

class AnimalPage extends StatefulWidget {
  const AnimalPage({Key key}) : super(key: key);

  @override
  AnimalPageState createState() => AnimalPageState();
}

class AnimalPageState extends State<AnimalPage> {
  var image1 = 'Poultry1.jpg';
  var title1 = 'สัตว์ปีก';
  var image2 = 'aqua1.jpg';
  var title2 = 'สัตว์น้ำ';
  var image3 = 'Reptile1.jpg';
  var title3 = 'สัตว์เลื้อยคลาน';
  var image4 = 'mammal1.jpg';
  var title4 = 'สัตว์เลี้ยงลูกด้วยน้ำ';

  Widget animalCategory (t,img,list) {
   return Container(
     child: FlatButton(
         onPressed: () {
           Navigator.push(
             context,
             MaterialPageRoute(
                 builder: (context) => list),
           );
         },
         padding: EdgeInsets.all(40.0),
         child: Container(
           child: Column(
             children: <Widget>[
               Container(
                 margin: EdgeInsets.all(0),
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
                 child:  Image.asset('assets/images/$img'),
               ),
               Container(
                 margin: EdgeInsets.only(top: 20),
                 height: 70.0,
                 child: GestureDetector(
                   onTap: () {
                     Navigator.push(
                       context,
                       MaterialPageRoute(
                           builder: (context) => list),
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
                             t,
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
   );
  }

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
//                color: Colors.red[200],
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
                  animalCategory(title1,image1,PoultryList()),
                  animalCategory(title2,image2,AquaList()),
                  animalCategory(title3,image3,ReptileList()),
                  animalCategory(title4,image4,MammalList()),
                ],
              ))
        ],
      ),
    );
  }
}
