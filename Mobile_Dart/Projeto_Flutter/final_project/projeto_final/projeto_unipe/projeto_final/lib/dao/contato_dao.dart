import 'package:projeto_final/database/db_helper.dart';
import 'package:projeto_final/model/contato.dart';
import 'package:sqflite/sqflite.dart';

class ContatoDao {
  static final String table = 'CREATE TABLE contatos('
      'id INTEGER PRIMARY KEY AUTOINCREMENT, '
      'nome TEXT, '
      'email TEXT,'
      'url_image TEXT)';
  static final String columnId = 'id';
  static final String columnNome = 'nome';
  static final String columnEmail = 'email';
  static final String columnUrlImage = 'url_image';
  static final String nameTable = "contatos";

  Future<int> insert(Contato contato) async {
    final Database db = await getDatabase();
    Map<String, dynamic> mapContato = Map();
    mapContato['$columnNome'] = contato.nome;
    mapContato['$columnEmail'] = contato.email;
    mapContato['$columnUrlImage'] = contato.urlImage;
    //insert into contatos (nome, email, url_image) values (contato.nome, contato.email, contato.urlImage)
    return db.insert('$nameTable', mapContato);
  }

  Future<List<Contato>> findAll() async {
    final Database db = await getDatabase();
    //Select * from contatos
    List<Map<String, dynamic>> maps = await db.query('$nameTable');
    List<Contato> contatos = [];
    for (Map<String, dynamic> map in maps) {
      Contato contato = Contato(
          map['$columnNome'], map['$columnEmail'], map['$columnUrlImage'],
          id: map['$columnId']);
      contatos.add(contato);
    }
    return contatos;
  }

  Future<int> update(Contato contato) async {
    final Database db = await getDatabase();
    Map<String, dynamic> mapContato = Map();
    mapContato['$columnNome'] = contato.nome;
    mapContato['$columnEmail'] = contato.email;
    mapContato['$columnUrlImage'] = contato.urlImage;
    //Update table contatos set nome = '?', email = '', url_image='' where id = ?
    return db.update('$nameTable', mapContato,
        where: "$columnId = ?", whereArgs: [contato.id]);
  }

  Future<int> delete(int id) async {
    final Database db = await getDatabase();
    return db.delete('$nameTable', where: "$columnId = ?", whereArgs: [id]);
  }

  Future<Contato?> findById(int id) async {
    //abrir uma conexão com o banco de dados
    final Database database = await getDatabase();
    //consultar o id no banco de dados
    //SELECT * FROM contatos WHERE id = 'id'
    List<Map<String, dynamic>> list = await database
        .query("$nameTable", where: "$columnId = ?", whereArgs: [id]);
    //mapear a linha da tabela encontrada em um objeto contato
    Contato? contato;
    contato = Contato(list[0]["$columnNome"], list[0]["$columnEmail"],
        list[0]["$columnUrlImage"],
        id: list[0]["$columnId"]);
    //retornar o contato
    return contato;
  }
}
