import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Form/Booking_Form.dart';

class trips2 extends StatefulWidget {
  const trips2({Key? key}) : super(key: key);

  @override
  State<trips2> createState() => _trips2State();
}

class _trips2State extends State<trips2> {
  @override
  Widget build(BuildContext context) {
    return   SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Center(
                child: Text("* بحيرات*   ",
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
                child:  Directionality(textDirection: TextDirection.rtl,
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
                                  "images/13lakes.jpg",
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
                                  "بحيرة سيوة المالحة",
                                  style: TextStyle(
                                      fontSize: 25,
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
                                    Text('4 أيام'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.wb_sunny,
                                      color: Theme.of(context).accentColor,
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Text("صيف"),
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
                                          "احجز الان",
                                          style: TextStyle(fontSize: 20),
                                        ),
                                        onTap: () => Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (c) => MyHomePage()))),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Text("البرنامج",
                                  style: TextStyle(
                                    fontSize: 27,
                                    color: Colors.white,
                                  )),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('''
        دخول اجمل بحيرة سيوة المالحة
جولة سياحية على الأقدام في المنطق السياحيه
      تناول وجبة الغداء ع فيو رايق ع البحيرة
           استمتاع المناظر الجملية ع البحيرة''',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                      ))
                                ],
                              )
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
                                  "images/11lakes.jpg",
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
                                  "بحيرة البرلس",
                                  style: TextStyle(
                                      fontSize: 25,
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
                                    Text('4 أيام'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.wb_sunny,
                                      color: Theme.of(context).accentColor,
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Text("صيف"),
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
                                          "احجز الان",
                                          style: TextStyle(fontSize: 20),
                                        ),
                                        onTap: () => Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (c) => MyHomePage()))),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Text("البرنامج",
                                  style: TextStyle(
                                    fontSize: 27,
                                    color: Colors.white,
                                  )),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('''
             دخول اجمل بحيرة البرلس 
جولة سياحية على الأقدام في المنطق السياحيه
      تناول وجبة الغداء ع فيو رايق ع البحيرة
           استمتاع المناظر الجملية ع البحيرة''',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                      ))
                                ],
                              )
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
                                  "images/11lakes.jpg",
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
                                  "بحيرة البردويل ",
                                  style: TextStyle(
                                      fontSize: 25,
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
                                    Text('4 أيام'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.wb_sunny,
                                      color: Theme.of(context).accentColor,
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Text("صيف"),
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
                                          "احجز الان",
                                          style: TextStyle(fontSize: 20),
                                        ),
                                        onTap: () => Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (c) => MyHomePage()))),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Text("البرنامج",
                                  style: TextStyle(
                                    fontSize: 27,
                                    color: Colors.white,
                                  )),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('''
             دخول اجمل بحيرة البردويل
جولة سياحية على الأقدام في المنطق السياحيه
      تناول وجبة الغداء ع فيو رايق ع البحيرة
           استمتاع المناظر الجملية ع البحيرة''',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                      ))
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )),
            ),
      ),
      // ),
    );
  }
}
