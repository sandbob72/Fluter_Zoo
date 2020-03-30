import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class MammalList extends StatefulWidget {
  const MammalList({Key key}) : super(key: key);

  @override
  MammalListState createState() => MammalListState();
}

class MammalListState extends State<MammalList> {
  var image1 = 'mammal1.jpg';
  var title1 = 'ลิงแสม';
  var image2 = 'mammal2.jpg';
  var title2 = 'คาปิบาร่า';
  var image3 = 'mammal3.jpg';
  var title3 = 'กวางแซมบา';
  var image4 = 'mammal4.jpg';
  var title4 = 'เสื้อโคร่ง';
  var image5 = 'mammal5.jpg';
  var title5 = 'ช้างเอเชีย';

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
          backgroundColor: Colors.green[700],
          leading: IconButton(
            icon: Icon(
              Icons.navigate_before,
              color: Colors.white,
              size: 35,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text(
            "สัตว์เลี้ยงลูกด้วยน้ำ",
            style: TextStyle(fontFamily: "Sriracha", fontSize: 30),
          ),
          centerTitle: true,
        ),
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.green[700], Colors.limeAccent])),
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

var imageDetailp1 = 'mammal1.jpg';
var titleDetailp1 = 'ลิงแสม';
var Paragraph1p1 = '         จัดเป็นลิงขนาดกลาง มีขนตามลำตัวสีน้ำตาล หางยาวกว่าความยาวของลำตัว ขนตรงกลางหัวมีลักษณะตั้งแหลมชี้ขึ้น ขนใต้ท้องสีขาว โดยสีขนจะเปลี่ยนแปลงไปตามอายุ ฤดูกาล และถิ่นที่อยู่อาศัย ขนาดความยาวลำตัวและหัวประมาณ 48.5 – 55 เซนติเมตร ความยาวหาง 44 – 54 ซนติเมตร น้ำหนักประมาณ 3.5 – 6.5 กิโลกรัม มีการแพร่กระจายพันธุ์ที่ค่อนข้างกว้าง โดยพบตั้งแต่ประเทศอินเดีย, พม่า, ไทย, คาบสมุทรมลายู, เกาะสุมาตรา, เกาะบอร์เนียว, เกาะลูซอน และเกาะมินดาเนา ของฟิลิปปินส์, ลาว, กัมพูชา และเวียดนาม ทำให้มีชนิดย่อยมากถึง 10 ชนิด ';
var Paragraph2p1 = '         เป็นลิงอีกชนิดหนึ่งที่พบได้แทบทุกภูมิประเทศ ทั้งในป่าชายเลนใกล้ทะเล โดยลิงฝูงที่อาศัยในที่นี่จะว่ายน้ำและดำน้ำเก่ง เคยมีรายงานว่าสามารถดำน้ำได้ลึกถึง 50 เมตร หากินสัตว์ทะเลขนาดเล็กเป็นอาหาร เช่น กุ้ง, ปู หรือ หอย แต่บางครั้งก็พบอาศัยอยู่ในป่าดิบชื้นและพื้นที่สูงประมาณ 2,000 เมตร จากระดับน้ำทะเล หรือพื้นที่เกษตรกรรมด้วยซึ่งมันมักจะทำลายผลิตผลทางการเกษตร ลิงแสมพยายามจะปรับตัวให้สามารถอยู่ในพื้นที่บริเวณขอบนอกของป่า มากกว่าอยู่ในป่าลึก และสามารถปรับตัวในเข้ากับมนุษย์ได้ในบางโอกาส ดั่งที่มักพบเห็นทั่วไปตามเมืองใหญ่ อาทิ ศาลพระกาฬ อำเภอเมือง จังหวัดลพบุรี หรือ ศาลเจ้าแม่เขาสามมุข อำเภอเมือง จังหวัดชลบุรี เป็นต้น ซึ่งมักจะอยู่เป็นฝูงใหญ่ อาจมีสมาชิกในฝูงได้ถึง 200 ตัว โตเต็มที่เมื่อมีอายุได้ราว 3-4 ปี ออกลูกครั้งละ 1 ตัว ลูกที่มีอายุน้อยจะเกาะติดแม่เสมอ และจัดเป็นลิงอีกชนิดหนึ่งที่หากเลี้ยงตั้งแต่ยังเล็ก ก็สามารถนำมาฝึกหัดให้เชื่องได้เหมือนลิงกัง (M. nemestrina)  ';

