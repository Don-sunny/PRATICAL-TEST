import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  Future<Database> database() async {
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'user_database.db');
    return openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      await db.execute(
          'CREATE TABLE Test (id INTEGER PRIMARY KEY, name TEXT, value INTEGER, num REAL)');
    });
  }

  Future<void> insertuser(UserData userData) async {
    final Database db = await database();
    await db.insert(
      'user_data',
      userData.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }
}

class UserData {
  final String lang;
  final String tz;

  UserData({required this.lang, required this.tz});

  Map<String, dynamic> toMap() {
    return {
      'lang': lang,
      'tz': tz,
    };
  }
}
