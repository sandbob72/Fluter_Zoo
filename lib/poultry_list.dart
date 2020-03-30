import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class PoultryList extends StatefulWidget {
  const PoultryList({Key key}) : super(key: key);

  @override
  PoultryListState createState() => PoultryListState();
}

class PoultryListState extends State<PoultryList> {
  var image1 = 'Poultry1.jpg';
  var title1 = 'นกแก้วมาคอร์';
  var image2 = 'Poultry2.jpg';
  var title2 = 'นกเงือก';
  var image3 = 'Poultry3.jpg';
  var title3 = 'นกยูง';
  var image4 = 'Poultry4.jpg';
  var title4 = 'เหยี่ยว';
  var image5 = 'Poultry5.jpg';
  var title5 = 'นกกระจอกเทศ';

  Widget poultry(t, img, list) {
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
                poultry(title1, image1, PoultryList1()),
                poultry(title2, image2, PoultryList2()),
                poultry(title3, image3, PoultryList3()),
                poultry(title4, image4, PoultryList4()),
                poultry(title5, image5, PoultryList5()),
              ],
            )));
  }
}

var imageDetailp1 = 'Poultry1.jpg';
var titleDetailp1 = 'นกแก้วมาคอร์';
var Paragraph1p1 = '         เป็นสัตว์ปีกอยู่ในวงศ์ Psittacidae มาคอว์จัดเป็นนกในตระกูลปากขอที่มีขนาดใหญ่ นิยมเลี้ยงกันมากเนื่องจากมีสีสันที่สวยงาม เชื่อง และสามารถพูดเลียนเสียงคนได้ มาคอว์ถือเป็นนกแก้วที่มีขนาดใหญ่ที่สุด มีถิ่นกำเนิดในประเทศเม็กซิโกและทวีปอเมริกาใต้ มีสีสันสวยงาม มีเสียงร้องที่ดังมากจะงอยปากจะใหญ่เป็นพิเศษ เหนือปากด้านบนจะมีสีขาวเส้นเล็กๆ คาดระหว่างปากกับหัว บนหัวมีขนสีเขียวสดและสีฟ้า ดวงตามีขนเป็นลายเส้นดำ 4-5 เส้น ขนบริเวณคอจนถึงหน้าอกเป็นสีเหลืองเข้มและขนหางมีสีแดงสด ขาสั้นใหญ่ แข็งแรง ขนที่ปีกบางทีก็เป็นสีฟ้าและสีเหลืองหรือสีเขียวเหลือง ขนาดของนกแก้วมาคอว์มีขนาดตั้งแต่ 32-35 นิ้ว';
var Paragraph2p1 = '         อาหารของมาคอว์คือ ผลไม้และเมล็ดธัญพืช ชอบอยู่กันเป็นฝูงขนาดใหญ่ ในฤดูผสมพันธุ์จะจับคู่กันแบบคู่ใครคู่มัน และไปสร้างรังตามต้นไม้ใหญ่เพื่อวางไข่ วางไข่ครั้งละ 3-4 ฟอง ใช้เวลาฟักไข่ 30-35 วัน ขนของลูกนกจะขึ้นหลังจาก 3 สัปดาห์และขึ้นจนเต็มตัวและมีสีสันสวยงาม ลูกนกจะแข็งแรงเต็มที่เมื่ออายุสามเดือน ในระหว่างที่ยังเล็กต้องอาศัยอาหารจากแม่นกที่นำมาป้อน โดยจะใช้ปากจิกกินอาหารจากปากแม่ของมันจนกระทั่งลูกนกสามารถช่วยตนเองได้ และในที่สุดมันก็จะบินและหาอาหารเองโดยไม่ต้องอาศัยพ่อแม่อีกต่อไป';