var imageDetailp2 = 'mammal2.jpg';
var titleDetailp2 = 'คาปิบาร่า';
var Paragraph1p2 = '         คาปิบารา เป็นหนูที่ใหญ่ที่สุดในโลก ชื่อวิทยาศาสตร์คือ Hydrochaeris hydrochaeris เป็นสมาชิกของสกุล Hydrochoerus และมีสมาชิกที่อยู่ในสกุลเดียวกันที่หลงเหลืออยู่นั้นคือ Hydrochoerus isthmius ญาติใกล้ชิดของแคพิบาราคือหนูตะเภามีถิ่นกำเนิดในทวีปอเมริกาใต้และที่อาศัยอยู่ในหุบเขาที่มีป่าหนาทึบและอยู่ใกล้กับแหล่งน้ำ เป็นสัตว์สังคมที่มีจำนวนในฝูงเยอะมากและในฝูงอาจพบได้มากถึง100ตัว แต่ส่วนมากจะอยู่เป็นฝูงแค่ 10-20 ตัวเท่านั้น ไม่ได้ถูกล่าเพื่อเอาเนื้อเอาหนังจากมนุษย์เท่าไหร่นัก จึงทำให้ไม่มีความเสี่ยงที่จะสูญพันธุ์ ';
var Paragraph2p2 = '         คาปิบารามีลักษณะเป็นทรงกระบอกหัวสั้นขนสีน้ำตาลแดงหรือสีน้ำตาลอมเหลือง และสัตว์ฟันแทะขนาดใหญ่ที่สุดในโลก มีลักษณะคล้ายหนูตะเภาหูสั้น ไม่มีหาง มีพังผืดที่เท้า ขนสีน้ำตาลอ่อนถึงสีดำ เมื่อโตเต็มที่อายุ 15–18 เดือน จะมีน้ำหนักมากถึง 35 ถึง 66 กิโลกรัม (77 ถึง 146 ปอนด์) ลำตัวอาจยาวประมาณ 45-60 เซนติเมตร ตัวเมียจะมีน้ำหนักมากกว่าตัวผู้เล็กน้อย มีพังผืดที่ขาหลังและขาหลังจะยาวกว่าขาหน้าเล็กน้อย เท้าหลังมี 3 นิ้วในขณะที่เท้าหน้านั้นจะมี 4 นิ้ว เป็นสัตว์ที่ว่ายน้ำและดำน้ำเก่ง นอนแช่น้ำได้ทั้งวันแม้ในเวลาขับถ่ายหรือผสมพันธุ์ เพราะชื่นชอบน้ำเป็นชีวิตจิตใจ จะขึ้นจากน้ำก็ต่อเมื่อออกหาอาหารในช่วงเช้าและเย็น';

var imageDetailp3 = 'mammal3.jpg';
var titleDetailp3 = 'กวางแซมบา';
var Paragraph1p3 = '         กวางป่าเป็นสัตว์จำพวกกวางที่มีขนาดใหญ่ที่สุดที่มีในประเทศไทยและในภูมิภาคเอเชียตะวันออกเฉียงใต้ ขนาดวัดจากปลายจมูกถึงโคนหาง 180 – 200 เซนติเมตรความสูงวัดถึงหัวไหล่ 140 – 160 เซนติเมตร น้ำหนักตัว 185 – 260 กิโลกรัมบริเวณหัวตาแต่ละข้างจะมีแอ่งขนาดใหญ่ เรียกว่าต่อมใต้กระบอกตา ใช้ในการผลิตสารที่มีกลิ่นฉุนสำหรับสื่อสาร และใช้แสดงอาณาเขตโดยนำไปถูกับกิ่งไม้ เพศผู้จะมีต่อมใต้ตาขยายใหญ่ในช่วงฤดูผสมพันธุ์ หรือเมื่อแสดงอาการก้าวร้าว ขนบริเวณท้องและก้นขึ้นห่างกว่าบริเวณอื่นและสีขนอ่อนกว่าบนหลังหางเป็นพวงค่อนข้างสั้น  ขนสั้นหยาบสีน้ำตาลแกมเหลือง  บางตัวน้ำตาลแกมแดงขนยาวประมาณ 2-4 ซม.  ขนรอบคอเฉพาะตัวผู้ ยาวประมาณ 7-10 ซม.';
var Paragraph2p3 = '         ขนาดตัว และเขากวางมีขนาดใหญ่ มีเขาเฉพาะเพศผู้ตัวลำเขายาวประมาณ 70 – 80 เซนติเมตรเขาแต่ละข้างมี 3 กิ่งส ามารถใช้ประโยชน์จากอาหารที่มีคุณภาพต่ำมาเปลี่ยนเป็นเนื้อได้ดี เช่นหญ้า  วัชพืช  ใบไม้ เปลือกไม้ หน่อไม้ เป็นต้นกินใบไม้ประมาณ 66.66% กินหญ้าประมาณ 20.4% และเป็นพืชตามพื้นดินและลูกไม้ประมาณ 13 %และได้ชื่อว่าสามารถปรับพฤติกรรมการกินได้สูงสุด ทั้งนี้ขึ้นกับแหล่งอาหาร และชนิดของอาหารที่มี ทนทานต่อโรคและแมลงที่มารบกวน และสามารถปรับตัวให้เข้ากับสภาพการเลี้ยงดูในประเทศไทยได้เป็นอย่างดี เนื่องจากเป็นสัตว์ป่าท้องถิ่น';

