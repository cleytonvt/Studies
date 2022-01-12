import 'package:flutter/material.dart';

class CadastrarContato extends StatefulWidget {
  const CadastrarContato({Key? key}) : super(key: key);

  @override
  _CadastrarContatoState createState() => _CadastrarContatoState();
}

class _CadastrarContatoState extends State<CadastrarContato> {
  final _key = GlobalKey<FormState>();
  var maskFormatter = MaskTextInputFormatter(
      mask: '(##) #####-####', filter: {"#": RegExp(r'[0-9]')});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  _buildAppBar() {
    return AppBar(
      title: Text("Cadastrar Contato"),
    );
  }

  _buildBody() {
    return Container(
      margin: EdgeInsets.all(8.0),
      child: Form(
        key: _key,
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: "Nome",
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Email",
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Telefone",
                hintText: "(88)99999-9999",
              ),
              inputFormatters: [maskFormatter],
              keyboardType: TextInputType.number,
            ),
          ],
        ),
      ),
    );
  }
