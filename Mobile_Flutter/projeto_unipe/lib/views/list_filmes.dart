import 'package:flutter/material.dart';
import 'package:projeto_unipe/models/filme.dart';
import 'package:projeto_unipe/dao/filmes_dao.dart';
import 'package:projeto_unipe/views/alterar_filme.dart';
import 'package:projeto_unipe/views/cadastrar_filme.dart';
import 'package:projeto_unipe/views/exibir_filme.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class FilmesList extends StatefulWidget {
  const FilmesList({Key? key}) : super(key: key);

  @override
  _FilmesListState createState() => _FilmesListState();
}

class _FilmesListState extends State<FilmesList> {
  FilmeDao _filmeDao = FilmeDao();

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
      title: const Text("Filmes"),
      actions: [
        IconButton(
          icon: const Icon(Icons.info_rounded),
          onPressed: () =>
              showDialog(
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
    return FutureBuilder(
      future: Future.delayed(Duration(seconds: 3), () => _filmeDao.findAll()),
      builder: (context, snapshot){
        switch(snapshot.connectionState){
          case ConnectionState.none:
            // TODO: Handle this case.
            break;
          case ConnectionState.waiting:
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircularProgressIndicator(),
                  Text("Loading..."),
                ],
              ),
            );
            break;
          case ConnectionState.active:
            // TODO: Handle this case.
            break;
          case ConnectionState.done:
            List<Filme> filmes = snapshot.data as List<Filme>;
            return Container(
              child: ListView.builder(
                itemCount: filmes.length,
                itemBuilder: (context, index){
                  return SizedBox(
                    height: 160,
                    child: GestureDetector(
                      //Define ação quando utilizado unico toque em tela
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) =>
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    ElevatedButton(
                                        onPressed: () {
                                          Navigator.push(context,
                                              MaterialPageRoute(builder: (context) {
                                                return ExibirFilme(filmes[index]);
                                              }));
                                        },
                                        child: const Text("Detalhes")),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(builder: (context) {
                                              return AlterarFilme(filmes[index]);
                                            }));
                                      },
                                      child: const Text("Alterar"),
                                    ),
                                  ],
                                ));
                      },

                      //definindo ação para arrasto e itens mostrados na tela
                      child: Dismissible(
                        onDismissed: (DismissDirection direction) {
                          setState(() {
                            FilmeDao filmeDao = FilmeDao();
                            filmeDao.delete(filmes[index].id).then((value) => print("Filme Deletado"));
                          });
                        },
                        background: Container(
                          color: Colors.red,
                          child: const Icon(
                            Icons.delete,
                            color: Colors.white,
                          ),
                        ),
                        key: UniqueKey(),
                        direction: DismissDirection.endToStart,
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: Row(
                              children: <Widget>[
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(left: 25.0),
                                      child: Image.network(
                                        ("${filmes[index].imageUrl}" != null)
                                            ? "${filmes[index].imageUrl}"
                                            : "https://ringostrack.com/storage/covers/imagenotfound.png",
                                        fit: BoxFit.fill,
                                        width: 120, height: 150,
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15.0, top: 8.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "${filmes[index].titulo}",
                                            style: const TextStyle(
                                                fontSize: 15, fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15.0, top: 6.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "${filmes[index].genero}",
                                            style: const TextStyle(
                                                fontSize: 14, color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15.0, top: 6.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "${filmes[index].duracao}",
                                            style: const TextStyle(
                                                fontSize: 14, color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10.0, top: 33.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          SmoothStarRating(
                                            starCount: 5,
                                            isReadOnly: true,
                                            spacing: 0.0,
                                            rating: filmes[index].pontos,
                                            defaultIconData: Icons.star_border,
                                            onRated: (v) {},
                                            color: Colors.yellow,
                                            borderColor: Colors.yellow,
                                            size: 25.0,
                                            filledIconData: Icons.star,
                                            halfFilledIconData: Icons.star_half,
                                            allowHalfRating: false,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            );
            break;
        }
        return Text("Error, Não foi possível acessar a database");
      },
    );
  }


//Inclui na tela, botão de cadastro
  _buildFloatingActionButton() {
    return FloatingActionButton(
      onPressed: () {
        _navigatorToCadastrarFilme();
      },
      child: const Icon(Icons.add),
    );
  }

//Navegar até a pagina de cadastro
  void _navigatorToCadastrarFilme() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return const CadastrarFilme();
    })).then((filme) {
      setState(() {
      });
    });
  }
}
