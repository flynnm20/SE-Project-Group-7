import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'bugData.dart';

class DBHelper {
  static Database _db;
  static const String IMAGEID = 'imageID';
  static const String TIMETAKEN = 'timeTaken';
  static const String LOCATION = 'location';
  static const String IMAGEDESC = 'imageDescription';
  static const String TABLE = 'bugImages';
  static const String DB_NAME = 'bugDatabase.db';

  DBHelper._();
  static final DBHelper dataer = DBHelper._();

  Future<Database> get db async {
    print("attempting to get DB");
    if (null != _db) {
      print("Gotten DB");
      return _db;
    }
    _db = await initDB();
    return _db;
  }

  initDB() async {
    print("in initDB");
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "bugDatabase.db");
    print("db does not exist, creating");
    ByteData data = await rootBundle.load(join("sqldatabasebuilder", "bugDatabase.db"));
    List<int> bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
    await new File(path).writeAsBytes(bytes);
    var dbs = await openDatabase(path);
    print("completed");
    return dbs;
    }


  Future<bugData> save(bugData bug) async {
    var dbClient = await db;
    await dbClient.insert(TABLE, bug.toMap(), conflictAlgorithm: ConflictAlgorithm.replace);
    return bug;
  }

  Future<List<bugData>> getinfo() async {
    print("querying db");
    var dbClient = await db;
    List<Map> maps = await dbClient.query(TABLE, columns: [IMAGEID, TIMETAKEN,LOCATION,IMAGEDESC]);
    List<bugData> bugs = [];
    if (maps.length > 0) {
      for (int i = 0; i < maps.length; i++) {
        bugs.add(bugData.fromMap(maps[i]));
      }
    }
    print("Gotten data, returning");
    return bugs;
  }

  Future close() async {
    var dbClient = await db;
    dbClient.close();
  }


}
