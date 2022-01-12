// ignore_for_file: prefer_const_declarations

import 'package:final_project/dao/filmes_dao.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

final String nameDb = 'filmes.db';
final int versao = 1;

Future<Database> getDatabase() async {
  final String path = join(await getDatabasesPath(), nameDb);
  return openDatabase(path, onCreate: (db, version) {
    db.execute(FilmeDao.table);
  }, version: versao);
}
