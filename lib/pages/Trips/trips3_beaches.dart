import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Form/Booking_Form.dart';

class trips extends StatefulWidget {
  const trips({Key? key}) : super(key: key);

  @override
  State<trips> createState() => _tripsState();
}

class _tripsState extends State<trips> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Center(
                child: Text("*شواطئ *   ",
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
                                  "images/14beach.jpg",
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
                                  "شاطئ الغرام",
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
                                  Text(''''اليوم الاول:دخول شاطي الغرام هو من احسن شواطئ مراس مطروح
     تناول وجبة الغداء في المطعم ع فيو البحر
     زيارة السوق التجاري للشراء الهدايا 
    'استمتاع المناظر الجملية''',
                                      style: TextStyle(
                                        fontSize: 15,
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
                                  "images/16beach.jpg",
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
                                  "شرم الشيخ",
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
                                  Text(''''اليوم الاول:دخول شاطي عايده هو من احسن شواطئ شرم الشيخ
     تناول وجبة الغداء في المطعم ع فيو البحر
     زيارة السوق التجاري للشراء الهدايا 
    'استمتاع المناظر الجملية''',
                                      style: TextStyle(
                                        fontSize: 15,
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
                      color: Colors.amber,
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
                                  "images/15beach.jpg",
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
                                  "شاطئ المعمورة ",
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
                                  Text(''''اليوم الاول:دخول شاطي المعموره هو من احسن شواطئ الاسكندرية
     تناول وجبة الغداء في المطعم ع فيو البحر
     زيارة السوق التجاري للشراء الهدايا 
    'استمتاع المناظر الجملية''',
                                      style: TextStyle(
                                        fontSize: 15,
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