var imageDetailp2 = 'Poultry2.jpg';
var titleDetailp2 = 'นกเงือก';
var Paragraph1p2 = '         นกเงือก เป็นนกป่าขนาดใหญ่ ที่มีจุดเด่น คือ จะงอยปากหนาที่ใหญ่และมีโหนกทางด้านบนเป็นโพรง ภายในโพรงมีเนื้อเยื่อคล้ายฟองน้ำส่วนใหญ่ลำตัวมีสีขาวดำหางยาว ปีกกว้างใหญ่ บินได้แข็งแรง เวลาบินจะโบกปีกช้า ๆ กินผลไม้เป็นอาหารหลัก และสัตว์เลื้อยคลานเล็ก ๆ เป็นอาหารเสริม ทำรังในโพรงไม้ ตัวเมียจะเข้าไปกดไข่ในโพรงโดยใช้โคลนและมูลปิดปากโพรงไว้ เหลือเพียงช่องพอให้ตัวผู้อื่นส่งอาหารเข้าไปได้ เมื่อลูกนกโตพอแล้ว จึงเจาะโพรงออกมา และจากจะงอยปากและส่วนหัวที่ใหญ่เหมือนโหนกหรือหงอนนั้น ทำให้นกเงือกถูกใช้ในเชิงสัญลักษณ์ทางวัฒนธรรมมาแต่โบราณ โดยใช้ทำเป็นเครื่องประดับของชนเผ่าต่าง ๆ';
var Paragraph2p2 = '         นกเงือก เป็นดัชนีชี้วัดความอุดมสมบูรณ์ของธรรมชาติได้ประการหนึ่ง เนื่องจากจะอาศัยอยู่ในป่าหรือพื้นที่ที่มีความอุดมสมบูรณ์เท่านั้น เนื่องจากนกเงือกเป็นนกขนาดใหญ่ถึงใหญ่มาก กินทั้งผลไม้และสัตว์เป็นอาหาร อีกทั้งธรรมชาติในการหากินต้องอาศัยพื้นที่ป่าที่กว้าง และยังเป็นตัวแพร่กระจายพันธุ์พืชชนิดต่าง ๆ ในป่าได้อย่างดีอีกด้วย เนื่องจากเป็นนกที่กินผลไม้ชนิดต่าง ๆ ได้ถึง 300 ชนิด และทิ้งเมล็ดไว้ตามที่ต่าง ๆ ประเทศไทยมีนกเงือก 13 ชนิด ด้วยกัน โดยในอุทยานแห่งชาติเขาใหญ่ซึ่งมีอาณาเขตส่วนหนึ่งอยู่ใน จังหวัดนครราชสีมา มี 4 ชนิด ได้แก่ นกกก หรือ นกกะวะ หรือ นกกาฮัง นกเงือกสีน้ำตาล นกเงือกกรามช้าง หรือ นกกู่กี๋ และนกแก๊ก หรือนกแกง และเขตรักษาพันธุ์สัตว์ป่าฮาลา-บาลา พบ 9 ใน 12 ชนิดของนกเงือกที่พบในไทย ได้แก่ นกเงืกปากย่น นกเงือกชนหิน นกแก๊ก นกกก นกเงือกหัวหงอก นกเงือกปากดำ นกเงือกหัวแรด นกเงือกดำ นกเงือกกรามช้าง';

