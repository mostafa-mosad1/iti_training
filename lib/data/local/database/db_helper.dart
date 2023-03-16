
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../../../utils/constants.dart';



class DbHelper {
  DbHelper._instance();

  static final DbHelper helper = DbHelper._instance();

  Future<String> getMyDbPath() async {
    String dbPath = await getDatabasesPath();
    return join(dbPath, dbname);
  }

  Future<Database> getDbInstance() async {
    String myDbPath = await getMyDbPath();
    return await openDatabase(myDbPath,
        version: dbVersion,
        singleInstance: true,
        onCreate: (db, dbVersion) => _createDb(db),
        onUpgrade: (db, newDbVersion, oldDbVersion) => _updateDb(db));
  }

  void _createDb(Database db) {
    String sql =
        "create table $tableName( $colId integer primary key autoincrement, $colText text, $colDate text, $colUpdatedDate text)";
    print(sql);
    db.execute(sql);
  }

  void _updateDb(Database db) {}
}
