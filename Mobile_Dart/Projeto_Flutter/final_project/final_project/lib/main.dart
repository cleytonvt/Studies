import 'package:final_project/dao/filmes_dao.dart';
import 'package:final_project/models/filme.dart';
import 'package:flutter/material.dart';

main() {
  runApp(const MainApp());
  FilmeDao filmeDao = FilmeDao();
  filmeDao
      .insert(Filme(
          'https://i.pinimg.com/736x/27/ae/a1/27aea13d7669706e753ac506a70cdcc4.jpg',
          'Velozes e Furiosos'))
      .then((idt) {
    print(idt);
  });
  //filmeDao.findAll().then((value) {
  //  print(value);
  //});

  print("Fim do App!");
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