var imageDetailp3 = 'Poultry3.jpg';
var titleDetailp3 = 'นกยูง';
var Paragraph1p3 = '         เป็นสัตว์ปีกจำพวกไก่ฟ้าขนาดใหญ่ที่สุดในวงศ์เดียวกันนี้ มีจุดเด่นคือ เพศผู้มีขนหางยาวที่มีสีสันสวยงาม ที่เมื่อแผ่ขยายออกเพื่ออวดเพศเมียจะมีความสวยงามเป็นอย่างยิ่ง ที่เรียกว่า "รำแพน" นกยูงใช้ชื่อสกุลว่า Pavo ชอบอาศัยอยู่ในป่าดิบแล้งและป่าผลัดใบผสมตามริมลำธารในป่า มีพฤติกรรมมักร้องตอนเช้าหรือพลบค่ำ กินอาหารจำพวกเมล็ดพืช แมลง และสัตว์เล็ก ๆ มีการกระจายพันธุ์อยู่ทางเหนือของประเทศอินเดียไปทางทิศตะวันออกผ่านพม่า, ตอนใต้ของประเทศจีน, ไทย, ลาว, เวียดนาม, กัมพูชา, มาเลเซียและชวา';
var Paragraph2p3 = '         นกยูงไทยเป็นนกจำพวกไก่ฟ้าขนาดใหญ่ นกตัวผู้อาจยาวได้ถึง 3 เมตรเมื่อรวมหาง อาจหนักถึง 5 กก. ตัวเมียยาว 1.1 เมตร หนักประมาณ 1.1 กก. ช่วงปีกกว้าง 1.2 เมตร นกตัวผู้มีหงอนเป็นพู่สูงและมีแผ่นหนังที่หน้าสีฟ้าสลับสีเหลืองเห็นได้ ชัดเจน ขนลำตัวมีสีเขียวเป็นประกายแววเหลือบสีน้ำเงินบนปีกและสีทองแดงทางด้านข้าง ลำตัวดูเป็นลายเกล็ดแพรวพราวไปทั้งตัว ขนปีกบินสีน้ำตาลแดง ขนคลุมโคนหางยื่นยาวออกมาก มีสีเขียวและมีจุดดวงตากลมที่ขลิบด้วยสีฟ้าและสีน้ำเงิน นกตัวเมียลักษณะโดยทั่วไปคล้ายนกตัวผู้ แต่ขนสีเหลือบเขียวน้อยกว่าและมีประสีน้ำตาลเหลืองอยู่ทั่วไป ขนคลุมโคนหางไม่ยื่นยาวดังเช่นในนกตัวผู้ นกยูงไทยบินได้เก่งกว่านกยูงอินเดีย';

var imageDetailp4 = 'Poultry4.jpg';
var titleDetailp4 = 'เหยี่ยว';
var Paragraph1p4 = '         เหยี่ยวมีลักษณะคล้ายกับอินทรี ซึ่งเป็นนกล่าเหยื่อเช่นเดียวกัน แต่เหยี่ยวมีขนาดเล็กกว่า คือมีจะงอยปากที่งองุ้ม มีกรงเล็บที่แหลมคมและแข็งแรง บินได้อย่างรวดเร็ว กางปีกได้กว้างและยาว สามารถบินหรือเหินได้สูง และมีสายตาที่ดีมาก อาหารโดยทั่วไปของเหยี่ยว คือ สัตว์ขนาดเล็กกว่าต่าง ๆ เช่น สัตว์ฟันแทะ, สัตว์เลี้ยงลูกด้วยนมต่าง ๆ, สัตว์เลื้อยคลาน, สัตว์น้ำ เช่น ปลา หรือกุ้ง หรือแม้แต่สัตว์ที่มีขนาดใหญ่กว่าได้ เช่น กวาง  ';
var Paragraph2p4 = '         เหยี่ยวที่พบในประเทศไทยมีหลายชนิด อาทิ เหยี่ยวแดง (Haliastur indus), นกออก (Haliaeetus leucogaster), เหยี่ยวรุ้ง (Spilornis cheela) และยังมีอีกชนิดหนึ่ง คือ เหยี่ยวออสเปร (Pandion haliaetus) ซึ่งเป็นนกที่มีวิวัฒนาการเป็นของตัวเอง มีวงศ์และสกุลของตัวเองต่างหาก จากความที่เป็นนกล่าเหยื่อ และมีขนาดลำตัวที่ไม่ใหญ่นัก เหยี่ยวจึงถูกมนุษย์ใช้เลี้ยงเป็นสัตว์เลี้ยงมาแล้วนานกว่า 2,000 ปี เพื่อใช้ประโยชน์หลายอย่าง เช่น ล่าสัตว์, เพื่อความเพลิดเพลิน หรือแม้แต่ใช้ในการไล่นกชนิดอื่น ๆ ในสนามบินหรือชุมชนเมืองบางแห่ง ';

