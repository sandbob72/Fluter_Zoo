import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class ReptileList extends StatefulWidget {
  const ReptileList({Key key}) : super(key: key);

  @override
  ReptileListState createState() => ReptileListState();
}

class ReptileListState extends State<ReptileList> {
  var image1 = 'Reptile1.jpg';
  var title1 = 'งูหลาม';
  var image2 = 'Reptile2.jpg';
  var title2 = 'เต่ากระ';
  var image3 = 'Reptile3.jpg';
  var title3 = 'จระเข้น้ำจืด';
  var image4 = 'Reptile4.jpg';
  var title4 = 'กบเอเชีย';
  var image5 = 'Reptile5.jpg';
  var title5 = 'กิ่งก่าคาเมเลี่ยน';

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
          backgroundColor: Colors.purple,
          leading: IconButton(
            icon: Icon(
              Icons.navigate_before,
              color: Colors.white,
              size: 35,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text(
            "สัตว์เลื้อยคลาน",
            style: TextStyle(fontFamily: "Sriracha", fontSize: 30),
          ),
          centerTitle: true,
        ),
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.purple, Colors.deepOrange])),
            child: ListView(
              children: <Widget>[
                Aqua(title1, image1, ReptileList1()),
                Aqua(title2, image2, ReptileList2()),
                Aqua(title3, image3, ReptileList3()),
                Aqua(title4, image4, ReptileList4()),
                Aqua(title5, image5, ReptileList5()),
              ],
            )));
  }
}

var imageDetailp1 = 'Reptile1.jpg';
var titleDetailp1 = 'งูหลาม';
var Paragraph1p1 = '         มีลักษณะคล้ายกับงูเหลือม (M. reticulatus) ซึ่งเป็นงูในวงศ์งูเหลือมเหมือนกัน แต่มีขนาดเล็กกว่างูเหลือม โดยความยาวโดยเฉลี่ยประมาณ 1-3 เมตร (พบใหญ่ที่สุด 5.18 เมตร น้ำหนัก 74 กิโลกรัม ที่อุทยานแห่งชาติเอเวอร์เกลดส์ สหรัฐอเมริกา] ทำลายสถิติตัวที่มีความยาว 5 เมตรในประเทศพม่า) มีลำตัวที่อ้วนป้อมกว่า อีกทั้งหางก็สั้นกว่าและมีขีดที่บนหัวเป็นสีขาว เรียกว่า "ศรขาว" อีกทั้งมีสีสันและลวดลายที่แตกต่างจากงูเหลือม รวมทั้งอุปนิสัยที่ไม่ดุต่างจากงูเหลือม จึงเป็นที่นิยมเลี้ยงเป็นสัตว์เลี้ยงของผู้ที่นิยมเลี้ยงสัตว์เลื้อยคลาน นิยมกันมากในตัวที่สีกลายเป็นสีเผือกและลวดลายแตกต่างไปจากปกติ';
var Paragraph2p1 = '         เคยถูกจัดให้เป็นชนิดย่อยของงูหลามอินเดีย (P. molurus) จากการศึกษาโดยละเอียดแล้ว ด้วยความแตกต่างในหลาย ๆ ส่วน ชนิดย่อย P. molurus bivittatus ที่เคยใช้ จึงถูกยกให้เป็นชนิดต่างหากและใช้ชื่อวิทยาศาสตร์อย่างในปัจจุบัน สำหรับในประเทศไทย งูหลามจัดเป็นสัตว์ป่าคุ้มครองตามพระราชบัญญัติสงวนและคุ้มครองสัตว์ป่าพุทธศักราช 2535 อาหารของงูหลาม คือ ลิง เก้ง กวาง หนู นก กระรอก กระแต วัว เนื้อทราย เลียงผา จระเข้ เสือโคร่ง หมา แมว ไก่ เป็ด ชะมดและอีเห็น เป็นต้น';

