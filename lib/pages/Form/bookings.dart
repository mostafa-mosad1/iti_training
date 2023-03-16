import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:progect01/pages/home/categoriesPage.dart';
import 'package:progect01/widgets/Tab_Bar.dart';

import '../../data/local/database/CURD.dart';
import '../../models/Note.dart';
import '../../utils/datetime_manager.dart';


class show extends StatefulWidget {
  const show({Key? key}) : super(key: key);

  @override
  State<show> createState() => _showState();
}

class _showState extends State<show> {
  TextEditingController? _controller;
  TextEditingController? _controller1;
  GlobalKey<FormState>? _key;
  TextEditingController? _editController;
  GlobalKey<FormState>? _editKey;

  CURD? _curd;
  List<Note> _notes = [];

  @override
  void initState() {
    _curd = CURD();
    _controller = TextEditingController();
    _controller1 = TextEditingController();
    _key = GlobalKey();
    viewNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      //leading: Icon(Icons.person),
        title: Center(
            child: Text(
              "*Bookings*",
              style: TextStyle(fontSize: 30, color: Colors.red),
            ))),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(children: [Container(
          height: 250,
          width: double.infinity,
          child: Carousel(
            images: [
              AssetImage("images/1.jpg"),
              AssetImage("images/2.jpg"),
              AssetImage("images/3.jpg"),
              AssetImage("images/4.jpg")
            ],
            // dotSize: 4,
            //dotIncreaseSize: 2,
            //dotBgColor: Colors.white12,
          ),
        ),
          ListView.builder(
            itemCount: _notes.length,
            itemBuilder: (context, index) => ListTile(
              leading: Icon(Icons.note),
              title: Text(_notes[index].noteText),
              subtitle: Text(_notes[index].noteDate!),
              trailing: SizedBox(
                width: 100,
                child: Row(children: [
                  IconButton(
                      onPressed: () => deleteNote(_notes[index].noteId),
                      icon: const Icon(Icons.delete)),
                  IconButton(
                      onPressed: () => _openEditDialog(_notes[index]),
                      icon: const Icon(Icons.edit))
                ]),
              ),
            ),
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
          )
        ]),
      )),
    bottomNavigationBar: (ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>(tabBar()))); },

    child:Text("صفحه الرحلات",style: TextStyle(fontSize: 25),) )));
  }

  void saveMyNote(Note note) {
    _curd?.insert(note).then((value) {
      if (value > 0) {
        print('Your note is inserted');
        _controller?.text = '';
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
              title: const Text('Edit_Form'),
              content: Form(
                  key: _editKey,
                  child: TextFormField(
                      controller: _editController,
                      validator: (value) =>
                          value!.isEmpty ? 'Note is required' : null,
                      decoration: const InputDecoration(
                          labelText: 'Email', hintText: 'ensure your Email'))),
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
