import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:progect01/pages/home/guidey.dart';
import 'package:progect01/pages/Trips/trips1_mon.dart';
import 'package:progect01/pages/Trips/trips2_lakes.dart';
import 'package:progect01/pages/Trips/trips3_beaches.dart';
import 'package:progect01/pages/Trips/trips4_safari.dart';


class categoriesPage extends StatefulWidget {
  const categoriesPage({Key? key}) : super(key: key);

  @override
  State<categoriesPage> createState() => _categoriesPageState();
}

class _categoriesPageState extends State<categoriesPage> {
  /*void go(BuildContext ctx){
    Navigator.of(ctx).push(MaterialPageRoute(builder:(c)=>trips1()));
  }*/
  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection: TextDirection.rtl,
      child: SafeArea(
          child: Scaffold(
              appBar: AppBar(title: Center(child: Text("* تصنيفات *",style: TextStyle(fontSize: 30,),)),),
              body: Container(color: Colors.cyanAccent,
                child: GridView(

                  padding: EdgeInsets.all(5),
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 7/8,
                    mainAxisSpacing: 6,
                    crossAxisSpacing: 10,

                  ),
                  children: [
                    InkWell(onTap: () =>  Navigator.of(context).push(MaterialPageRoute(builder:(c)=>trips())),
                      child: Container(
                        //alignment: Alignment.bottomLeft,Image.asset("images/photo.png.jpg"),
                        padding: EdgeInsetsDirectional.all(10),

                        child: Text("شواطئ",
                            style: TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                                backgroundColor: Colors.black45)),
                        alignment: Alignment.center,
                        height: 80,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            image: DecorationImage(
                              image: AssetImage(
                                "images/6.jpg",
                              ),
                              fit: BoxFit.cover,
                            )),
                      ),
                    ),
                    InkWell(onTap: () =>  Navigator.of(context).push(MaterialPageRoute(builder:(c)=>  trips4())),
                      child: Container(
                        //alignment: Alignment.bottomLeft,Image.asset("images/photo.png.jpg"),
                        padding: EdgeInsetsDirectional.all(10),

                        child: Text("سفاري",
                            style: TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                                backgroundColor: Colors.black45)),
                        alignment: Alignment.center,
                        height: 80,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            image: DecorationImage(
                              image: AssetImage(
                                "images/18safari.jpg",
                              ),
                              fit: BoxFit.cover,
                            )),
                      ),
                    ),
                    InkWell(onTap: () =>   Navigator.push(context,
                        MaterialPageRoute(builder: (context) => trips1())),
                      child: Container(
                        //alignment: Alignment.bottomLeft,Image.asset("images/photo.png.jpg"),
                        padding: EdgeInsetsDirectional.all(10),


                        child: Text("جبال",
                            style: TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                                backgroundColor: Colors.black45)),
                        alignment: Alignment.center,
                        height: 80,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                            color: Colors.black54,
                            image: DecorationImage(
                              image: AssetImage(
                                "images/5.jpeg",
                              ),
                              fit: BoxFit.cover,
                            )),
                      ),
                    ),
                    InkWell(onTap: () =>  Navigator.of(context).push(MaterialPageRoute(builder:(c)=>trips2())),
                      child: Container(
                        //alignment: Alignment.bottomLeft,Image.asset("images/photo.png.jpg"),
                        padding: EdgeInsetsDirectional.all(10),

                        child: Text("بحيرات",
                            style: TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                                backgroundColor: Colors.black45)),
                        alignment: Alignment.center,
                        height: 80,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            image: DecorationImage(
                              image: AssetImage(
                                "images/1.jpg",
                              ),
                              fit: BoxFit.cover,
                            )),
                      ),
                    ),

                    InkWell(onTap: () =>  Navigator.of(context).push(MaterialPageRoute(builder:(c)=>guidey())),
                      child: Container(
                        //alignment: Alignment.bottomLeft,Image.asset("images/photo.png.jpg"),
                        padding: EdgeInsetsDirectional.all(10),

                        child: Text("دليل سياحي",
                            style: TextStyle(
                                fontSize: 36,
                                color: Colors.white,
                                backgroundColor: Colors.black45)),
                        alignment: Alignment.center,
                        height: 80,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            image: DecorationImage(
                              image: AssetImage(
                                "images/7.jpg",
                              ),
                              fit: BoxFit.cover,
                            )),
                      ),
                    ),
                    Container(
                      //alignment: Alignment.bottomLeft,Image.asset("images/photo.png.jpg"),
                      padding: EdgeInsetsDirectional.all(10),

                      child: Text("ملاحظات",
                          style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                              backgroundColor: Colors.black45)),
                      alignment: Alignment.center,
                      height: 80,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage(
                              "images/4.jpg",
                            ),
                            fit: BoxFit.cover,
                          )),
                    ),
                  ],
                ),
              ))),
    );
  }
}
