import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class AquaList extends StatefulWidget {
  const AquaList({Key key}) : super(key: key);

  @override
  AquaListState createState() => AquaListState();
}

class AquaListState extends State<AquaList> {
  var image1 = 'aqua1.jpg';
  var title1 = 'ปลาการ์ตูน';
  var image2 = 'aqua2.jpg';
  var title2 = 'หมึกกล้วย';
  var image3 = 'aqua3.jpg';
  var title3 = 'กุ้งมังกร';
  var image4 = 'aqua4.jpg';
  var title4 = 'ปลาไหลหูดำ';
  var image5 = 'aqua5.jpg';
  var title5 = 'ดาวทะเล';

  Widget Aqua(t, img, list) {
    return Container(
      child: FlatButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => list),
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
                  child: Image.asset('assets/images/$img'),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 70.0,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => list),
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
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo[500],
          leading: IconButton(
            icon: Icon(
              Icons.navigate_before,
              color: Colors.white,
              size: 35,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text(
            "สัตว์น้ำ",
            style: TextStyle(fontFamily: "Sriracha", fontSize: 30),
          ),
          centerTitle: true,
        ),
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.indigo[500], Colors.lightBlueAccent[100]])),
            child: ListView(
              children: <Widget>[
                Aqua(title1, image1, AquaList1()),
                Aqua(title2, image2, AquaList2()),
                Aqua(title3, image3, AquaList3()),
                Aqua(title4, image4, AquaList4()),
                Aqua(title5, image5, AquaList5()),
              ],
            )));
  }
}

var imageDetailp1 = 'aqua1.jpg';
var titleDetailp1 = 'ปลาการ์ตูน';
var Paragraph1p1 = '         ลำตัวมีสีส้มเข้ม มีแถบสีขาว 3 แถบ พาดบริเวณส่วนหัว ลำตัวและบริเวณหาง ขอบของแถบสีขาวเป็นสีดำ ขอบนอกของครีบเป็นสีขาวและขอบในเป็นสีดำ อาศัยในที่ลึก ตั้งแต่ 1-15 เมตร ขนาดตัวโตที่สุดประมาณ 10 เซนติเมตร อาศัยอยู่กับดอกไม้ทะเลชนิด Heteractis magnifica และ Stichodactyla gigantea เป็นต้น ในดอกไม้ทะเลแต่ละกออาจพบปลาการ์ตูนชนิดนี้อยู่ด้วยกัน 6-8 ตัว ปลาการ์ตูนส้มขาวพบได้บ่อยที่สุดในทะเลอันดามัน อ่าวไทยพบได้ที่เกาะโลซิน จังหวัดนราธิวาส อาศัยอยู่เป็นครอบครัวใหญ่';
var Paragraph2p1 = '         ทั้งนี้ ปลาการ์ตูน ทั้ง 7 ชนิด ที่พบในประเทศไทย สามารถที่จะผสมพันธุ์และวางไข่ในตู้เลี้ยงได้ทุกชนิด การเพาะพันธุ์ ปลาการ์ตูน นั้น ต้องเริ่มจากการจับคู่พ่อ-แม่พันธุ์ที่จะผสมพันธุ์วางใข่ เพศของปลาการ์ตูนนั้นไม่สามารถบอกได้จากลักษณะภายนอก อีกทั้ง ปลาการ์ตูน สามารถที่จะเปลี่ยนเพศได้ โดยเพศของ ปลาการ์ตูน จะถูกกำหนดโดยโครงสร้างของสังคม และเมื่อเปลี่ยนเป็นเพศเมียแล้ว จะไม่สามารถกลับมาเป็นเพศผู้ได้อีก ทำให้การจับคู่ ปลาการ์ตูน มีความสลับซับซ้อนมาก';

