

import 'package:sqflite/sqflite.dart';


import '../../../models/Note.dart';
import '../../../utils/constants.dart';
import 'db_helper.dart';

class CURD {
  Database? db;

  CURD() {
    init();
  }

  init() async {
    db = await DbHelper.helper.getDbInstance();
    print('Database initialized');
  }

  Future<int> insert(Note note) async {

    return await db!.insert(tableName, note.toMap(),);
  }

  Future<int>delete(int? noteId) async{
    return await db!.delete(tableName,where:'$colId = ?',whereArgs: [noteId]);
  }

  Future<int>update(Note note) {
    return db!.update(tableName, note.toMap(),where:'$colId =?' ,whereArgs: [note.noteId]);
  }

  Future<List<Note>>query() async{
      Database  db = await DbHelper.helper.getDbInstance();
      List<Map<String, dynamic>> data = await db.query(
          tableName, orderBy: '$colDate desc');
      List<Note> notes = data.map((e) => Note.fromNote(e)).toList();
      return notes;
    }
  }

