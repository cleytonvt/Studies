import 'package:flutter/material.dart';
import 'package:projeto_flutter/views/cadastrar_contatos.dart';
import 'package:projeto_flutter/models/contato.dart';

class ListarContatos extends StatefulWidget {
  @override
  _ListarContatosState createState() => _ListarContatosState();
}

class _ListarContatosState extends State<ListarContatos> {
  List<Contato> contatos = [Contato('A', 'a@email.com', '(83)99999-9999')];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
      floatingActionButton: _buildFloatingActionButton(),
    );
  }

  _buildAppBar() {
    return AppBar(
      title: Text("Listar Contatos"),
    );
  }

  _buildBody() {
    return Container(
      child: ListView.builder(
          itemCount: contatos.length,
          itemBuilder: (context, index) {
            return _buildItemListView(index);
          }),
    );
  }

  _buildItemListView(int index) {
    return Container(
      height: 100,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${contatos[index].nome}",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text("${contatos[index].email}"),
              Text("${contatos[index].telefone}")
            ],
          ),
        ),
      ),
    );
  }

  _buildFloatingActionButton() {
    return FloatingActionButton(
      onPressed: () {
        _navigatorToCadastrarContato();
      },
      child: Icon(Icons.add),
    );
  }

  void _navigatorToCadastrarContato() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return CadastrarContato();
    }));
  }
}
