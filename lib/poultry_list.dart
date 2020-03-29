import 'package:flutter/cupertino.dart';
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
                              child:  Image.asset('assets/images/Poultry1.jpg'),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 20),
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
                                      width: 5.0,
                                    ),
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Center(
                                        child: Text(
                                          "นกแก้วมาคอร์",
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
                              builder: (context) => PoultryList2()),
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
                              child:  Image.asset('assets/images/Poultry2.jpg'),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              height: 70.0,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PoultryList2()),
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
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Center(
                                        child: Text(
                                          "นกเงือก",
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
                              builder: (context) => PoultryList3()),
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
                              child:  Image.asset('assets/images/Poultry3.jpg'),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              height: 70.0,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PoultryList3()),
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
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Center(
                                        child: Text(
                                          "นกยูง",
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
                              builder: (context) => PoultryList4()),
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
                              child:  Image.asset('assets/images/Poultry4.jpg'),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              height: 70.0,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PoultryList4()),
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
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Center(
                                        child: Text(
                                          "เหยี่ยว",
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
                              builder: (context) => PoultryList5()),
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
                              child:  Image.asset('assets/images/Poultry5.jpg'),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              height: 70.0,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PoultryList5()),
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
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Center(
                                        child: Text(
                                          "นกกระจอกเทศ",
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
          backgroundColor: Colors.deepOrange,
          leading: IconButton(
            icon: Icon(Icons.navigate_before,
              color: Colors.white,
              size: 35,),
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
                    colors: [Colors.deepOrange, Colors.yellow])),
            height: 800,
            child: ListView(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(25),
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
                  child:  Image.asset('assets/images/Poultry1.jpg'),
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
                              "นกแก้วมาคอร์",
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
                          '         เป็นสัตว์ปีกอยู่ในวงศ์ Psittacidae มาคอว์จัดเป็นนกในตระกูลปากขอที่มีขนาดใหญ่ นิยมเลี้ยงกันมากเนื่องจากมีสีสันที่สวยงาม เชื่อง และสามารถพูดเลียนเสียงคนได้ มาคอว์ถือเป็นนกแก้วที่มีขนาดใหญ่ที่สุด มีถิ่นกำเนิดในประเทศเม็กซิโกและทวีปอเมริกาใต้ มีสีสันสวยงาม มีเสียงร้องที่ดังมากจะงอยปากจะใหญ่เป็นพิเศษ เหนือปากด้านบนจะมีสีขาวเส้นเล็กๆ คาดระหว่างปากกับหัว บนหัวมีขนสีเขียวสดและสีฟ้า ดวงตามีขนเป็นลายเส้นดำ 4-5 เส้น ขนบริเวณคอจนถึงหน้าอกเป็นสีเหลืองเข้มและขนหางมีสีแดงสด ขาสั้นใหญ่ แข็งแรง ขนที่ปีกบางทีก็เป็นสีฟ้าและสีเหลืองหรือสีเขียวเหลือง ขนาดของนกแก้วมาคอว์มีขนาดตั้งแต่ 32-35 นิ้ว',
                          style: TextStyle(fontSize: 30, fontFamily: "Sriracha"),
                          maxLines: 12,
                        ),
                      ),
                    ),
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
                        '    อาหารของมาคอว์คือ ผลไม้และเมล็ดธัญพืช ชอบอยู่กันเป็นฝูงขนาดใหญ่ ในฤดูผสมพันธุ์จะจับคู่กันแบบคู่ใครคู่มัน '
                            'และไปสร้างรังตามต้นไม้ใหญ่เพื่อวางไข่ วางไข่ครั้งละ 3-4 ฟอง ใช้เวลาฟักไข่ 30-35 วัน ขนของลูกนกจะขึ้นหลังจาก 3 สัปดาห์และขึ้นจนเต็มตัวและมีสีสันสวยงาม '
                            'ลูกนกจะแข็งแรงเต็มที่เมื่ออายุสามเดือน ในระหว่างที่ยังเล็กต้องอาศัยอาหารจากแม่นกที่นำมาป้อน โดยจะใช้ปากจิกกินอาหารจากปากแม่ของมันจนกระทั่งลูกนกสามารถช่วยตนเองได้ '
                            'และในที่สุดมันก็จะบินและหาอาหารเองโดยไม่ต้องอาศัยพ่อแม่อีกต่อไป',
                         style: TextStyle(fontSize: 30, fontFamily: "Sriracha"),
                        maxLines: 10,
                      ),
                    ),
                  ),
                ),
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

class PoultryList5 extends StatelessWidget {
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
                  children: <Widget>[Text('poultry5')],
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
