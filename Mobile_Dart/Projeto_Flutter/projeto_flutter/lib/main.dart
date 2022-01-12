import 'package:flutter/material.dart';
import 'package:projeto_flutter/views/cadastrar_contatos.dart';

main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CadastrarContato(),
    );
  }
}