var imageDetailp2 = 'Reptile2.jpg';
var titleDetailp2 = 'เต่ากระ';
var Paragraph1p2 = '         เต่ากระ หรือ เต่าปากเหยี่ยว ชื่อวิทยาศาสตร์: Eretmochelys imbricata จัดอยู่ในไฟลัมสัตว์มีแกนสันหลังชั้นสัตว์เลื้อยคลาน และเป็นสิ่งมีชีวิตเพียงชนิดเดียวเท่านั้นที่อยู่ในสกุล Eretmochelys มีลักษณะคล้ายเต่าตนุ (Chelonia mydas) โดยที่เป็นเต่าทะเลขนาดกลาง มีลำตัวไม่ใหญ่มากนัก จะงอยปากแหลมงองุ้มคล้ายกับจะงอยปากของนกเหยี่ยว มีเกล็ดบริเวณหัวด้านหน้า 2 คู่ และเกล็ดบริเวณด้านข้างข้างละ 4 เกล็ด ลักษณะของกระดองมีลวดลายและสีสันสวยงาม ขอบกระดองเป็นหยักโดยรอบ ซึ่งในอดีตมักจะถูกนำไปทำเป็นเครื่องประดับและข้าวของต่าง ๆ เช่น หวี เมื่อโตเต็มที่ จะมีขนาดความยาวประมาณ 100 เซนติเมตร และมีน้ำหนักประมาณ 120 กิโลกรัม';
var Paragraph2p2 = '         เต่ากระพบกระจายพันธุ์ในเขตอบอุ่นในมหาสมุทรทั่วทั้งโลก โดยมักอาศัยอยู่ใกล้ชายฝั่งที่สงบเงียบไม่มีการรบกวน จากการศึกษาพบว่า เต่ากระกินทั้งได้พืชและสัตว์ โดยใช้ปากที่งองุ้มนี้กินทั้งสาหร่ายทะเล, หญ้าทะเล รวมทั้งสัตว์น้ำประเภทต่าง ๆ รวมถึงปะการังด้วย วางไข่บนชายหาดครั้งละ 150-250 ฟอง จัดเป็นสัตว์ป่าคุ้มครองประเภทที่ 1 ตามพระราชบัญญัติสงวนและคุ้มครองสัตว์ป่า พุทธศักราช 2535 และจัดเป็น 1 ใน 4 ชนิดของเต่าทะเลที่พบได้ในน่านน้ำไทย';

var imageDetailp3 = 'Reptile3.jpg';
var titleDetailp3 = 'จระเข้น้ำจืด';
var Paragraph1p3 = '         จระเข้น้ำจืด, จระเข้บึง, จระเข้สยาม หรือ จระเข้น้ำจืดสายพันธุ์ไทย ชื่อวิทยาศาสตร์: Crocodylus siamensis) มีถิ่นกำเนิดในบริเวณเวียดนาม, กัมพูชา, ลาว ไทย, กาลีมันตัน, ชวา และสุมาตรา จัดเป็นจระเข้ขนาดปานกลางค่อนมาทางใหญ่ (3 - 4 เมตร) มีเกล็ดท้ายทอด มีช่วงวัยเจริญพันธุ์เมื่ออายุ 10-12 ปี จระเข้ชนิดนี้วางไข่ครั้งละ 20-48 ฟอง โดยมีระยะเวลาฟักไข่นาน 68-85 วัน เริ่มวางไข่ในช่วงต้นฤดูฝนประมาณเดือนพฤษภาคม โดยขุดหลุมในหาดทรายริมแม่น้ำ ใช้เวลาเฉลี่ยราว 80 วัน ชอบอยู่และหากินเดี่ยว';
var Paragraph2p3 = '         โดยปกติจระเข้น้ำจืดจะกินปลาและสัตว์อื่นที่เล็กกว่าเป็นอาหาร จะไม่ทำร้ายมนุษย์หากไม่ถูกรบกวนหรือมีอาหารเพียงพอ ในอดีตในประเทศไทยเคยพบชุกชุมในแหล่งน้ำทั่วทุกภาคของประเทศ โดยเฉพาะในแถบที่ราบลุ่มภาคกลาง เช่น ที่บึงบอระเพ็ด จังหวัดนครสวรรค์ ได้ชื่อว่าเป็นสถานที่จระเข้ชุม เคยมีรายงานว่าพบจระเข้ถึง 200 ตัว หรือในวรรณกรรมพื้นบ้านเรื่องต่าง ๆ เช่น ไกรทอง ของจังหวัดพิจิตร เป็นต้น แต่ปัจจุบันได้สูญหายไปจนหมดแล้ว แต่ในต่างประเทศยังคงพบอยู่เช่นที่ทะเลสาบเขมร ประเทศกัมพูชา โดยเฉพาะทิวเขาพนมกระวาน ซึ่งช่วงแรกค้นพบเพียง 3 ตัว จนนำไปสู่การค้นพบจระเข้นับร้อยตัวที่อาศัยโดยไม่พึ่งพาอาศัยมนุษย์ ';

