import 'package:projeto_unipe/database/db_helper.dart';
import 'package:projeto_unipe/models/filme.dart';
import 'package:sqflite/sqflite.dart';

class FilmeDao{

  static final String table = 'CREATE TABLE filmes('
      'id INTEGER PRIMARY KEY AUTOINCREMENT, '
      'titulo TEXT, '
      'genero TEXT, '
      'idade TEXT, '
      'duracao TEXT, '
      'pontos REAL, '
      'descricao TEXT, '
      'ano TEXT, '
      'url_image TEXT)';
  static final String columnId = 'id';
  static final String columnTitulo = 'titulo';
  static final String columnGenero = 'genero';
  static final String columnIdade = 'idade';
  static final String columnDuracao = 'duracao';
  static final String columnPontos = 'pontos';
  static final String columnDescricao = 'descricao';
  static final String columnAno = 'ano';
  static final String columnUrlImage = 'url_image';
  static final String nameTable = "filmes";

  Future<int> insert(Filme filme) async {
    final Database db = await getDatabase();
    Map<String, dynamic> mapFilme = Map();
    mapFilme['$columnTitulo'] = filme.titulo;
    mapFilme['$columnGenero'] = filme.genero;
    mapFilme['$columnIdade'] = filme.idade;
    mapFilme['$columnDuracao'] = filme.duracao;
    mapFilme['$columnPontos'] = filme.pontos;
    mapFilme['$columnDescricao'] = filme.descricao;
    mapFilme['$columnAno'] = filme.ano;
    mapFilme['$columnUrlImage'] = filme.imageUrl;
    return db.insert('$nameTable', mapFilme);
  }

  Future<List<Filme>> findAll() async {
    final Database db = await getDatabase();
    List<Map<String, dynamic>> maps = await db.query('$nameTable');
    List<Filme> filmes = [];
    for (Map<String, dynamic> map in maps) {
      Filme filme =
      Filme(map['$columnTitulo'], map['$columnGenero'],map['$columnIdade'],map['$columnDuracao'],map['$columnPontos'],map['$columnDescricao'],map['$columnAno'], map['$columnUrlImage'], id: map['$columnId']);
      filmes.add(filme);
    }
    return filmes;
  }

  Future<int> update(Filme filme) async{
    final Database db = await getDatabase();
    Map<String, dynamic> mapFilme = Map();
    mapFilme['$columnTitulo'] = filme.titulo;
    mapFilme['$columnGenero'] = filme.genero;
    mapFilme['$columnIdade'] = filme.idade;
    mapFilme['$columnDuracao'] = filme.duracao;
    mapFilme['$columnPontos'] = filme.pontos;
    mapFilme['$columnDescricao'] = filme.descricao;
    mapFilme['$columnAno'] = filme.ano;
    mapFilme['$columnUrlImage'] = filme.imageUrl;
    return db.update('$nameTable', mapFilme, where: "$columnId = ?", whereArgs: [filme.id]);
  }

  Future<int> delete(int? id) async {
    final Database db = await getDatabase();
    return db.delete('$nameTable', where: "$columnId = ?", whereArgs: [id]);
  }

  Future<Filme?> findById(int id) async{
    //abrir uma conexão com o banco de dados
    final Database database = await getDatabase();
    //consultar o id no banco de dados
    //SELECT * FROM contatos WHERE id = 'id'
    List<Map<String, dynamic>> list = await database.query("$nameTable", where: "$columnId = ?", whereArgs: [id]);
    //mapear a linha da tabela encontrada em um objeto contato
    Filme? filme;
    filme = Filme(list[0]["$columnTitulo"], list[0]["$columnGenero"],list[0]["$columnIdade"],list[0]["$columnDuracao"],list[0]["$columnPontos"],list[0]["$columnDescricao"],list[0]["$columnAno"], list[0]["$columnUrlImage"], id: list[0]["$columnId"]);
    //retornar o contato
    return filme;
  }
}