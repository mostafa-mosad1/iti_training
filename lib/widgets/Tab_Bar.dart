import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:progect01/pages/Form/Booking_Form.dart';
import 'package:progect01/pages/Form/Booking_Out.dart';
import 'package:progect01/pages/Trips/trips1_mon.dart';
import 'package:progect01/pages/Trips/trips2_lakes.dart';
import 'package:progect01/pages/Trips/trips3_beaches.dart';
import 'package:progect01/pages/home/categoriesPage.dart';

import '../pages/Trips/Out_Country.dart';
import '../pages/Trips/trips4_safari.dart';

class tabBar extends StatefulWidget {
  const tabBar({Key? key}) : super(key: key);

  @override
  State<tabBar> createState() => _tabBarState();
}

class _tabBarState extends State<tabBar> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: DefaultTabController(
            length: 3,
            child: SafeArea(
              child: Scaffold(
                appBar: AppBar(
                  title: Center(
                      child: Text(
                    "* Go Bus *",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  )),
                  bottom: TabBar(
                    tabs: [
                      Tab(
                        icon: Icon(Icons.dashboard),
                        text: " رحلات داخلي",
                      ),
                      Tab(
                        icon: Icon(Icons.local_airport),
                        text: "العمل في الخارج",
                      ),
                      Tab(
                        icon: Icon(Icons.book_outlined),
                        text: "للحجز",
                      )
                    ],
                  ),
                ),
                drawer: Drawer(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 1,
                        ),
                        Container(color: Colors.blue,height: 70,
                          child: Center(
                            child: Text(
                              "* Go Bus *",
                              style:
                              TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.white),),),
                        ),
                        ListTile(leading: Icon(Icons.dashboard),title: Text("شواطئ"),subtitle: Text("3 رحلات"),onTap: ()=>  Navigator.of(context).push(MaterialPageRoute(builder:(c)=>  trips()))),
                        ListTile(leading: Icon(Icons.dashboard),title: Text("سفاري"),subtitle: Text("3 رحلات"),onTap: ()=>  Navigator.of(context).push(MaterialPageRoute(builder:(c)=>  trips4()))),
                        ListTile(leading: Icon(Icons.dashboard),title: Text("جبال"),subtitle: Text("3 رحلات"),onTap: ()=>  Navigator.of(context).push(MaterialPageRoute(builder:(c)=>  trips1()))),
                        ListTile(leading: Icon(Icons.dashboard),title: Text("بحيرات"),subtitle: Text("3 رحلات"),onTap: ()=>  Navigator.of(context).push(MaterialPageRoute(builder:(c)=>  trips2()))),
                        ListTile(leading: Icon(Icons.dashboard),title: Text("العمل في الخارج"),subtitle: Text("3 عروض"),onTap: ()=>  Navigator.of(context).push(MaterialPageRoute(builder:(c)=>  outCountry()))),
                      ],
                    )),

                body: TabBarView(
                  children: [categoriesPage(), outCountry(), MyHomePage()],
                ),
              ),
            )));
  }
}