var imageDetailp4 = 'Reptile4.jpg';
var titleDetailp4 = 'กบเอเชีย';
var Paragraph1p4 = '         มีลักษณะเด่น คืิอ มีกระดูกสันหลังหน้ากระดูกก้นกบ 8 ปล้อง กระดูกสันหลังมีเซนทรัมเป็นแบบอย่างของแอมฟิซีลัส กระดูกหัวไหล่เป็นแบบอย่างของอาร์กซิฟเอรัล กระดูกแอสทรากาลัสและกระดูกแคลคาเนียมเชื่อมรวมกันเฉพาะส่วนต้นและส่วนปลาย ไม่มีชิ้นกระดูกแทรกระหว่างกระดูกนิ้ว 2 ชิ้นสุดท้าย ผิวหนังลำตัวมีต่อมเป็นจำนวนมาก นอกจากนี้แล้วหลายชนิดของทั้งตัวผู้และตัวเมียยังมีกลุ่มของต่อมบริเวณขาหนีบและซอกขาหน้า';
var Paragraph2p4 = '         มีขนาดตัวตั้งแต่ 2-12 เซนติเมตร อาศัยอยู่บนพื้นล่างของป่าหรือบริเวณใกล้ลำห้วยหรือลำธาร ส่วนใหญ่มีสีลำตัวกลมกลืนกับสภาพแวดล้อม วางไข่ในแหล่งน้ำ โดยขณะผสมพันธุ์ตัวผู้จะกอดรัดตัวเมียในตำแหน่งเอว ลูกอ๊อดมีรูปร่างและโครงสร้างของปากแตกต่างกัน บางสกุลมีปากเป็นรูปกรวยและไม่มีจะงอยปาก รวมทั้งไม่มีตุ่มฟัน อาศัยอยู่ในแหล่งน้ำนิ่ง แต่ขณะที่บางสกุลมีคุณสมบัติแตกต่างจากเหล่านี้สิ้นเชิง และอาศัยอยู่ในแหล่งน้ำเชี่ยว';

var imageDetailp5 = 'Reptile5.jpg';
var titleDetailp5 = 'กิ่งก่าคาเมเลี่ยน';
var Paragraph1p5 = '         มีความยาวลำตัวจรดหางประมาณ 10 นิ้ว มีลักษณะเด่น คือ มีสันแข็งคล้ายเขา 3 เขาอยู่บริเวณด้านหน้าของส่วนหัว ยกเว้นในเพศเมียไม่มีเขา หรือมีแต่เฉพาะส่วนจมูกเท่านั้น ผิวหนังมีหยาบและขรุขระ และสีลำตัวมักเปลี่ยนได้ตามสภาพแวดล้อม ตามอุณหภูมิหรืออารมณ์ บางครั้งเพื่อพรางตัวจากผู้คุกคามหรือพรางตัวเพื่อเป็นผู้ล่าเสียเอง กิ้งก่าคาเมเลี่ยนแจ็คสัน มีถิ่นกระจายพันธุ์แถบเคนยา และแทนซาเนีย ในแอฟริกาตะวันออก สามารถพบได้ในระดับที่สูงมากกว่า 3,000 เมตร นับเป็นกิ้งก่าคาเมเลี่ยนที่พบได้ไม่ง่ายนักในธรรมชาติ และถูกนำเข้าไปในฮาวาย ในช่วงทศวรรษที่ 70 เพื่อเลี้ยงเป็นสัตว์เลี้ยง ซึ่งสามารถปรับตัวให้กับสภาพแวดล้อมสามารถแพร่ขยายพันธุ์เอง';
var Paragraph2p5 = '         กิ้งก่าคาเมเลี่ยนแจ็คสัน เป็นกิ้งก่าคาเมเลี่ยนชนิดหนึ่งที่ได้รับความนิยมในการเลี้ยงเป็นสัตว์เลี้ยง เนื่องจากมีลักษณะคล้ายไดโนเสาร์ หรือสัตว์เลื้อยคลานในยุคก่อนประวัติศาสตร์ย่อส่วนมา โดยมีอายุขัยเฉลี่ยเพียง 2 ปีเท่านั้น แต่ก็มีผู้ที่เลี้ยงได้อย่างยาวนานถึง 5-10 ปี ในที่เลี้ยงต้องมีอากาศถ่ายเทได้สะดวก กว้างขวางพอสมควร มีกิ่งไม้หรือต้นไม้ให้เกาะและป่ายปีน เลี้ยงโดยการให้แมลง เช่น จิ้งหรีด หรือหนอนคลุกกับวิตามิน วันละ 2 ครั้ง อุณหภูมิอยู่ระหว่าง 17-26 องศาเซลเซียส และมีแสงยูวีให้เพื่อสร้างความอบอุ่น สามารถที่จะแพร่ขยายพันธุ์ในที่เลี้ยงได้';


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

class ReptileList1 extends StatelessWidget {
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
            "สัตว์เลื้อยคลาน",
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

class ReptileList2 extends StatelessWidget {
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
            "สัตว์เลื้อยคลาน",
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

class ReptileList3 extends StatelessWidget {
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
            "สัตว์เลื้อยคลาน",
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

class ReptileList4 extends StatelessWidget {
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
            "สัตว์เลื้อยคลาน",
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

class ReptileList5 extends StatelessWidget {
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
            "สัตว์เลื้อยคลาน",
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
