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

  Future<Database> get db async {
    if (null != _db) {
      return _db;
    }
    _db = await initDB();
    return _db;
  }

  initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "bugDatabase.db");

    File db = new File(path);
    bool exists = db.exists() as bool;
    if(exists){
      var db = await openDatabase(path);
      return db;
    }else{
      ByteData data = await rootBundle.load(join("sqldatabasebuilder", "bugDatabase.db"));
      List<int> bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      await new File(path).writeAsBytes(bytes);
      var db = await openDatabase(path);
      return db;
    }

  }

  Future<bugData> save(bugData bug) async {
    var dbClient = await db;
    await dbClient.insert(TABLE, bug.toMap(), conflictAlgorithm: ConflictAlgorithm.replace);
    return bug;
  }

  Future<List<bugData>> getinfo() async {
    var dbClient = await db;
    List<Map> maps = await dbClient.query(TABLE, columns: [IMAGEID, TIMETAKEN,LOCATION,IMAGEDESC]);
    List<bugData> bugs = [];
    if (maps.length > 0) {
      for (int i = 0; i < maps.length; i++) {
        bugs.add(bugData.fromMap(maps[i]));
      }
    }
    return bugs;
  }

  Future close() async {
    var dbClient = await db;
    dbClient.close();
  }


}
