import 'dart:convert';
import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  DatabaseHelper._privateContructor();

  static final DatabaseHelper instance = DatabaseHelper._privateContructor();

  static Database? _database;
  Future<Database> get database async => _database ??= await _initDatabase();

  Future<Database> _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, 'favoritos.db');
    return await openDatabase(path, version: 1, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
    CREATE TABLE favoritos(
      id INTEGER PRIMARY KEY,
      name TEXT
    )
    ''');
  }

  //Future<List<dynamic>>
  getFavoritos() async {
    Database db = await instance.database;
    var favoritos = await db.query(
      'favoritos',
      columns: ['name'],
    );
    //final json = jsonDecode(favoritos.);
    //List<dynamic> favoritosList = favoritos.isNotEmpty ? favoritos : [];
    print(favoritos);
    //return favoritosList;
  }

  Future<int> add(String favorito) async {
    Database db = await instance.database;
    return await db.insert('favoritos', {'name': favorito});
  }
}