var imageDetailp2 = 'aqua2.jpg';
var titleDetailp2 = 'หมึกกล้วย';
var Paragraph1p2 = '         หมึกกล้วย เป็นหมึกที่มีรูปร่างเพรียวยาว ภายในลำตัวมีแคลเซียมแข็งลักษณะโปร่งใส เรียกว่า เพน (Pen) ที่มีขนาดเล็กและบางกว่าลิ้นทะเลที่เป็นแคลเซียมแข็งเช่นเดียวกันในกลุ่มหมึกกระดอง หมึกกล้วยมีรูปร่างเรียวยาว ลำตัวกลม มีระยางค์เหมือนครีบเป็นรูปสามเหลี่ยมอยู่ทางด้านซ้ายและขวา มีหนวดทั้งหมด 10 หนวด และจะมีอยู่คู่หนึ่งที่ยาวกว่าหนวดอื่น ๆ ใช้สำหรับหยิบจับอาหาร เรียกว่าเป็นหนวดล่าเหยื่อ หรือหนวดจับ โดยหนวดอื่น ๆ นั้นจะใช้สำหรับช่วยเพื่อไม่ให้อาหารหลุดไป ก่อนที่จะกัดกินเข้าปาก';
var Paragraph2p2 = '         หมึกกล้วย เป็นสัตว์ที่เปลี่ยนสีลำตัวได้อย่างรวดเร็วมาก โดยใช้การบีบรัดของเม็ดสี ตั้งแต่สีแดง น้ำเงิน และเขียว โดยทั่วไปแล้ว หมึกกล้วยเมื่ออยู่ในทะเลจะมีลำตัวสีน้ำเงินเพื่อให้กลมกลืนไปกับสภาพของน้ำทะเล แต่เมื่อถูกจับขึ้นมาแล้วหรือขึ้นมาใกล้ ๆ กับผิวน้ำ จะเปลี่ยนสีตัวเองเป็นสีแดงเข้ม อันเนื่องจากในท้องทะเล สเปคตรัมจากแสงอาทิตย์เมื่อผ่านทะลุไปยังท้องทะเล แสงสีแดงจะเป็นสีแรกที่ถูกดูดกลืนหายไป ดังนั้นด้วยทัศนวิสัยการมองเห็นรวมทั้งสายตาของมนุษย์ด้วย จึงจะเห็นสภาพทั่วไปของท้องทะเลเป็นสีน้ำเงินคราม หรือสีม่วงเข้ม เมื่อหมึกสายถูกนำตัวขึ้นมาใกล้ผิวน้ำ การมองเห็นของตัวหมึกจะเห็นเป็นสีแดง จึงเปลี่ยนสีลำตัวเป็นสีแดงเพื่อการพรางตัว';

var imageDetailp3 = 'aqua3.jpg';
var titleDetailp3 = 'กุ้งมังกร';
var Paragraph1p3 = '         เป็นกุ้งที่มีขนาดใหญ่ โดยเฉพาะส่วนหัวที่มีขนาดใหญ่ และมีลวดลายและสีสันสวยงาม มีลำตัวรูปทรงกระบอก หนวดคู่ที่ 6 ยาวกว่าความยาวของลำตัวมาก โคนหนวดคู่ที่สองไม่อยู่ติดกัน บนแผ่นกลางหนวดมีหนามขนาดใหญ่อยู่ปลายสุด 9 คู่ อยู่ตรงแนวกลางของโคนหนวดคู่ที่ 5 โคนละ 3หนาม ใช้สำหรับป้องกันดวงตา ไม่มีก้ามเหมือนกุ้งจำพวกอื่น ปล้องท้องเรียบไม่มีร่องขวางกลางปล้อง ขอบท้ายของปล้องท้องมีลายสีครีมขวางทุกปล้อง หางลักษณะแผ่เป็นหางพัด ';
var Paragraph2p3 = '         กุ้งมังกร จัดเป็นกุ้งขนาดใหญ่ที่นิยมในการบริโภคอย่างมากเช่นเดียวกับล็อบสเตอร์ ซึ่งเป็นกุ้งต่างวงศ์กัน สามารถบริโภคได้ทั้งสดและผ่านการทำอาหาร จัดว่าเป็นอาหารทะเลที่มีราคาสูง จึงมีการเพาะเลี้ยงในเชิงพาณิชย์ โดบประเทศที่ประสบความสำเร็จเพาะฟักกุ้งมังกรได้แก่ ประเทศญี่ปุ่นและเท่านั้น ส่วนในประเทศไทยการเลี้ยงกุ้งมังกรในเชิงพาณิชย์ยังไม่ประสบความสำเร็จเนื่องจากในระยะเวลาในการเป็นวัยอ่อนนาน ไม่คุ้มทุน จึงทำได้แค่เพาะเลี้ยงให้เจริญเติบโตขึ้นจากกุ้งที่จับได้จากธรรมชาติเท่านั้น โดยจะทำการเลี้ยงไว้ในกระชังในทะเล และในน่านน้ำไทยนั้นฝั่งทะเลอันดามันจะพบกุ้งมังกรที่มากกว่าและหลากหลายชนิดมากกว่าอ่าวไทย เนื่องจากความอุดมสมบูรณ์มีมากกว่า';

