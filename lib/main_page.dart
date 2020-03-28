import 'package:flutter/material.dart';
import 'package:zoo/animal_page.dart';
import 'package:zoo/event_page.dart';
import 'package:zoo/home_page.dart';
//void main() => runApp(MyApp());

/// This Widget is the main application widget.
//class MyApp extends StatelessWidget {
//  static const String _title = 'Flutter Code Sample';
//
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: _title,
//      home: MyStatefulWidget(),
//    );
//  }
//}




class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}



class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  final List<Widget> _widgetOptions = [
    HomePage(
      key: PageStorageKey('Page1'),
    ),
    AnimalPage(
      key: PageStorageKey('Page2'),
    ),
    EventPage(
      key: PageStorageKey('Page3'),
    )
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        title: const Text('BottomNavigationBar Sample'),
//      ),
      body: Container(
        child: _widgetOptions.elementAt(_selectedIndex),
        color: Colors.white,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 25,),
            title: Text('Home', style: TextStyle(fontFamily: 'Sriracha', fontSize: 20),),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pets, size: 25,),
            title: Text('Animal', style: TextStyle(fontFamily: 'Sriracha', fontSize: 20),),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_active, size: 25,),
            title: Text('Event', style: TextStyle(fontFamily: 'Sriracha', fontSize: 20),),
          ),

        ],
        backgroundColor: Colors.blue,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber,
        onTap: _onItemTapped,
      ),
    );
  }
}



//class SecondPage extends StatelessWidget{
//  const SecondPage({Key key}) : super(key: key);
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return Container(
//      child: Image.asset('assets/images/z.jpg'),
//    );
//  }
//}
//
//class ThirdPage extends StatelessWidget{
//  const ThirdPage({Key key}) : super(key: key);
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return Container(
//      child: Image.asset('assets/images/z.jpg'),
//    );
//  }
//}