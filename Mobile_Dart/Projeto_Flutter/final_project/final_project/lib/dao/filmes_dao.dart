import 'package:final_project/database/db_helper.dart';
import 'package:final_project/models/filme.dart';
import 'package:sqflite/sqflite.dart';

class FilmeDao {
  static final String table =
      'CREATE TABLE filmes(id INTERGER PRIMARY KEY AUTOINCREMENT,title TEXT, image_url TEXT)';
  static final String columnId = 'id';
  static final String title = 'title';
  static final String imageUrl = 'image_url';
  static final String nameTable = 'filmes';

  Future<int> insert(Filme filme) async {
    final Database db = await getDatabase();
    Map<String, dynamic> mapFilme = Map();
    mapFilme[title] = filme.title;
    mapFilme[imageUrl] = filme.imageUrl;
    return db.insert(nameTable, mapFilme);
  }

  Future<List<Filme>> findAll() async {
    final Database db = await getDatabase();
    List<Map<String, dynamic>> maps = await db.query(nameTable);
    List<Filme> filmes = [];
    for (Map<String, dynamic> map in maps) {
      Filme filme = Filme(map[imageUrl], map[title], id: map[columnId]);
      filmes.add(filme);
    }
    return filmes;
  }

  Future<int> update(Filme filme) async {
    final Database db = await getDatabase();
    Map<String, dynamic> mapFilme = Map();
    mapFilme[title] = filme.title;
    mapFilme[imageUrl] = filme.imageUrl;
    return db
        .update(nameTable, mapFilme, where: "id = ?", whereArgs: [filme.id]);
  }

  Future<int> delete(int id) async {
    final Database db = await getDatabase();
    return db.delete(nameTable, where: "id = ?", whereArgs: [id]);
  }

  Future<Filme?> findById(int id) async {
    final Database db = await getDatabase();
    List<Map<String, dynamic>> list =
        await db.query(nameTable, where: "$id = ?", whereArgs: [id]);
    Filme? filme;
    filme = Filme(list[0][imageUrl], list[0][title]);
    return filme;
  }
}