var imageDetailp5 = 'Poultry5.jpg';
var titleDetailp5 = 'นกกระจอกเทศ';
var Paragraph1p5 = '         นกตัวผู้มีขนาดโตกว่าตัวเมีย ตัวผู้เมื่อโตเต็มวัยขนตามลำตัวจะเปลี่ยนไปเป็นสีดำ ส่วนขนปีกและขนหางจะเป็นสีขาวสวยงามมาก สำหรับตัวเมียจะมีขนตามตัวสีน้ำตาลเทาอ่อน ปากมีลักษณะแบนและกว้างมาก ดวงตากลมโต หัวเล็ก ศีรษะล้าน มีขนอ่อนบางสีเทา น้ำตาลอ่อนคล้ายสีครีมหรือผลมะอึก คอยาวและมีขนอ่อนเช่นเดียวกับหัว ปีกเล็กไม่สมตัว ขนที่ปีกยาวพอสมควรแต่ก็ไม่ใช่ขนสำหรับการบิน ซึ่งขนปีกมีไว้เพื่อความสวยงามเท่านั้น ขาและโคนขาเป็นขาเกลี้ยง ๆ ไม่มีขน นกตัวผู้มีลำคอหย่อนยานกว่าตัวเมีย จึงโป่งคอและทำเสียงร้องเลียนแบบสิงโตได้ นกตัวผู้ 1ตัวจะคุมนกตัวเมียหลายตัว';
var Paragraph2p5 = '         กษณะเท้าของนกกระจอกเทศจะพบว่ามีนิ้วเท้าข้างละ 2 นิ้ว ใต้นิ้วเป็นเนื้ออ่อน ๆ ปลายนิ้วทู่ ๆ ใหญ่ ๆ นิ้วทั้งสองจัดเป็นนิ้วกลางและนิ้วนางเท่านั้น นิ้วที่ใหญ่มากคือนิ้วกลาง ซึ่งเป็นธรรมชาติของสัตว์โลกอย่างหนึ่งคือ สัตว์ที่ไม่ใช้ความเร็วของฝีเท้าจะมีนิ้วครบชุดมือ – เท้าข้างละ 5 นิ้ว หากสัตว์นั้นต้องการความเร็วของฝีเท้าเพื่อวิ่งหนีศัตรู ธรรมชาติก็จะวิวัฒนาการให้นิ้วหายไปทีละนิ้วสองนิ้วจนเหลือแต่เพียงนิ้วเดียว เช่นเท้าของม้า มีเพียงนิ้วเดียวที่เรียกว่ากีบเท้าม้า ขนาดโตเต็มที่สูงประมาณ 2 – 2.5 เมตร น้ำหนักเมื่อโตเต็มที่จะหนักประมาณ 160 กิโลกรัม มีอายุยืนได้ถึง 65 – 75 ปี หัวเล็ก คอยาว ตาโต ขนตายาว มีขาใหญ่แข็งแรง บินไม่ได้แต่วิ่งได้เร็ว ลูกนกอายุเพียง 2-3 วันก็จะวิ่งได้แล้ว หากินในทุ่งกว้างเป็นฝูงใหญ่ อยู่ร่วมฝูงกับม้าลายและยีราฟ การต่อสู้ป้องกันตัวของนกกระจอกเทศจะกระโดดเตะได้ ระวังตัวสูง จึงหลบหลีกสัตว์กินเนื้อได้ดี ไข่ของนกกระจอกเทศเป็นไข่นกที่ใหญ่ที่สุดในโลก กินพืช, เมล็ดพืช, ผลไม้สุกและสัตว์ตัวเล็ก ๆ โดยใช้ปากงับแล้วกระดกเข้าลำคอ จากนั้นยืดคอให้ตรง ให้อาหารไหลลงไปตามหลอดอาหารในลำคอ';


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

class PoultryList1 extends StatelessWidget {
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
            child: detailData(imageDetailp1, titleDetailp1, Paragraph1p1, Paragraph2p1)));
  }
}

class PoultryList2 extends StatelessWidget {
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
            child: detailData(imageDetailp2, titleDetailp2, Paragraph1p2, Paragraph2p2)));
  }
}

class PoultryList3 extends StatelessWidget {
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
            child: detailData(imageDetailp3, titleDetailp3, Paragraph1p3, Paragraph2p3)));
  }
}

class PoultryList4 extends StatelessWidget {
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
            child: detailData(imageDetailp4, titleDetailp4, Paragraph1p4, Paragraph2p4)));
  }
}

class PoultryList5 extends StatelessWidget {
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
            child: detailData(imageDetailp5, titleDetailp5, Paragraph1p5, Paragraph2p5)));
  }
}
