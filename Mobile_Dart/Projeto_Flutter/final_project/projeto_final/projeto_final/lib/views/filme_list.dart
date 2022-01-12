import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_final/components/filme_tile.dart';
import 'package:projeto_final/data/dummy_filme.dart';

class FilmeList extends StatefulWidget {
  const FilmeList({Key? key}) : super(key: key);

  @override
  _ListarFilmesState createState() => _ListarFilmesState();
}

class _ListarFilmesState extends State<FilmeList> {
  final filmes = {...DUMMY_FILMES};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  _buildAppBar() {
    return AppBar(
      title: const Text("Filmes"),
      actions: [
        IconButton(
          icon: const Icon(Icons.info_rounded),
          onPressed: () => showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                    title: const Text('Equipe:'),
                    content: SingleChildScrollView(
                        child: ListBody(
                      children: const <Widget>[
                        Text('Aluno: Cleyton Victor Fernandes'),
                        Text('RGM: 23043024'),
                        Text('Curso: ADS/Noite'),
                      ],
                    )));
              }),
        ),
      ],
    );
  }

  _buildBody() {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: ListView.builder(
          itemCount: filmes.length,
          itemBuilder: (context, index) {
            return FilmeTile(filmes.values.elementAt(index));
          }),
    );
  }
}
