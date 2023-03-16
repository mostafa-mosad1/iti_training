import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:progect01/pages/Form/bookings.dart';
import '../../data/local/database/CURD.dart';
import '../../models/Note.dart';
import '../../utils/datetime_manager.dart';
import '../../widgets/Tab_Bar.dart';
import '../Trips/trips1_mon.dart';
import '../Trips/trips2_lakes.dart';
import '../Trips/trips3_beaches.dart';
import '../Trips/trips4_safari.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController? _controller;
  TextEditingController? _controller1;
  TextEditingController? _controller2;
  TextEditingController? _controller3;
  TextEditingController? _controller4;
  GlobalKey<FormState>? _key;
  TextEditingController? _editController;
  GlobalKey<FormState>? _editKey;

  CURD? _curd;
  List<Note> _notes = [];

  //***********
  final _formKey = GlobalKey<FormState>();
  String _email = "", _password = "", _mobile = "";
  List<String> itemsList = ["شاطئ الغرام", "شرم الشيخ", "شاطئ المعمورة",
    "رحلات دهب", "رحلات الغردقة", "رحلات شرم ",
    "جبال البحر الاحمر","جبل سانت كاترين", "جبل موسي",
    "بحيرة سيوة المالحة", "بحيرة البرلس", "بحيرة البردويل",

    "اخري",



  ];
  String? selectedItem = "شرم الشيخ";


  @override
  void initState() {
    _curd = CURD();
    _controller = TextEditingController();
    _controller1 = TextEditingController();
    _controller2 = TextEditingController();
    _controller3 = TextEditingController();
    _controller4 = TextEditingController();
    _key = GlobalKey();
    viewNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:  Scaffold(
    appBar: AppBar(
    title: Center(
        child: Text(
        "* Go Bus *",
        style: TextStyle(
        fontSize: 30,
    ),
    )),),
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
            ],
          )),

      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: 250,
            width: double.infinity,
            child: Carousel(
              images: [
                AssetImage("images/21cairo2.jpg"),
                AssetImage("images/22alex.jpg"),
                AssetImage("images/2.jpg"),
                AssetImage("images/21cairo2.jpg"),
                AssetImage("images/4.jpg")
              ],
              // dotSize: 4,
              //dotIncreaseSize: 2,
              //dotBgColor: Colors.white12,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Form(
              key: _key,
              child: Column(
                children: [
                  TextFormField(
                    //onChanged: (value) => _email = value,
                    controller: _controller,
                    validator: (value) =>
                        value!.isEmpty ? "enter a valid email" : null,
                    decoration: InputDecoration(
                        labelText: "enter your email",
                        hintText: "test@gmail.com",
                        prefixIcon: Icon(
                          Icons.mail,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(35),
                            borderSide: BorderSide(color: Colors.redAccent))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 120),
                    child: SizedBox(
                      height: 40,
                      width: double.infinity,
                      child: DropdownButton<String>(
                          value: selectedItem,
                          items: itemsList
                              .map((item) => DropdownMenuItem(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.red),
                                  )))
                              .toList(),
                          onChanged: (item) =>
                              setState(() => selectedItem = item)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    //onChanged: (value) => _mobile = value,
                    controller: _controller2,

                    validator: (value) => value!.length < 11
                        ? "your mobile must be 11 character"
                        : null,
                    decoration: InputDecoration(
                        hintText: "enter your mobile",
                        prefixIcon: Icon(
                          Icons.phone,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(35),
                            borderSide: BorderSide(color: Colors.redAccent))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    // onChanged: (value) => _mobile = value,

                    controller: _controller1,
                    validator: (value) =>
                    value!.isEmpty ? "Please Enter date" : null,
                    decoration: InputDecoration(
                        hintText: "1/1/2022",
                        labelText: "Enter the start date of trip",
                        prefixIcon: Icon(
                          Icons.date_range_outlined,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(35),
                            borderSide: BorderSide(color: Colors.redAccent))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    // onChanged: (value) => _mobile = value,
                    validator: (value) =>
                    value!.isEmpty ? "Please Enter Number Of People" : null,
                    controller: _controller3,
                    decoration: InputDecoration(
                        labelText: "Enter Number Of People",
                        prefixIcon: Icon(
                          Icons.date_range_outlined,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(35),
                            borderSide: BorderSide(color: Colors.redAccent))),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (_key!.currentState!.validate()) {
                          String text = _controller!.value.text;
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => show()));
                          Note note = Note(
                              noteText: text,
                              noteDate: DateTimeManager.currentDateTime());
                          saveMyNote(note);
                        }
                      },
                      child: const Text(
                        'booked',
                        style: TextStyle(fontSize: 20),
                      ))
                ],
              )),

        ]),
      )),


    ));
  }

  void saveMyNote(Note note) {
    _curd?.insert(note).then((value) {
      if (value > 0) {
        print('Your note is inserted');
        _controller?.text = '';
        _controller1?.text = '';
        _controller2?.text = '';
        _controller3?.text = '';
        viewNotes();
      }
    });
  }

  void viewNotes() {
    _curd?.query().then((value) {
      setState(() {
        _notes = value;
      });
    });
  }

  void deleteNote(int? noteId) {
    _curd?.delete(noteId).then((value) {
      if (value > 0) {
        print('1 note deleted');
        viewNotes();
      }
    });
  }

  void updateNote(Note note) {
    _curd?.update(note).then((value) {
      if (value > 0) {
        print('1 note updated');
        viewNotes();
      }
    });
  }

  _openEditDialog(Note not) {
    _editController = TextEditingController(text: not.noteText);
    _editKey = GlobalKey();
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text('Update Note'),
              content: Form(
                  key: _editKey,
                  child: TextFormField(
                      controller: _editController,
                      validator: (value) =>
                          value!.isEmpty ? 'Note is required' : null,
                      decoration: const InputDecoration(
                          labelText: 'Note', hintText: 'Write your Note'))),
              actions: [
                TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Cancel')),
                TextButton(
                    onPressed: () {
                      if (_editKey!.currentState!.validate()) {
                        String newText = _editController!.value.text;
                        not.noteText = newText;
                        not.updatedNoteDate = DateTimeManager.currentDateTime();
                      }
                      updateNote(not);
                      Navigator.pop(context);
                    },
                    child: const Text('Update'))
              ],
            ));
  }
}