var imageDetailp4 = 'mammal4.jpg';
var titleDetailp4 = 'เสื้อโคร่ง';
var Paragraph1p4 = '         มีความยาวโดยเฉลี่ยจากหัวไปจนถึงโคนหาง 1.4–2.8 เมตร หางยาว 60–95 เซนติเมตร น้ำหนักตัว 130–260 กิโลกรัม มีขนลำตัวสีน้ำตาลเหลืองหรือเหลืองอมส้ม มีลายสีดำ พาดขวางตลอดทั้งลำตัวเป็นจุดเด่น ซึ่งลายเส้นนี้เป็นเอกลักษณ์เฉพาะตัว เสือโคร่งแต่ละตัวจะมีลายไม่เหมือนกันเช่นเดียวกับลายนิ้วมือของมนุษย์ ส่วนหางมีแถบดำเป็นบั้ง ๆ หรือวงสีดำสลับน้ำตาล ปลายหางมีสีดำ โดยไม่มีพู่เหมือนสิงโต (Panthera leo) ซึ่งเป็นสัตว์ในสกุลเดียวกัน หางของเสือโคร่งมีความยาวประมาณครึ่งหนึ่งของลำตัว ใช้สำหรับการทรงตัวโดยเฉพาะเวลากลับตัวกระทันหัน นอกจากนี้แล้วการขยับของหางเสือโคร่งยังสามารถใช้บ่งบอกถึงอารมณ์ ความรู้สึกเหมือนกับแมวบ้าน (Felis catus) ใช้ในการสื่อสารกับเสือโคร่งตัวอื่น ขนใต้คาง คอ และใต้ท้องเป็นสีขาว ขนเหนือบริเวณตาเป็นสีขาวหรือเป็นแถบหรือเส้นสีดำพาดขวางเช่นกัน หลังใบหูมีสีดำและมีจุดสีขาวนวลอยู่ตรงกลาง อายุโดยเฉลี่ย 15–20 ปี';
var Paragraph2p4 = '         ชอบอาศัยอยู่ตามป่าทึบสลับกับทุ่งหญ้าโล่ง ชอบว่ายน้ำและแช่น้ำมาก ซึ่งแตกต่างจากเสือสายพันธุ์อื่น ล่าเหยื่อได้ทั้งกลางวันและกลางคืน แต่ส่วนใหญ่ในเวลากลางวันจะนอนพักผ่อน ล่าเหยื่อในเวลาเย็น พลบค่ำ กลางคืน หรือขณะที่อากาศไม่ร้อนจัด มีสายตาที่มองเห็นได้ทั้งที่มืดและสว่าง จะคืบคลานเข้าหาเหยื่อในระยะใกล้ 10–25 เมตร จนกระทั่งได้ระยะ 2–5 เมตร จึงกระโดดใส่ หากเป็นเหยื่อขนาดเล็กจะกัดที่คอหอย หากเป็นสัตว์ขนาดใหญ่ เช่น เก้ง หรือ กวาง จะกัดที่ท้ายทอยหรือหลังด้านบน และอาจจะล่าได้ถึงช้าง ในตัวที่เป็นยังลูกช้างหรือยังเป็นช้างที่ยังเล็กอยู่ โดยเสือโคร่งตัวที่ล่าช้างได้ ต้องเป็นเสือที่มีความเฉลียวฉลาดและพละกำลังพอสมควร จึงจะสามารถล่อลูกช้างให้พลัดออกจากโขลงได้ และเมื่อฆ่าจะกัดเข้าที่ลำคอเพื่อให้ตัดหลอดลมให้ขาด ซึ่งช้างตัวอื่น ๆ จะไม่กล้าเข้าไปช่วยได้แต่ยืนดูอยู่ห่าง ๆ และส่งเสียงร้อง เสือโคร่งจะยังไม่กินช้างหมดภายในทีเดียว แต่จะเก็บหรือทิ้งซากไว้และกลับมากินเรื่อย ๆ ในระยะเวลา 7–10 วันเสือโคร่งวิ่งได้เร็วกว่า 60 กิโลเมตร/ชั่วโมง และสามารถกระโจนในระยะทาง 500 เมตรได้ในเวลาเพียงไม่กี่วินาที';

