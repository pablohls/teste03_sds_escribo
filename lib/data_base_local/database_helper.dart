import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

class DataBaseHelper {
  DataBaseHelper._();

  static final DataBaseHelper instace = DataBaseHelper._();

  static Database? _database;

  get database async {
    if (_database != null) return _database;

    _database = await _initDatabase();
    return _database;
  }

  _initDatabase() async {
    String path = join(await getDatabasesPath(), 'favoritos.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  _onCreate(db, version) async {
    await db.execute(_favoritos);
  }

  String get _favoritos => '''
    CREATE TABLE favoritos (
      titulo TEXT NOT NULL
    );
  ''';
}
