import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class guidey extends StatefulWidget {
  const guidey({Key? key}) : super(key: key);

  @override
  State<guidey> createState() => _guideyState();
}

class _guideyState extends State<guidey> {
  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection: TextDirection.rtl,
    child: SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("* دليل سياحي *",
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
              )),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(color:Colors.cyanAccent,
          child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Center(
              child: Text("السياحة في مصر",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      backgroundColor: Colors.indigoAccent)),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
                "السياحة في مصر عرفت طوال تاريخها بأنها مقصد للعديد من محبي السياحة، غير أن اكتشاف آثار الفراعنة منذ بدايات القرن الماضي قد اضاف سحراً خاصاً اليها بجانب ما بها من آثار دينية وحضارية فريدة، إضافة إلى ما تتمتع به من موقع جغرافي وسط العالم ومناخها المعتدل صيفاً وشتاءً، وسواحلها الجميلة الممتدة، وشواطئها المليئة بكنوز الشعب المرجانية النادرة.",style: TextStyle(fontSize: 20)),
            SizedBox(
              height: 4,
            ),
            Text(
                "وتتميز مصر بوفرة المزارات السياحية على اختلاف أنواعها، وانتشار الجوامع والمعابد والمتاحف والآثار والمباني التاريخية والفنية والحدائق الشاسعة على أرضها، وامتلاكها بنية تحتية قوية تقوم على خدمة قطاع السياحة في مصر بما في ذلك الغرف الفندقية والمنتجعات السياحية ومكاتب الطيران.",style: TextStyle(fontSize: 20)),
            Image.asset(
              "images/21cairo2.jpg",
              width: double.infinity,
            ),
            SizedBox(
              height: 6,
            ),
            Text("افضل مواسم السياحة في مصر",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    backgroundColor: Colors.indigoAccent)),
            SizedBox(
              height: 6,
            ),
            Text(
                "عتبر فصلي الشتاء والربيع، اي من شهر سبتمبر وحتى مارس أفضل اشهر السنة لزيارة الاماكن السياحية في مصر حيث تكون درجات الحرارة في أدنى معدلاتها ويمكن للسائح التمتع بنشاطات عديدة في الهواء الطلق",style: TextStyle(fontSize: 20)),
            SizedBox(height: 6,),Text(
              "السياحة في مصر القاهرة",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    backgroundColor: Colors.indigoAccent)
            ),
            SizedBox(height: 6,),
            Text('''مدينة القاهرة اهم مدن مصر وهي مكان رائع تجتمع فيه الكثير من الاماكن السياحية في مصر منها الترفيهية ، الثقافية والتاريخية.

تشتهر بأجوائها الشعبية وحياتها الليلية حيث المقاهي والكورنيش الذي يعج بالزوار القادمين للاستمتاع بمشاهدة النيل في المساء.

''',style: TextStyle(fontSize: 20)),
            Image.asset("images/20cairo.jpg",width: double.infinity,),
            SizedBox(height: 6,),
            Text("السياحة في مصر الاسكندرية",style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                backgroundColor: Colors.indigoAccent)),
            SizedBox(height: 6,),
            Text("الاسكندرية العاصمة الثانية لمصر واحدى اجمل مدن مصر في حوض البحر المتوسط والملقبة بعروس البحر الابيض المتوسط، المدينة المليئة بالحياة تضم الكثير من المعالم الهامة حيث تضم اكبر موانئ مصر على البحر المتوسط وتذخر بالكثير من الاماكن السياحية في مصر",style: TextStyle(fontSize: 20))
            ,
            Image.asset("images/22alex.jpg",width: double.infinity,),
            Text("السياحة في مصر شرم الشيخ",style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                backgroundColor: Colors.indigoAccent)),
            SizedBox(height: 6,),
            Text("تعتبر شرم الشيخ من اشهر المناطق السياحية في مصر واجمل المنتجعات السياحية في العالم حيث توفر لزوارها كل ما تحتاجون للإجازة والاسترخاء، كما انها تعد من أفضل بقاع العالم لرياضة الغطس والغوص ومختلف الرياضات المائية الأخرى، تضم المدينة ايضاً صحراء رائعة وأسواق شعبية وتقليدية وتكثر فيها الفنادق الفاخرة والمنتجعات والمطاعم الشّرقية والغربية",style: TextStyle(fontSize: 20),)
            ,
            Image.asset("images/17safari.jpg",width: double.infinity,)
          ],
        ),
      ),
    ))));
  }
}
