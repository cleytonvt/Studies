import 'package:flutter/material.dart';
import 'package:projeto_unipe/models/filme.dart';
import 'package:flutter/painting.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class ExibirFilme extends StatelessWidget {
  Filme filmes;
  ExibirFilme(this.filmes, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  _buildAppBar() {
    return AppBar(
      title: const Text("Detalhes"),
    );
  }

  _buildBody() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.network(
                  "${filmes.imageUrl}",
                  width: 130,
                  height: 185,
                  fit: BoxFit.fill,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 5.0, right: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "${filmes.titulo}",
                      style: const TextStyle(
                          fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "${filmes.genero}",
                      style: const TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    Text("${filmes.duracao}",
                        style:
                        const TextStyle(fontSize: 14, color: Colors.grey)),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text("${filmes.ano}",
                        style:
                        const TextStyle(fontSize: 14, color: Colors.grey)),
                    Text(
                      "${filmes.idade}" + ' anos',
                      style: const TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    SmoothStarRating(
                      starCount: 5,
                      isReadOnly: true,
                      spacing: 0.0,
                      rating: filmes.pontos,
                      defaultIconData: Icons.star_border,
                      onRated: (v) {},
                      color: Colors.yellow,
                      borderColor: Colors.yellow,
                      size: 25.0,
                      filledIconData: Icons.star,
                      halfFilledIconData: Icons.star_half,
                      allowHalfRating: false,
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 5.0),
            child: Row(
              children: <Widget>[
                Container(
                  width: 400.0,
                  child: Text("${filmes.descricao}"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