var imageDetailp5 = 'mammal5.jpg';
var titleDetailp5 = 'ช้างเอเชีย';
var Paragraph1p5 = '         ลำตัวมีสีเทา จมูกยื่นยาวเรียกว่า งวง โดยงวงของช้างเอเชียจะมีเพียงจะงอยเดียว ต่างจากช้างแอฟริกาที่มี 2 จะงอย และมีโพรงสมองบริเวณหน้าผากกว้างกว่าช้างแอฟริกา เนื่องจากมีฮอร์โมนสมองมากกว่า ดังนั้นช้างเอเชียจึงเป็นช้างที่เฉลียวฉลาด สามารถนำมาฝึกหัดใช้งานและเชื่องกว่าช้างแอฟริกามากตัวผู้มีงายาวเรียก ช้างพลาย ถ้าไม่มีงาหรืองาสั้นเรียก ช้างสีดอ ในฤดูผสมพันธุ์มีอาการดุร้ายมาก มีระยะเวลาตั้งท้องนานประมาณ 18-22 เดือน ออกลูกครั้งละตัว ตัวเมียเรียก ช้างพัง ส่วนใหญ่ไม่มีงาปรากฏให้เห็น แต่บางตัวมีงาสั้น ๆ ซึ่งเรียกว่า ขนาย โผล่ออกมา ซึ่งงาของช้าแบ่งออกได้เป็น 2 ประเภท คือ งาปลี มีลำใหญ่วัดรอบประมาณ 15 นิ้ว แต่ยาวไม่มาก, งาหวาย หรืองาเครือ ขนาดวัดโดยรอบประมาณ 14 นิ้ว แต่ยาวรี';
var Paragraph2p5 = '         ช้างโดยปกติจะอาศัยอยู่ได้ในป่าแทบทุกประเภท เป็นสัตว์ที่ปรับตัวให้เข้ากับสิ่งแวดล้อมได้เป็นอย่างดี แต่โดยมากแล้วมักจะอาศัยอยู่ตามทุ่งหญ้า หรือป่าโปร่งมากกว่าป่าทึบ แต่ในช่วงฤดูแล้งที่มีไฟป่า อาจหนีเข้าไปอยู่ในป่าที่มีความชื้นกว่าได้ เช่น ป่าดิบแล้ง นอกจากกินพืชเป็นอาหารหลักแล้ว ช้างจะยังกินขี้เถ้าหรือดินโป่งเพื่อเสริมแร่ธาตุอาหารด้วย วัน ๆ หนึ่งจะใช้เวลาหากินมากถึง 16-18 ชั่วโมง และใช้เวลานอนหลับพักผ่อนเพียง 3-4 ชั่วโมงเท่านั้น นับว่าน้อยมาก ช้างเอเชีย จัดเป็นสัตว์ที่มนุษย์เลี้ยงไว้ใช้งานประเภทต่าง ๆ มาแต่โบราณ เช่น ใช้เป็นพาหนะ ลากซุง หรือแม้แต่ในการสงคราม โดยเฉพาะในภูมิภาคเอเชียใต้และเอเชียตะวันออกเฉียงใต้จะนับถือช้างเป็นสัตว์ชั้นสูง โดยจะปรากฏเป็นสัญลักษณ์ต่าง ๆ เช่น ธงรูปช้าง, ตำราคชลักษณ์ เป็นต้น';


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
              maxLines: 18,
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
              maxLines: 18,
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
            "สัตว์เลี้ยงลูกด้วยน้ำ",
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
            "สัตว์เลี้ยงลูกด้วยน้ำ",
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
            "สัตว์เลี้ยงลูกด้วยน้ำ",
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
            "สัตว์เลี้ยงลูกด้วยน้ำ",
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
            "สัตว์เลี้ยงลูกด้วยน้ำ",
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
