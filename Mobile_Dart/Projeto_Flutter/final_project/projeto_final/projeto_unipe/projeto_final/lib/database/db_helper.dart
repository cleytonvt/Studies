import 'package:projeto_final/dao/contato_dao.dart';
import 'package:projeto_final/model/contato.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

final String name_db = "contatos.db";
//async - await
Future<Database> getDatabase() async {
  final String path = join(await getDatabasesPath(),
      name_db); //data/data/database/databases/contatos.db
  return openDatabase(path, onCreate: (db, version) {
    db.execute(ContatoDao.table);
  }, version: 1);
}