var imageDetailp4 = 'aqua4.jpg';
var titleDetailp4 = 'ปลาไหลหูดำ';
var Paragraph1p4 = '         ปลาไหลหูดำอยู่ในวงศ์ปลาตูหนา (Anguilidae) มีรูปร่างอ้วนป้อม ลักษณะโดยทั่วไปเหมือนปลาสะแงะ (A. bengalensis) ซึ่งอยู่ในวงศ์และสกุลเดียวกัน แต่ปลาตูหนามีรูปร่างที่เล็กกว่า ครีบอกของปลาตูหนามีสีคล้ำ ในปลาโตเต็มวัยครีบหลังและครีบก้นมีสีคล้ำด้วยเช่นกัน จึงเป็นที่มาของชื่อว่า ปลาไหลหูดำ ลำตัวสีน้ำตาลอ่อนไม่มีลวดลาย ใต้ท้องสีขาว ขนาดโตเต็มที่ได้ 1.5 เมตร ';
var Paragraph2p4 = '         ในประเทศไทยพบได้ตั้งแต่ภาคใต้ฝั่งตะวันตกแถบริมชายฝั่งอันดามัน เรื่อยไปจนถึงประเทศมาเลเซียและอินโดนีเซีย และในภาคตะวันตกในชายแดนที่ติดกับประเทศพม่า เช่น จังหวัดตาก, แม่ฮ่องสอน เป็นต้น โดยชาวกระเหรียงเรียกปลาชนิดนี้ว่า "หย่าที" ในภูมิภาคเอเชียตะวันตกพบได้ตั้งแต่พม่า บังคลาเทศ จนถึงอินเดีย โดยปลาที่พบในประเทศแถบนี้จะเป็นสายพันธุ์ย่อยที่เรียกว่า A. b. pacifica ส่วนปลาที่พบในแถบเอเชียตะวันออกมีชื่อเรียกว่า A. b. bicolor ปลาตูหนามีพฤติกรรมจะกลับไปผสมพันธุ์และวางไข่แถบป่าชายเลนหรือปากแม่น้ำ ลูกปลาแรกเกิดมีลำตัวใสเหมือนวุ้นเส้น มีสีแดงเรื่อ จากนั้นเมื่อโตขึ้นจะค่อยอพยพว่ายทวนน้ำมาสู่แหล่งน้ำจืด ซึ่งบางครั้งอาจพบได้ไกลถึงลำธารน้ำตกบนภูเขา';

