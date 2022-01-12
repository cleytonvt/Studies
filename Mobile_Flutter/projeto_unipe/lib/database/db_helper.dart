import 'package:sqflite/sqflite.dart';
import 'package:projeto_unipe/dao/filmes_dao.dart';
import 'package:projeto_unipe/models/filme.dart';
import 'package:path/path.dart';

final String name_db = "filmes.db";

Future<Database> getDatabase() async {
  final String path = join(await getDatabasesPath(),
      name_db); //data/data/database/databases/contatos.db
  return openDatabase(path, onCreate: (db, version) {
    db.execute(FilmeDao.table);
  }, version: 5);
}
