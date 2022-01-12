import 'package:flutter/material.dart';
import 'package:projeto_unipe/dao/filmes_dao.dart';
import 'package:projeto_unipe/models/filme.dart';
import 'package:projeto_unipe/views/list_filmes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FilmesList(),
    );
  }
}