var imageDetailp5 = 'aqua5.jpg';
var titleDetailp5 = 'ดาวทะเล';
var Paragraph1p5 = '         เป็นสัตว์ทะเลไม่มีกระดูกสันหลัง ที่อยู่ในชั้น Asteroidea ลักษณะทั่วไป มีลำตัวแยกเป็นห้าแฉกคล้ายรูปดาวเรียกว่า แขน ส่วนกลาง มีลักษณะเป็นจานกลม ด้านหลังมีตุ่มหินปูน ขนาดเล็กกระจายอยู่ทั่วไป มีปากอยู่ด้านล่างบริเวณ จุดกึ่งกลางของ ลำตัว ใต้แขนแต่ละข้างมีหนวดสั้น ๆ เรียงตามส่วนยาว ของแขนเป็นคู่ ๆ มีลักษณะเป็นกล้ามเนื้อที่เหนียวและแข็งแรงเรียกว่า โปเดีย ใช้สำหรับยึดเกาะกับเคลื่อนที่ มีสีต่าง ๆ ออกไป ทั้ง ขาว, ชมพู, แดง, ดำ, ม่วง หรือน้ำเงิน เป็นต้น พบอยู่ตามชายฝั่งทะเล โขดหิน และบางส่วนอาจพบได้ถึงพื้นทะเลลึก กินหอยสองฝา โดยเฉพาะ หอยนางรม, กุ้ง, ปู หนอน และ สัตว์ไม่มีกระดูกสันหลังอื่น ๆ เช่น ฟองน้ำหรือปะการัง เป็นอาหาร';
var Paragraph2p5 = '         ดาวทะเล พบอยู่ในทะเลทั่วโลก ทั้ง มหาสมุทรแปซิฟิก, แอตแลนติก, มหาสมุทรอินเดีย รวมทั้งในเขตขั้วโลกด้วยอย่าง มหาสมุทรอาร์กติก และแอนตาร์กติกา ดาวทะเล ถึงปัจจุบันนี้พบอยู่ด้วยประมาณ 1,800 ชนิด กระจายอยู่ในอันดับต่าง ๆ 7 อันดับ (ดูในตาราง) ซึ่งดาวทะเลขนาดเล็กอาจมีความกว้างเพียง 1 เซนติเมตร และขนาดใหญ่ที่สุดอาจยาวได้ถึง 1 เมตร และในบางชนิดอาจมีแขนได้มากกว่า 5 แขน การเคลื่อนที่ของดาวทะเล เนื่องจากดาวทะเลเป็นสัตว์ไม่มีกระดูกสันหลัง มีโครงแข็งที่ผิวนอก ไม่ได้ยึดเกาะกับกล้ามเนื้อ จึงมีระบบการเคลื่อนที่ด้วยระบบท่อน้ำ จากท่อวงแหวนจะมีท่อน้ำแยกออกไปในแขน เรียกท่อนี้ว่า เรเดียลแคแนล ทางด้านข้างของเรเดียลคาแนล มีท่อแยกไปยังทิวบ์ฟีต การยืดและหดของทิวบ์ฟิตจะเกิดขึ้นหลาย ๆ ครั้ง และมีความสัมพันธ์กันทำให้เกิดการเคลื่อนที่ไปได้';


Widget detailData(img, t, p1, p2) {
  return ListView(
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
        child: Image.asset('assets/images/$img'),
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
                  constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                  alignment: Alignment.center,
                  child: Text(
                    t,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Sriracha",
                        fontSize: 30),
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
              p1,
              style: TextStyle(fontSize: 30, fontFamily: "Sriracha"),
              maxLines: 15,
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
              p1,
              style: TextStyle(fontSize: 30, fontFamily: "Sriracha"),
              maxLines: 15,
            ),
          ),
        ),
      ),
    ],
  );
}

class AquaList1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          leading: IconButton(
            icon: Icon(
              Icons.navigate_before,
              color: Colors.white,
              size: 35,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text(
            "สัตว์น้ำ",
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
            child: detailData(imageDetailp1, titleDetailp1, Paragraph1p1, Paragraph2p1)));
  }
}

class AquaList2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          leading: IconButton(
            icon: Icon(
              Icons.navigate_before,
              color: Colors.white,
              size: 35,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text(
            "สัตว์น้ำ",
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
            child: detailData(imageDetailp2, titleDetailp2, Paragraph1p2, Paragraph2p2)));
  }
}

class AquaList3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          leading: IconButton(
            icon: Icon(
              Icons.navigate_before,
              color: Colors.white,
              size: 35,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text(
            "สัตว์น้ำ",
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
            child: detailData(imageDetailp3, titleDetailp3, Paragraph1p3, Paragraph2p3)));
  }
}

class AquaList4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          leading: IconButton(
            icon: Icon(
              Icons.navigate_before,
              color: Colors.white,
              size: 35,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text(
            "สัตว์น้ำ",
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
            child: detailData(imageDetailp4, titleDetailp4, Paragraph1p4, Paragraph2p4)));
  }
}

class AquaList5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          leading: IconButton(
            icon: Icon(
              Icons.navigate_before,
              color: Colors.white,
              size: 35,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text(
            "สัตว์น้ำ",
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
            child: detailData(imageDetailp5, titleDetailp5, Paragraph1p5, Paragraph2p5)));
  }
}
