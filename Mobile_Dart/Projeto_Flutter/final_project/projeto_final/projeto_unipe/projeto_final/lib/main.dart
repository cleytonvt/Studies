import 'package:flutter/material.dart';
import 'package:projeto_final/dao/contato_dao.dart';
import 'package:projeto_final/view/contacts_list.dart';

main() {
  runApp(MainApp());

  ContatoDao contatoDao = ContatoDao();
  // contatoDao.insert(Contato('C', 'c@email.com', 'https://cdn-icons-png.flaticon.com/512/149/149071.png')).then((id) {
  //   print(id);
  // });

  // contatoDao.findAll().then((lista_contatos) {
  //   print(lista_contatos);
  // });

  // contatoDao.findById(4).then((contato) => print(contato));

  //update(Contato('Bbbbb', "b@email.com", "https://cdn-icons-png.flaticon.com/512/149/149071.png", id: 2)).then((qtde) {
  //print(qtde);
  //});

  //delete(2).then((qtde) {print(qtde);});

  print("Fim do APP!");
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListContacts(),
    );
  }
}
