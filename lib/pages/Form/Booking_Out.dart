import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bookOut extends StatefulWidget {
  const bookOut({Key? key}) : super(key: key);

  @override
  State<bookOut> createState() => _bookOutState();
}

class _bookOutState extends State<bookOut> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: SafeArea(
            child: Scaffold(
                appBar: AppBar(),
                body: Container(color: Colors.cyanAccent,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [ Container(
                        height: 250,
                        width: double.infinity,
                        child: Carousel(
                          images: [
                            AssetImage("images/23.jpg"),
                            AssetImage("images/24.jpg"),
                            AssetImage("images/25.jpg"),
                            AssetImage("images/26.jpg"),

                          ],
                           dotSize: 4,
                          dotIncreaseSize: 2,

                        ),
                      ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '''*متاح بفضل الله* 
*تأشيرة سنة متعددة*
*لأي مقيم بالدول العربية* *(امارات. قطر. البحرين)*
 *لأي مقيم بالدول الاروبية **(باريس.انجليتر.امريكا.هولندا )*
*بشرط مقيم في دول مجلس التعاون الخليجي واقامته فيها اكثر 3 شهور*
''',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(" *المطلوب* " ,style: TextStyle(fontSize: 22,color: Colors.redAccent),),
                        Padding(
                          padding: const EdgeInsets.only(left: 150),
                          child: Text('''
*صورة الجواز 
 *صورةشخصية 
 *صورة الاقامه 
 *نصدر له تاشيرة زيارة سنة متعددة* 
*اقامة 90 يوم*
*التنفيذ في نفس اليوم بفضل الله*
''',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        Image.asset("images/26.jpg"),
                       Card( color: Colors.redAccent,
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(15),
                         ),

                         child: Column(children: [ Text(
                           "*للتواصل واتس آب .. وفون                   01207124604",
                           style: TextStyle(fontSize: 18,color: Colors.white)),
                         Text(
                             "*زياره مقر الشركه 3 شارع صلاح سالم المهندسين",
                             style: TextStyle(fontSize: 18,color: Colors.white))],),)
                      ],
                    ),
                  ),
                ))));
  }
}
