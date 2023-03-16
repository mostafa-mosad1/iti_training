import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:progect01/pages/Form/Booking_Out.dart';

import '../Form/Booking_Form.dart';

class outCountry extends StatefulWidget {
  const outCountry({Key? key}) : super(key: key);

  @override
  State<outCountry> createState() => _outCountryState();
}

class _outCountryState extends State<outCountry> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(appBar: AppBar(title:  Center(
        child: Text("عروض",
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
            )),
      ),



      ),


          body: //InkWell(onTap: () =>  Navigator.of(context).push(MaterialPageRoute(builder:(c)=>bookForm())),
          // child:
          Container(color: Colors.cyanAccent,
            child: SingleChildScrollView(
              child: Directionality(textDirection: TextDirection.rtl,
                child: Column(
                  children: [
                    Card(
                      color: Colors.redAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 7,
                      margin: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                ),
                                child: Image.asset(
                                  "images/23.jpg",
                                  height: 250,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                height: 250,
                                alignment: Alignment.bottomRight,
                                padding: EdgeInsets.symmetric(
                                  vertical: 10,
                                  horizontal: 20,
                                ),
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colors.black.withOpacity(0),
                                      Colors.black.withOpacity(0.8),
                                    ],
                                    stops: [0.6, 1],
                                  ),
                                ),
                                child: Text(
                                  "باريس",
                                  style: TextStyle(
                                      fontSize: 30,color: Colors.white,
                                      backgroundColor: Colors.white12,
                                      fontWeight: FontWeight.bold),
                                  overflow: TextOverflow.fade,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.today,
                                      color: Theme.of(context).accentColor,
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Text("لم تحدد"),
                                    SizedBox(width: 10,),
                                    Icon(
                                      Icons.work_outline,
                                      color: Theme.of(context).accentColor,
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Text("web developer"),
                                  ],
                                ),

                                Row(
                                  children: [
                                    Icon(
                                      Icons.book_outlined,
                                      color: Theme.of(context).accentColor,
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    InkWell(
                                        child: Text(
                                          "للمزيد",
                                          style: TextStyle(fontSize: 20),
                                        ),
                                        onTap: () => Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (c) => const bookOut()))),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Text(" مطلوب",
                                  style: TextStyle(
                                    fontSize: 32,
                                    color: Colors.blue,
                                  )),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("1-Full_stack",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                      )),
                                  SizedBox(width: 8,),
                                  Text("2-Back_End",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                      )),
                                  SizedBox(width: 8,),
                                  Text("3-Frount_End",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                      ))
                                ],
                              ),SizedBox(height: 10,),
                              Text("شروط العمل",
                                  style: TextStyle(
                                    fontSize: 32,
                                    color: Colors.blue,
                                  )),
                              Text("اتم الخدمه العسكريه",
                                  style: TextStyle(
                                    fontSize: 27,
                                    color: Colors.white,
                                  )),
                              Text("خبراء لا تقل عن 3 سنين شغل",
                                  style: TextStyle(
                                    fontSize: 27,
                                    color: Colors.white,
                                  )),
                              Text("مد العقد 3 سينين قابله للتجديد",
                                  style: TextStyle(
                                    fontSize: 27,
                                    color: Colors.white,
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                    Card(
                      color: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 7,
                      margin: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                ),
                                child: Image.asset(
                                  "images/24.jpg",
                                  height: 250,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                height: 250,
                                alignment: Alignment.bottomRight,
                                padding: EdgeInsets.symmetric(
                                  vertical: 10,
                                  horizontal: 20,
                                ),
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colors.black.withOpacity(0),
                                      Colors.black.withOpacity(0.8),
                                    ],
                                    stops: [0.6, 1],
                                  ),
                                ),
                                child: Text(
                                  "انجليتراء",
                                  style: TextStyle(
                                      fontSize: 25,color: Colors.white,
                                      backgroundColor: Colors.white12,
                                      fontWeight: FontWeight.bold),
                                  overflow: TextOverflow.fade,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.today,
                                      color: Theme.of(context).accentColor,
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Text("لم تحدد"),
                                    SizedBox(width: 10,),
                                    Icon(
                                      Icons.work_outline,
                                      color: Theme.of(context).accentColor,
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Text("Mobile_App"),
                                  ],
                                ),

                                Row(
                                  children: [
                                    Icon(
                                      Icons.book_outlined,
                                      color: Theme.of(context).accentColor,
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    InkWell(
                                        child: Text(
                                            "للمزيد",
                                          style: TextStyle(fontSize: 20),
                                        ),
                                        onTap: () => Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (c) => const bookOut()))),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Text(" مطلوب",
                                  style: TextStyle(
                                    fontSize: 32,
                                    color: Colors.redAccent,
                                  )),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("1-Flutter",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                      )),
                                  SizedBox(width: 8,),
                                  Text("2-IOS",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                      )),
                                  SizedBox(width: 8,),
                                  Text("3-Android",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                      ))
                                ],
                              ),SizedBox(height: 10,),
                              Text("شروط العمل",
                                  style: TextStyle(
                                    fontSize: 32,
                                    color: Colors.redAccent,
                                  )),
                              Text("اتم الخدمه العسكريه",
                                  style: TextStyle(
                                    fontSize: 27,
                                    color: Colors.white,
                                  )),
                              Text("خبراء لا تقل عن 3 سنين شغل",
                                  style: TextStyle(
                                    fontSize: 27,
                                    color: Colors.white,
                                  )),
                              Text("مد العقد 3 سينين قابله للتجديد",
                                  style: TextStyle(
                                    fontSize: 27,
                                    color: Colors.white,
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                    Card(
                      color: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 7,
                      margin: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                ),
                                child: Image.asset(
                                  "images/25.jpg",
                                  height: 250,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                height: 250,
                                alignment: Alignment.bottomRight,
                                padding: EdgeInsets.symmetric(
                                  vertical: 10,
                                  horizontal: 20,
                                ),
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colors.black.withOpacity(0),
                                      Colors.black.withOpacity(0.8),
                                    ],
                                    stops: [0.6, 1],
                                  ),
                                ),
                                child: Text("امريكا",
                                  style: TextStyle(
                                      fontSize: 25,color: Colors.white,
                                      backgroundColor: Colors.white12,
                                      fontWeight: FontWeight.bold),
                                  overflow: TextOverflow.fade,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.today,
                                      color: Theme.of(context).accentColor,
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Text("لم تحدد"),
                                    SizedBox(width: 10,),
                                    Icon(
                                      Icons.work_outline,
                                      color: Theme.of(context).accentColor,
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Text("Cyber_Security"),
                                  ],
                                ),

                                Row(
                                  children: [
                                    Icon(
                                      Icons.book_outlined,
                                      color: Theme.of(context).accentColor,
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    InkWell(
                                        child: Text(
                                          "للمزيد",
                                          style: TextStyle(fontSize: 20),
                                        ),
                                        onTap: () => Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (c) => const bookOut()))),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Text(" مطلوب",
                                  style: TextStyle(
                                    fontSize: 32,
                                    color: Colors.blue,
                                  )),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("1-CCNA",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                      )),
                                  SizedBox(width: 30,),
                                  Text("2-CISCO",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                      )),
                                  SizedBox(width: 8,),

                                ],
                              ),SizedBox(height: 10,),
                              Text("شروط العمل",
                                  style: TextStyle(
                                    fontSize: 32,
                                    color: Colors.blue,
                                  )),
                              Text("اتم الخدمه العسكريه",
                                  style: TextStyle(
                                    fontSize: 27,
                                    color: Colors.white,
                                  )),
                              Text("خبراء لا تقل عن 3 سنين شغل",
                                  style: TextStyle(
                                    fontSize: 27,
                                    color: Colors.white,
                                  )),
                              Text("مد العقد 3 سينين قابله للتجديد",
                                  style: TextStyle(
                                    fontSize: 27,
                                    color: Colors.white,
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),

      // ),
    );
  }
}
